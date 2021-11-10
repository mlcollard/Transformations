<xsl:stylesheet
    xmlns="http://www.srcML.org/srcML/src"
    xmlns:src="http://www.srcML.org/srcML/src"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:cpp="http://www.srcML.org/srcML/cpp"
    version="1.0">

<!--
    yuml.xsl
-->

<xsl:output method="text"/>

<xsl:template match="/">

    <xsl:apply-templates select=".//src:class"/>

</xsl:template>

<xsl:template match="src:class">

    <xsl:text>[</xsl:text><xsl:value-of select="src:name"/><xsl:text>]</xsl:text>

    <xsl:apply-templates select="src:super_list"/>
<xsl:text>
</xsl:text>

</xsl:template>

<xsl:template match="src:super_list">

    <xsl:text>^[</xsl:text><xsl:value-of select="src:super/src:name"/><xsl:text>]</xsl:text>

</xsl:template>

</xsl:stylesheet>
