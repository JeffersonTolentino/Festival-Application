<?xml version="1.0" encoding="UTF-8"?>

<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:include href="topinclude.xsl"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    
    <xsl:template match="*">
        <b>Click band names for members</b>
        <xsl:apply-templates select="band"/>
    </xsl:template>
    
    
	
    <xsl:template match="band">
    
  
    
    <html>
        
      
        
        <head> 
            <title> Bands </title> 
             <link rel="stylesheet" type="text/css" href="css/bandlist.css"/>
    </head>
    
    <body>
        
        <div id="container">
            
            
        

                   
                    <div id="bands">
                        <tr><td><xsl:element name="a">
                        <xsl:attribute name="href">BandsMembersServlet?name=<xsl:value-of select="name"/></xsl:attribute>
                   
		        <xsl:value-of select="name"/>
		        </xsl:element></td>
                        <br/>
                        <td>
                            Genre:<xsl:value-of select="genre"/>
                        </td>
                        <br/>
                        <td>
                            <xsl:value-of select="bandinfo"/>
                        </td>
                        </tr>
                    </div>
                        
               </div>
		  
                
        
                
              
            
      
   
            
        
    </body>
        
    </html>

</xsl:template>
</xsl:transform>
