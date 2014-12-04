<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text" indent="yes"/>

<xsl:template match="table">
	prefixes
		<xsl:apply-templates/>
</xsl:template>

<xsl:template match="tr">
&lt;http://purl.org/stuff/colors<xsl:value-of select="td[2]/@BGCOLOR"/>&gt; a :Color;
  :name "<xsl:value-of select="td[1]/text()"/>";
  :hex "<xsl:value-of select="td[2]/@BGCOLOR"/>";
  :rgbRed "<xsl:value-of select="td[4]/text()"/>";
  :rgbGreen "<xsl:value-of select="td[5]/text()"/>";
  :rgbBlue "<xsl:value-of select="td[6]/text()"/>" .
</xsl:template>

</xsl:stylesheet>
