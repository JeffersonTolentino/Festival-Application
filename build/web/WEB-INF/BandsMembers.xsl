<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:include href="topinclude.xsl"/>
        <xsl:param name="vBandName"/>
	
	<xsl:template match="*">
                <b> Click band member names for more information </b>
                <br/>
                <br/>
		<xsl:apply-templates select="band"/>
	</xsl:template>
        
         <xsl:template match="band">
            <xsl:if test="name=$vBandName">
                <xsl:apply-templates select="bandmembers"/>
            </xsl:if>
        </xsl:template>

          
	<xsl:template match="bandmembers">
        
            <html> 
                <head>
                    <title> Bandmembers </title>
                       <link rel="stylesheet" type="text/css" href="css/bandmembers.css"/>
                </head>
                
                <body> 
                    
		        <div id="membercontainer">
		<xsl:for-each select="member">
                    
                <xsl:element name="img">
		<xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
		</xsl:element>
                <br/>
		      <xsl:element name="a">
                          <xsl:attribute name="href">BandMemberServlet?name=<xsl:value-of select="name"/></xsl:attribute>
                          <xsl:value-of select="name"/>
                          <br/>
                          <br/> 
                      </xsl:element>
                      
		</xsl:for-each>
                
                        </div>
                
        
            </body> 
            </html>
                
            
         
        </xsl:template>
</xsl:transform>