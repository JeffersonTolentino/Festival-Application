<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Nathan Ryan x13448212 BSHC2A  -->
<xsl:include href="topinclude.xsl"/>

<xsl:template match="*">
	<xsl:apply-templates select="stage"/>
	<xsl:apply-templates select="artists"/>
</xsl:template>

<xsl:template match="stage">
<html>
    <head>
	<title>Festival</title>
                
        <link rel="stylesheet" type="text/css" href="css/lineup.css"/>
		
        <script type="text/javascript" src="js/performingInfo.js"></script>
        <script type="text/javascript" src="js/stages.js"></script>        
    </head>
        <body>
            <div id="container">
		<div id="stage">
                    <b>Stage :</b>
                    <xsl:value-of select="./name"/><br />
                    <xsl:value-of select="./overview"/><br />
                    <b>Capacity :</b><xsl:value-of select="./capacity"/>	         	
		</div>
		<div id="bands">
                    <xsl:for-each select="artists">
                        <xsl:for-each select="band[@id='m1']">
                            <div id="m1">
				<b>Details :</b>
				<xsl:for-each select="./details"><br />
                                    <xsl:value-of select="./name"/><br />
                                    <xsl:value-of select="./genre"/><br />
                                    <b>Latest Album :</b><xsl:value-of select="./album"/>
                                    <div class="grow pic">
                                    <xsl:element name="img">
					<xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
                                    </xsl:element>
                                    </div>
				</xsl:for-each>
                                        
                                <div id="tame" onClick="m1()">
                                Click <b>here</b> to see Performing Info !</div>  
                                
                                           
                            </div>
                            
                             
                        </xsl:for-each>
                            <xsl:for-each select="band[@id='m2']">
                                <div id="m2">
                                    <b>Details :</b>
                                    <xsl:for-each select="./details"><br />
                                        <xsl:value-of select="./name"/><br />
                                        <xsl:value-of select="./genre"/><br />
                                        <b>Latest Album :</b><xsl:value-of select="./album"/>
                                        <div class="grow pic">
                                        <xsl:element name="img">
                                            <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
                                        </xsl:element>
                                        </div>
                                    </xsl:for-each>
		
                                    <div id="foo" onClick="m2()">
                                    Click <b>here</b> to see Performing Info !</div>     
				</div>
                            </xsl:for-each>	
                            <xsl:for-each select="band[@id='m3']">
				<div id="m3">
                                    <b>Details :</b>
                                    <xsl:for-each select="./details"><br />
					<xsl:value-of select="./name"/><br />
					<xsl:value-of select="./genre"/><br />
					<b>Latest Album :</b><xsl:value-of select="./album"/>
                                        <div class="grow pic">
					<xsl:element name="img">
                                            <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
					</xsl:element>
                                        </div>
                                    </xsl:for-each>
		
                                    <div id="green" onClick="m3()">
                                    Click <b>here</b> to see Performing Info !</div>       
				</div>
                            </xsl:for-each>	
                            <xsl:for-each select="band[@id='m4']">
				<div id="m4">
                                    <b>Details :</b>
                                    <xsl:for-each select="./details"><br />
					<xsl:value-of select="./name"/><br />
					<xsl:value-of select="./genre"/><br />
					<b>Latest Album :</b><xsl:value-of select="./album"/>
                                        <div class="grow pic">
					<xsl:element name="img">
                                            <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
					</xsl:element>
                                        </div>
                                    </xsl:for-each>
		
                                    <div id="hozier" onClick="m4()">
                                    Click <b>here</b> to see Performing Info !</div>        
				</div>
                                <div id="mainstageinfo">
                                <img src="mstage.jpg" class="mstage" onmouseover="getData('mainstage.txt','mainStage')"/>
                                <div id="mainStage"> </div>
                                </div>
                            </xsl:for-each>
                            <xsl:for-each select="band[@id='a1']">
				<div id="a1">
                                    <b>Details :</b>
                                    <xsl:for-each select="./details"><br />
					<xsl:value-of select="./name"/><br />
					<xsl:value-of select="./genre"/><br />
					<b>Latest Album :</b><xsl:value-of select="./album"/>
                                        <div class="grow pic">
					<xsl:element name="img">
                                            <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
					</xsl:element>
                                        </div>
                                    </xsl:for-each>
		
                                    <div id="monkeys" onClick="a1()">
                                    Click <b>here</b> to see Performing Info !</div>           
				</div>
                            </xsl:for-each>	
                            <xsl:for-each select="band[@id='a2']">
				<div id="a2">
                                    <b>Details :</b>
                                    <xsl:for-each select="./details"><br />
					<xsl:value-of select="./name"/><br />
					<xsl:value-of select="./genre"/><br />
					<b>Latest Album :</b><xsl:value-of select="./album"/>
                                        <div class="grow pic">
					<xsl:element name="img">
                                            <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
					</xsl:element>
                                        </div>
                                    </xsl:for-each>
		
                                    <div id="kungfu" onClick="a2()">
                                    Click <b>here</b> to see Performing Info !</div>            
				</div>
                            </xsl:for-each>	
                            <xsl:for-each select="band[@id='a3']">
				<div id="a3">
                                    <b>Details :</b>
                                    <xsl:for-each select="./details"><br />
					<xsl:value-of select="./name"/><br />
					<xsl:value-of select="./genre"/><br />
					<b>Latest Album :</b><xsl:value-of select="./album"/>
                                        <div class="grow pic">
					<xsl:element name="img">
                                            <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
					</xsl:element>
                                        </div>
                                    </xsl:for-each>
		
                                    <div id="mars" onClick="a3()">
                                    Click <b>here</b> to see Performing Info !</div>            
				</div>
                                <div id="altstageinfo">
                                <img src="astage.jpg" onmouseover="getData('altstage.txt','altStage')"/>
                                <div id="altStage"> </div>
                                </div>
                            </xsl:for-each>	
                            <xsl:for-each select="band[@id='met1']">
				<div id="met1">
                                    <b>Details :</b>
                                    <xsl:for-each select="./details"><br />
					<xsl:value-of select="./name"/><br />
					<xsl:value-of select="./genre"/><br />
					<b>Latest Album :</b><xsl:value-of select="./album"/>
                                        <div class="grow pic">
					<xsl:element name="img">
                                            <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
					</xsl:element>
                                        </div>
                                    </xsl:for-each>
		
                                    <div id="korn" onClick="met1()">
                                    Click <b>here</b> to see Performing Info !</div>         
				</div>
                            </xsl:for-each>	
                            <xsl:for-each select="band[@id='met2']">
				<div id="met2">
                                    <b>Details :</b>
                                    <xsl:for-each select="./details"><br />
					<xsl:value-of select="./name"/><br />
					<xsl:value-of select="./genre"/><br />
					<b>Latest Album :</b><xsl:value-of select="./album"/>
                                        <div class="grow pic">
					<xsl:element name="img">
                                            <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
					</xsl:element>
                                        </div>
                                    </xsl:for-each>
		
                                    <div id="bullet" onClick="met2()">
                                    Click <b>here</b> to see Performing Info !</div>        
				</div>
                            </xsl:for-each>	
                            <xsl:for-each select="band[@id='met3']">
				<div id="met3">
                                <b>Details :</b>
				<xsl:for-each select="./details"><br />
                                    <xsl:value-of select="./name"/><br />
                                    <xsl:value-of select="./genre"/><br />
                                    <b>Latest Album :</b><xsl:value-of select="./album"/>
                                    <div class="grow pic">
                                    <xsl:element name="img">
					<xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
                                    </xsl:element>
                                    </div>
                                </xsl:for-each>
		
                                <div id="mcr" onClick="met3()">
                                Click <b>here</b> to see Performing Info !</div>        
				</div>
                                <div id="metstageinfo">
                                <img src="metstage.jpg" onmouseover="getData('metstage.txt','metStage')"/>
                                <div id="metStage"> </div>
                                </div>
                            </xsl:for-each>	
                    </xsl:for-each>
		</div> 
            </div>	
        </body>
</html>

</xsl:template>

</xsl:transform>