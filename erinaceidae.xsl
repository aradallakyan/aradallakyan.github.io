<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
	<html>
	  <head>
		<title>
		  <xsl:value-of select="root/caption"/>
		</title>
	  </head>
	  <body style="background-color: #3754A8; font-family: georgia">
		<h3>
		  <xsl:value-of select="root/caption"/>
		</h3>
		<ul>
		  <xsl:for-each select="root/sibling">
			<li style="color: #FF3333; margin: 5px">
			  <xsl:value-of select="@title"/>
			  <xsl:for-each select="child">
				<ul style="color: #C1B711; list-style: square; margin: 5px">
				  <xsl:value-of select="child::text()"/>
				  <xsl:for-each select="branch">
					<li style="margin: 5px; list-style: circle">
					  <xsl:value-of select="."/>
					</li>
				  </xsl:for-each>
				</ul>
			  </xsl:for-each>
			</li>
		  </xsl:for-each>
		</ul>
	  </body>
	</html>
  </xsl:template>
</xsl:stylesheet>