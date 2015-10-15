<?xml version="1.0" encoding="UTF-8" ?>
<!-- Nathan Ryan x13448212 BSHC2A -->
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/">
            <html>
              <head>
            	<title>Festival</title>
                <script type="text/javascript" src="js/performingInfo.js"></script>
                <style>
                    p{
                    color:white;
                    }
                    
                    a{
                    color:white;
                    }  
                </style>
              </head>
              <body><center>
                <img src="logoblack.jpg" width = "100" height = "100"/>
              	<h1>The Festival Site</h1><hr/>
             
                <p style="color: white;"><a href="home" style="color:white;">Home</a> // <a href="lineup" style="color:white;">Lineup</a> // <a href="bands" style="color:white;">Bands</a> // <a href="setlists" style="color:white;">Setlists</a></p>
                <hr/>
                <p>Change font size</p>
                <font size="2"><a href="javascript:void(0);" onclick="changemysize(16);" style="color:white;">A</a></font>
                <font size="4"><a href="javascript:void(0);" onclick="changemysize(20);" style="color:white;">A</a></font>
                <font size="5"><a href="javascript:void(0);" onclick="changemysize(25);" style="color:white;">A</a></font>
                <hr />
                <xsl:apply-templates select="*"/>
              </center>
              </body>
            </html>
	</xsl:template>

</xsl:transform>