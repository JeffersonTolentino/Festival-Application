<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:include href="topinclude.xsl"/>
        <xsl:param name="vNextName"/>
        <xsl:param name="vPrevName"/>
        <xsl:param name="vMemberName"/>
        
	
	<xsl:template match="*">
		<xsl:apply-templates select="band/bandmembers"/>
	</xsl:template>
	
	
            <xsl:template match="bandmembers">
            
                <html> 
                    <head> 
                        <title> Member </title>
                         <link rel="stylesheet" type="text/css" href="css/bandmembers.css"/>
                    </head>
              
              <body>
		<xsl:for-each select="member">
			<xsl:if test="./name=$vMemberName">


			      <b><u><xsl:value-of select="./name"/></u></b>
                              <br/>
			      <br/>
                              <b>Instruments</b> 
                              <br/>
                              <xsl:for-each select="./instrument">
					<xsl:value-of select="."/>
				      </xsl:for-each>
                                      <br/>
			     
			      <b>Origin:</b>
			      <b><xsl:value-of select="./origin"/></b>
			      <br/>
			      <xsl:element name="img">
				  <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
			      </xsl:element>
			      <br/>
                              
                               <b>Date of Birth:</b>
                              <br/>
                              
			      
                              <b><xsl:value-of select="./dob"/></b>
			      <br/>
                              <br/>
                                      
                        
			      <b><u>Description</u></b>
                              <br/>
			      
				      <xsl:for-each select="./details">
					<xsl:value-of select="."/>
				      </xsl:for-each>
			     

                              <hr/>
                              <xsl:element name="a"><xsl:attribute name="href">BandMemberServlet?name=<xsl:value-of select="$vPrevName"/></xsl:attribute>Previous</xsl:element>
                              | <xsl:element name="a"><xsl:attribute name="href">BandMemberServlet?name=<xsl:value-of select="$vNextName"/></xsl:attribute>Next</xsl:element>
                              | <xsl:element name="a"><xsl:attribute name="href">UpdateServlet?name=<xsl:value-of select="$vMemberName"/></xsl:attribute>Update Instrument</xsl:element>
			</xsl:if>
		</xsl:for-each>
		
            </body>
                
                </html>
            
	</xsl:template>
	
</xsl:transform>