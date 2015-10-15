<?xml version="1.0" encoding="UTF-8" ?>
<!-- Nathan Ryan x13448212 BSHC2A  -->
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
                <title>Update Band member</title>
                <style>
                    body {background-color: black;
                    color:white;}
                    h1 {color:white;}
                </style>
            </head>
            <body>
                <xsl:for-each select="member">

                    <xsl:if test="./name=$vMemberName">

                        Member: <xsl:value-of select="./name"/>
                        <br />
                        <xsl:element name="form">
                            <xsl:attribute name="action">BandMemberServlet</xsl:attribute>
                            <xsl:attribute name="method">post</xsl:attribute>
                            <xsl:element name="input">
                                <xsl:attribute name="value">
                                    <xsl:value-of select="./name"/>
                                </xsl:attribute>
                                <xsl:attribute name="type">hidden</xsl:attribute>
                                <xsl:attribute name="name">name</xsl:attribute>
                            </xsl:element> Instrument:
                            <xsl:element name="input">
                                <xsl:attribute name="value">
                                    <xsl:value-of select="./instrument"/>
                                </xsl:attribute>
                                <xsl:attribute name="type">text</xsl:attribute>
                                <xsl:attribute name="size">50</xsl:attribute>
                                <xsl:attribute name="name">instrument</xsl:attribute>
                            </xsl:element>
                            <input type="submit" value="Update Instrument" />
                            <xsl:element name="a">
                                <xsl:attribute name="href">BandMemberServlet?name=<xsl:value-of select="$vMemberName"/></xsl:attribute>
                                <input type="button" value="Cancel"/>
                            </xsl:element>
                        </xsl:element>
        
                        <hr />

                        <xsl:element name="a">
                            <xsl:attribute name="href">BandMemberServlet?name=<xsl:value-of select="$vMemberName"/></xsl:attribute>
                            Back
                        </xsl:element>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>	
    </xsl:template>
	
</xsl:transform>