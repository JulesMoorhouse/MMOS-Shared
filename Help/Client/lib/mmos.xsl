<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/TR/REC-html40"
   xmlns:fo="http://www.w3.org/TR/WD-xsl/FO">
<xsl:output method="html"/>
	
<xsl:template match="/">		
	<fo:display-sequence>
		<font face="Arial" size="2">
		<xsl:apply-templates/>
		</font>
	</fo:display-sequence>	
</xsl:template>  
<xsl:template match="lite">
</xsl:template>
<xsl:template match="page">
	<body bgcolor="#FFFFC0"></body>
	<title><xsl:apply-templates/></title>	
	<table border="1" bordercolor="#C0C0C0" cellpadding="5" cellspacing="0" width="100%"  bgcolor="#ffffff"><tr><td>
	<font face="Arial" Size="5"><xsl:apply-templates/></font>
	</td></tr></table>	
	<br/><br/>
</xsl:template>
<xsl:template match="bgntitle">
	<body bgcolor="#FFFFC0"></body>
	<title><xsl:apply-templates/></title>
</xsl:template>
<xsl:template match="br">
	<xsl:apply-templates/>
	<br/>
</xsl:template>
<xsl:template match="u">
	<u>
	<xsl:apply-templates/>
	</u>
</xsl:template>
<xsl:template match="b">
	<b>
	<xsl:apply-templates/>
	</b>
</xsl:template>
<xsl:template match="a">
	<a href="{@href}"><xsl:apply-templates/>
	</a>
</xsl:template>
<xsl:template match="image">
	<img>
		<xsl:attribute name="src">
			<xsl:value-of select="src"/>
		</xsl:attribute>
		<xsl:attribute name="width">
			<xsl:value-of select="width"/>
		</xsl:attribute>	
		<xsl:attribute name="height">
			<xsl:value-of select="height"/>
		</xsl:attribute>	
	</img>
</xsl:template>
<xsl:template match="postable">
	<table border="0" cellpadding="{@pad}" cellspacing="{@space}" width="100%">
      		<xsl:for-each select="row">
	      		<tr>
				<td><font face="Arial" size="2">		
				<xsl:apply-templates select="left"/>
				</font>
				</td>
				<td>
				<xsl:apply-templates select="right"/>
				</td>
      			</tr>
      		</xsl:for-each>      		
	</table>	
</xsl:template>
<xsl:template match="footer">
	<br/><br/>
	<table width="100%" cellpadding="0" cellspacing="0" bgcolor="#C0C0C0"><tr><td>
	<Font face="Arial" size="1"><p align="Right">
	Copyright (c)  Mindwarp Consultancy 2002
	</p></Font>
	</td></tr></table>
</xsl:template>
<xsl:template match="caps">
	<font face="Arial" size="{@size}">
	<xsl:apply-templates/>
	</font>
</xsl:template>	
<xsl:template match="smalltext">
	<font face="Arial" size="1">
	<xsl:apply-templates/>
	</font>
</xsl:template>	
</xsl:stylesheet> 
