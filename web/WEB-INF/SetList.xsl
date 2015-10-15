<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
	
<xsl:template match="*">
	<xsl:apply-templates select="band"/>
	<xsl:apply-templates select="track_list"/>
</xsl:template>
	
        

<xsl:template match="/">
    
    <html>
        <head>
            <title>Festival</title>
                
            <link rel="stylesheet" type="text/css" href="css/accordionSetList.css"/>
            
            <script type="text/javascript" src="js/addingajax.js"></script> 
            <script type="text/javascript" src="js/save.js"></script>
            <script type="text/javascript" src="js/jquery.js"></script>
            <script type="text/javascript" src="js/accordionsetlist.js"></script>
            <script type="text/javascript" src="js/performingInfo.js"></script>
            
        </head>
            <body>
                <center>
                    <img src="logoblack.jpg" width = "100" height = "100"/>
                    <h1>The Festival Site</h1>
                    <hr/>
                    <center>
                                        <a href="home" style="color:white;">Home</a> // <a href="lineup" style="color:white;">Lineup</a> // <a href="bands" style="color:white;">Bands</a> // <a href="setlists" style="color:white;">Setlists</a>

                        <hr />
                        <p>Change font size</p>
                <font size="2"><a href="javascript:void(0);" onclick="changemysize(16);" style="color:white;">A</a></font>
                <font size="4"><a href="javascript:void(0);" onclick="changemysize(20);" style="color:white;">A</a></font>
                <font size="5"><a href="javascript:void(0);" onclick="changemysize(25);" style="color:white;">A</a></font>
                
                    </center>
                    <hr/>
                        <div class="label" id="label1">
							<div id="oneplus" class="control">
								<a href="#name" onclick="expand('one');return false">+</a>
							</div>
							<div id="onenegative" class="control">
								<a href="#name" onclick="collapse('one');return false">-</a>
							</div>
                        </div>
                        <div class="elements" id="one">		
							<table class="tftable" border="1">
								<tr>
									<th>Band name: </th>
									<th>Stage: </th>
									<th> Time: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b1']">
								<tr>
									<td> <xsl:value-of select="./band_name"/> </td>
									<td> <xsl:value-of select="./stage"/> </td>
									<td> <xsl:value-of select="./time_slot"/> </td>
								</tr>
								</xsl:for-each>
							</table>
                                                        <div id="hoverdiv"> 
                                                            <img src="band.jpg"/>
                                                        <div id="myDiv"> Click to go to the band page  </div>
                                                        </div>
                                                        <a href="BandsMembersServlet?name=Green Day"><img src="gr.png"  class="hover" /></a>
							<table class="tftable" border="1">
								<tr>
									<th>Title: </th>
									<th>Duration: </th>
									<th> Album: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b1']">
								<xsl:for-each select="track_list/track">
								<tr>
									<td> <xsl:value-of select="./title"/> </td>
									<td> <xsl:value-of select="./duration"/> </td>
									<td> <xsl:value-of select="./album"/> </td>
								</tr>
								</xsl:for-each>
								</xsl:for-each>
							</table>
                        </div>

                        <div class="label" id="label2">
							<div id="twoplus" class="control">
								<a href="#name" onclick="expand('two');return false">+</a>
							</div>
							<div id="twonegative" class="control">
								<a href="#name" onclick="collapse('two');return false">-</a>
							</div>
                        </div>
                        <div class="elements" id="two">
							<table class="tftable" border="1">
								<tr>
									<th>Band name: </th>
									<th>Stage: </th>
									<th> Time: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b2']">
									<tr>
										<td> <xsl:value-of select="./band_name"/> </td>
										<td> <xsl:value-of select="./stage"/> </td>
										<td> <xsl:value-of select="./time_slot"/> </td>
									</tr>
								</xsl:for-each>
							</table>
                                                        <a href="BandsMembersServlet?name=KORN"><img src="kr.png" class="hover" /></a>
							<table class="tftable" border="1">
								<tr>
									<th>Title: </th>
									<th>Duration: </th>
									<th> Album: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b2']">
									<xsl:for-each select="track_list/track">
										<tr>
											<td> <xsl:value-of select="./title"/> </td>
											<td> <xsl:value-of select="./duration"/> </td>
											<td> <xsl:value-of select="./album"/> </td>
										</tr>
									</xsl:for-each>
								</xsl:for-each>
							</table>
                        </div>

                        <div class="label" id="label3">
							<div id="threeplus" class="control">
								<a href="#name" onclick="expand('three');return false">+</a>
							</div>
							<div id="threenegative" class="control">
								<a href="#name" onclick="collapse('three');return false">-</a>
							</div>
                        </div>
                        <div class="elements" id="three">
							<table class="tftable" border="1">
								<tr>
									<th>Band name: </th>
									<th>Stage: </th>
									<th> Time: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b3']">
								<tr>
									<td> <xsl:value-of select="./band_name"/> </td>
									<td> <xsl:value-of select="./stage"/> </td>
									<td> <xsl:value-of select="./time_slot"/> </td>
								</tr>
								</xsl:for-each>
							</table>
                                                        <a href="BandsMembersServlet?name=Asian Kung-Fu Generation"><img src="ak.png" class="hover" /></a>
							<table class="tftable" border="1">
								<tr>
									<th>Title: </th>
									<th>Duration: </th>
									<th> Album: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b3']">
									<xsl:for-each select="track_list/track">
										<tr>
											<td> <xsl:value-of select="./title"/> </td>
											<td> <xsl:value-of select="./duration"/> </td>
											<td> <xsl:value-of select="./album"/> </td>
										</tr>
									</xsl:for-each>
								</xsl:for-each>
							</table>
                        </div>
						
						<div class="label" id="label4">
							<div id="fourplus" class="control">
								<a href="#name" onclick="expand('four');return false">+</a>
							</div>
							<div id="fournegative" class="control">
								<a href="#name" onclick="collapse('four');return false">-</a>
							</div>
                        </div>
                        <div class="elements" id="four">
							<table class="tftable" border="1">
								<tr>
									<th>Band name: </th>
									<th>Stage: </th>
									<th> Time: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b4']">
								<tr>
									<td> <xsl:value-of select="./band_name"/> </td>
									<td> <xsl:value-of select="./stage"/> </td>
									<td> <xsl:value-of select="./time_slot"/> </td>
								</tr>
								</xsl:for-each>
							</table>
                                                        <a href="BandsMembersServlet?name=Tame Impala"><img src="ti.png" class="hover"/></a>
							<table class="tftable" border="1">
								<tr>
									<th>Title: </th>
									<th>Duration: </th>
								<th> Album: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b4']">
									<xsl:for-each select="track_list/track">
										<tr>
											<td> <xsl:value-of select="./title"/> </td>
											<td> <xsl:value-of select="./duration"/> </td>
											<td> <xsl:value-of select="./album"/> </td>
										</tr>
									</xsl:for-each>
								</xsl:for-each>
							</table>
                        </div>
						
						<div class="label" id="label5">
							<div id="fiveplus" class="control">
								<a href="#name" onclick="expand('five');return false">+</a>
							</div>
							<div id="fivenegative" class="control">
								<a href="#name" onclick="collapse('five');return false">-</a>
							</div>
                        </div>
                        <div class="elements" id="five">
							<table class="tftable" border="1">
								<tr>
									<th>Band name: </th>
									<th>Stage: </th>
									<th> Time: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b5']">
								<tr>
									<td> <xsl:value-of select="./band_name"/> </td>
									<td> <xsl:value-of select="./stage"/> </td>
									<td> <xsl:value-of select="./time_slot"/> </td>
								</tr>
								</xsl:for-each>
							</table>
                                                        <a href="BandsMembersServlet?name=Foo Fighters"><img src="fo.png" class="hover" /></a>
							<table class="tftable" border="1">
								<tr>
									<th>Title: </th>
									<th>Duration: </th>
									<th> Album: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b5']">
									<xsl:for-each select="track_list/track">
										<tr>
											<td> <xsl:value-of select="./title"/> </td>
											<td> <xsl:value-of select="./duration"/> </td>
											<td> <xsl:value-of select="./album"/> </td>
										</tr>
									</xsl:for-each>
								</xsl:for-each>
							</table>
                        </div>
						
						<div class="label" id="label6">
							<div id="sixplus" class="control">
								<a href="#name" onclick="expand('six');return false">+</a>
							</div>
							<div id="sixnegative" class="control">
								<a href="#name" onclick="collapse('six');return false">-</a>
							</div>
                        </div>
                        <div class="elements" id="six">
							<table class="tftable" border="1">
								<tr>
									<th>Band name: </th>
									<th>Stage: </th>
									<th> Time: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b6']">
								<tr>
									<td> <xsl:value-of select="./band_name"/> </td>
									<td> <xsl:value-of select="./stage"/> </td>
									<td> <xsl:value-of select="./time_slot"/> </td>
								</tr>
								</xsl:for-each>
							</table>
                                                        <a href="BandsMembersServlet?name=Arctic Monkeys"><img src="ar.png" class="hover" /></a>
							<table class="tftable" border="1">
								<tr>
									<th>Title: </th>
									<th>Duration: </th>
									<th> Album: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b6']">
									<xsl:for-each select="track_list/track">
										<tr>
											<td> <xsl:value-of select="./title"/> </td>
											<td> <xsl:value-of select="./duration"/> </td>
											<td> <xsl:value-of select="./album"/> </td>
										</tr>
									</xsl:for-each>
								</xsl:for-each>
							</table>
                        </div>
						
						<div class="label" id="label7">
							<div id="sevenplus" class="control">
								<a href="#name" onclick="expand('seven');return false">+</a>
							</div>
							<div id="sevennegative" class="control">
								<a href="#name" onclick="collapse('seven');return false">-</a>
							</div>
                        </div>
                        <div class="elements" id="seven">
							<table class="tftable" border="1">
								<tr>
									<th>Band name: </th>
									<th>Stage: </th>
									<th> Time: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b7']">
								<tr>
									<td> <xsl:value-of select="./band_name"/> </td>
									<td> <xsl:value-of select="./stage"/> </td>
									<td> <xsl:value-of select="./time_slot"/> </td>
								</tr>
								</xsl:for-each>
							</table>
                                                        <a href="BandsMembersServlet?name=Hozier"><img src="ho.png" class="hover" /></a>
							<table class="tftable" border="1">
								<tr>
									<th>Title: </th>
									<th>Duration: </th>
									<th> Album: </th>
								</tr>
							<xsl:for-each select="setlist/band[@id='b7']">
								<xsl:for-each select="track_list/track">
								<tr>
									<td> <xsl:value-of select="./title"/> </td>
									<td> <xsl:value-of select="./duration"/> </td>
									<td> <xsl:value-of select="./album"/> </td>
								</tr>
								</xsl:for-each>
							</xsl:for-each>
							</table>
                        </div>
						
						<div class="label" id="label8">
							<div id="eightplus" class="control">
								<a href="#name" onclick="expand('eight');return false">+</a>
							</div>
							<div id="eightnegative" class="control">
								<a href="#name" onclick="collapse('eight');return false">-</a>
							</div>
                        </div>
                        <div class="elements" id="eight">
							<table class="tftable" border="1">
								<tr>
									<th>Band name: </th>
									<th>Stage: </th>
									<th> Time: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b8']">
								<tr>
									<td> <xsl:value-of select="./band_name"/> </td>
									<td> <xsl:value-of select="./stage"/> </td>
									<td> <xsl:value-of select="./time_slot"/> </td>
								</tr>
								</xsl:for-each>
							</table>
                                                        <a href="BandsMembersServlet?name=Bullet for My Valentine"><img src="bu.png" class="hover" /></a>
							<table class="tftable" border="1">
								<tr>
									<th>Title: </th>
									<th>Duration: </th>
									<th> Album: </th>
								</tr>
							<xsl:for-each select="setlist/band[@id='b8']">
								<xsl:for-each select="track_list/track">
									<tr>
										<td> <xsl:value-of select="./title"/> </td>
										<td> <xsl:value-of select="./duration"/> </td>
										<td> <xsl:value-of select="./album"/> </td>
									</tr>
								</xsl:for-each>
							</xsl:for-each>
							</table>
                        </div>
						
						<div class="label" id="label9">
							<div id="nineplus" class="control">
								<a href="#name" onclick="expand('nine');return false">+</a>
							</div>
							<div id="ninenegative" class="control">
								<a href="#name" onclick="collapse('nine');return false">-</a>
							</div>
                        </div>
                        <div class="elements" id="nine">
							<table class="tftable" border="1">
								<tr>
									<th>Band name: </th>
									<th>Stage: </th>
									<th> Time: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b9']">
								<tr>
									<td> <xsl:value-of select="./band_name"/> </td>
									<td> <xsl:value-of select="./stage"/> </td>
									<td> <xsl:value-of select="./time_slot"/> </td>
								</tr>
								</xsl:for-each>
							</table>
                                                        <a href="BandsMembersServlet?name=Thirty Seconds to Mars"><img src="30.png" class="hover" /></a>
							<table class="tftable" border="1">
								<tr>
									<th>Title: </th>
									<th>Duration: </th>
									<th> Album: </th>
								</tr>
							<xsl:for-each select="setlist/band[@id='b9']">
								<xsl:for-each select="track_list/track">
									<tr>
										<td> <xsl:value-of select="./title"/> </td>
										<td> <xsl:value-of select="./duration"/> </td>
										<td> <xsl:value-of select="./album"/> </td>
									</tr>
								</xsl:for-each>
							</xsl:for-each>
							</table>
                        </div>

                        <div class="label" id="label10">
							<div id="tenplus" class="control">
								<a href="#name" onclick="expand('ten');return false">+</a>
							</div>
							<div id="tennegative" class="control">
								<a href="#name" onclick="collapse('ten');return false">-</a>
							</div>
                        </div>
                        <div class="elements" id="ten">
							<table class="tftable" border="1">
								<tr>
									<th>Band name: </th>
									<th>Stage: </th>
									<th> Time: </th>
								</tr>
								<xsl:for-each select="setlist/band[@id='b10']">
								<tr>
									<td> <xsl:value-of select="./band_name"/> </td>
									<td> <xsl:value-of select="./stage"/> </td>
									<td> <xsl:value-of select="./time_slot"/> </td>
								</tr>
								</xsl:for-each>
							</table>
                                                        <a href="BandsMembersServlet?name=My Chemical Romance"><img src="my.png" class="hover" /></a>
							<table class="tftable" border="1">
								<tr>
									<th>Title: </th>
									<th>Duration: </th>
									<th>Album: </th>
								</tr>
							<xsl:for-each select="setlist/band[@id='b10']">
								<xsl:for-each select="track_list/track">
									<tr>
										<td> <xsl:value-of select="./title"/> </td>
										<td> <xsl:value-of select="./duration"/> </td>
										<td> <xsl:value-of select="./album"/> </td>
									</tr>
								</xsl:for-each>
							</xsl:for-each>
							</table>
                        </div>
						
                        
                    <xsl:apply-templates select="*"/>
                </center>
            </body>
    </html>
</xsl:template>

</xsl:transform>
