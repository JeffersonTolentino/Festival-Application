<?xml version="1.0" encoding="UTF-8"?>

<!--
    Nathan Ryan x13448212 BSHC2A  
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
<xsl:template match="/">
    <html>
        <head>
            <title>Festival</title>
                
            <link rel="stylesheet" type="text/css" href="css/accordion.css"/>
                
            <script type="text/javascript" src="js/addingajax.js"></script>
            <script type="text/javascript" src="js/accordion2.js"></script>
            <style>
                body {background-color: black;
                color:white;}
                h1 {color:white;}
            </style>
        </head>
            <body>
                <center>
                    <img src="logoblack.jpg" width = "100" height = "100"/>
                    <h1>The Festival Site</h1><hr/>

                    <p> Welcome to The Festival App ! </p>

                    <hr/>

                        <div class="label" id="label1">
                        <div id="oneplus" class="control">
                        <a href="#name" onclick="expand('one');return false">+</a>
                        </div>
                        <div id="onenegative" class="control">
                        <a href="#name" onclick="collapse('one');return false">-</a>
                        </div>
                        <h3 class="name">
                        Home :
                        </h3>
                        </div>
                        <div class="elements" id="one">
                        <a href="home">Home</a>
                        </div>

                        <div class="label">
                        <div id="twoplus" class="control">
                        <a href="#name" onclick="expand('two');return false">+</a>
                        </div>
                        <div id="twonegative" class="control">
                        <a href="#name" onclick="collapse('two');return false">-</a>
                        </div>
                        <h3 class="name">
                        Lineup :
                        </h3>
                        </div>
                        <div class="elements" id="two">
                        <a href="lineup"><img src="mstage.jpg" /></a>
                        
                        </div>

                        <div class="label">
                        <div id="threeplus" class="control">
                        <a href="#name" onclick="expand('three');return false">+</a>
                        </div>
                        <div id="threenegative" class="control">
                        <a href="#name" onclick="collapse('three');return false">-</a>
                        </div>
                        <h3 class="name">
                        Bands :
                        </h3>
                        </div>
                        <div class="elements" id="three">
                        <a href="bands"><img src="tameimpala.jpg"/><img src="foofighters.jpg"/></a>
                        
                        </div>

                        <div class="label">
                        <div id="fourplus" class="control">
                        <a href="#name" onclick="expand('four');return false">+</a>
                        </div>
                        <div id="fournegative" class="control">
                        <a href="#name" onclick="collapse('four');return false">-</a>
                        </div>
                        <h3 class="name">
                        Setlists :
                        </h3>
                        </div>
                        <div class="elements" id="four">
                        <a href="setlists"><img src="setlist.jpg"/></a>
                        
                        </div>
                        <h2><a href="signuppage.html" style="color: white;">Signup up to our Email newsletter !</a></h2><br/><hr/>
                    <xsl:apply-templates select="*"/>
                </center>
            </body>
    </html>
</xsl:template>

</xsl:stylesheet>
