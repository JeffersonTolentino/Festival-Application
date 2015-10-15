import java.io.File;
import javax.xml.transform.dom.DOMSource;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import javax.xml.transform.stream.StreamSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.Transformer;
import java.io.IOException;
import java.io.PrintWriter;
import org.xmldb.api.base.*;
import org.xmldb.api.modules.*;
import org.xmldb.api.*;
import javax.xml.transform.OutputKeys;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author eidolon
 */
@WebServlet(name="BandMemberServlet", urlPatterns={"/BandMemberServlet"})
public class BandMemberServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String URI = "xmldb:exist://localhost:8444/exist/xmlrpc";
        String driver = "org.exist.xmldb.DatabaseImpl";

        XMLResource res = null;
        Node resNode = null;
        Document doc = null;

        String path = getServletContext().getRealPath("/WEB-INF/");
        String XSLFileName = path + "/BandMember.xsl";
        File XslFile = new File(XSLFileName);
        
        String MemberName;
        String instrument;
        try {
            MemberName = request.getParameter("name");
            instrument = request.getParameter("instrument");
            if (MemberName == null) MemberName="";
            if (instrument == null) instrument="";
        } catch (Exception e) {
            MemberName = "";
            instrument = "";
        }

        try {
            Class cl = Class.forName(driver);
            Database database = (Database) cl.newInstance();
            DatabaseManager.registerDatabase(database);

            // get the collection
            Collection col = DatabaseManager.getCollection(URI + "/db/Festival", "admin", "password");

            XQueryService service = (XQueryService) col.getService("XQueryService", "1.0");
            service.setProperty("indent", "yes");
            String queryString = "";
            if (!(instrument.equals(""))) {
                service.declareVariable("instrument", "");
                queryString = "for $instrument in //bandlist//name[text()='" +  MemberName + "']/../instrument " +
                              "return update replace $instrument with <instrument>" + instrument + "</instrument>";
                service.query(queryString);
            }
            col.setProperty(OutputKeys.INDENT, "no");
            res = (XMLResource)col.getResource("Bands.xml");

            resNode = res.getContentAsDOM();

            doc = (Document) resNode;

        }catch (Exception e) {
            System.err.println("Error Document: "+e.getMessage());
        }

        DOMSource origDocSource = new DOMSource(doc);
        try {

            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            StreamSource stylesheet = new StreamSource(XslFile);

            Transformer transformer = transformerFactory.newTransformer(stylesheet);

            NodeList nameIDNodeList = doc.getElementsByTagName("name");
            int num_products = nameIDNodeList.getLength();
            String prev_id;
            String next_id;

            for (int i=0;i<num_products; i++){

                Node nameIDNode = nameIDNodeList.item(i);

                NodeList nameNodeListChildren = nameIDNode.getChildNodes();
                Node nameTextNode = nameNodeListChildren.item(0);
                String nameIDValue = nameTextNode.getNodeValue();
                 if (MemberName.equals(nameIDValue)) {

                    if (i!=0) {
                        prev_id=nameIDNodeList.item(i-1).getChildNodes().item(0).getNodeValue();
                    } else {
                        prev_id=nameIDNodeList.item(num_products-1).getChildNodes().item(0).getNodeValue();
                    }

                    if (i!=(num_products-1)) {
                        next_id=nameIDNodeList.item(i+1).getChildNodes().item(0).getNodeValue();
                    } else {
                        next_id=nameIDNodeList.item(0).getChildNodes().item(0).getNodeValue();
                    }

                    transformer.setParameter("vMemberName", nameIDValue);
                    transformer.setParameter("vPrevName", prev_id);
                    transformer.setParameter("vNextName", next_id);

                    transformer.transform(origDocSource,new StreamResult(out));
                }
            }
        } catch (Exception e) {
            out.println("Exception transformation :"+e.getMessage());
            e.printStackTrace(out);
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
