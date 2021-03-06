/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xmldb.api.base.*;
import org.xmldb.api.modules.*;
import org.xmldb.api.*;

/**
 *
 * @author Nathan Ryan x13448212 BSHC2A
 */
@WebServlet(urlPatterns = {"/FestivalLineupServlet"})
public class FestivalLineupServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String path = getServletContext().getRealPath("/WEB-INF/");
            String XMLFileName = path + "/lineup.xml";
            String XSLFileName = path + "/lineup.xsl";
            
            String URI = "xmldb:exist://localhost:8444/exist/xmlrpc";
            String driver = "org.exist.xmldb.DatabaseImpl";
            
            XMLResource res = null;
            Node resNode = null;
            Document doc = null;

        try {
            Class cl = Class.forName(driver);
            Database database = (Database) cl.newInstance();
            DatabaseManager.registerDatabase(database);

            // get the collection
            Collection col = DatabaseManager.getCollection(URI + "/db/Festival", "admin", "password");


            col.setProperty(OutputKeys.INDENT, "no");
            res = (XMLResource)col.getResource("Bands.xml");

            resNode = res.getContentAsDOM();

            doc = (Document) resNode;
        }catch (Exception e) {
            System.err.println("Error Document: "+e.getMessage());
        }

            StreamSource XMLSource = new StreamSource(XMLFileName);
            StreamSource XSLSource = new StreamSource(XSLFileName);

            // Identify Result
            StreamResult homeOutput = new StreamResult(out);

            // Create TransformerFactory
            TransformerFactory xFactory = TransformerFactory.newInstance();

            // Create Transformer
            Transformer optimusPrime = xFactory.newTransformer(XSLSource);

            // Apply transform
            optimusPrime.transform(XMLSource, homeOutput);

        } catch (TransformerConfigurationException ex) {

            System.out.println("Encountered TransformerConfiguration Error: " + ex.getMessage());
            
        } catch (TransformerException ex) {

            System.out.println("Encountered Transformer Error: " + ex.getMessage());

        } finally {
            out.close();
        
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
