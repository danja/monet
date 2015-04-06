<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text" indent="yes"/>

<xsl:template match="table">

@prefix rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt; .
@prefix rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt; .
@prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .
@prefix schema: &lt;http://schema.org/&gt; .
@prefix dc: &lt;http://purl.org/dc/terms/&gt; .
@prefix sioc: &lt;http://rdfs.org/sioc/ns#&gt; .
@prefix : &lt;http://purl.org/stuff/colors#&gt; .

		<xsl:apply-templates/>
</xsl:template>

<xsl:template match="tr">
&lt;http://purl.org/stuff/colors<xsl:value-of select="td[2]/@BGCOLOR"/>&gt; a :Color;
  :name "<xsl:value-of select="td[1]/text()"/>";
  rdfs:label "<xsl:value-of select="td[1]/text()"/>";
  dc:title "<xsl:value-of select="td[1]/text()"/>";
  :hex "<xsl:value-of select="td[2]/@BGCOLOR"/>";
  :rgbRed "<xsl:value-of select="td[4]/text()"/>";
  :rgbGreen "<xsl:value-of select="td[5]/text()"/>";
  :rgbBlue "<xsl:value-of select="td[6]/text()"/>" .
</xsl:template>

</xsl:stylesheet>
