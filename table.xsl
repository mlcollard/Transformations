<xsl:stylesheet
    xmlns="http://www.srcML.org/srcML/src"
    xmlns:src="http://www.srcML.org/srcML/src"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:cpp="http://www.srcML.org/srcML/cpp"
    version="1.0">

<!--
    table.xsl
-->

<xsl:output method="text"/>

<xsl:template match="/">

    <xsl:text>| Function/Method | Info | Value |
</xsl:text>
    <xsl:text>|-----------------|------|-------|
</xsl:text>

    <!-- Table row for all functions with conditions, i.e., a complexity greater than 1 -->
    <xsl:apply-templates select="//src:function[.//src:condition]"/>

</xsl:template>

<!-- Function table row with name and complexity value -->
<xsl:template match="src:function">

    <xsl:text>| </xsl:text><xsl:value-of select="src:name"/><xsl:text> </xsl:text>
    <xsl:text>| Complexity | </xsl:text><xsl:value-of select="count(.//src:condition | 
    .//src:condition//src:operator[.='||' or .='&amp;&amp;'])"/><xsl:text> |
</xsl:text>

</xsl:template>

</xsl:stylesheet>
