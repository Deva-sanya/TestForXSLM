<?xml version='1.0'?>
<xsl:stylesheet
        version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
    <xsl:template match="myElement">
        <xsl:copy>
            <xsl:attribute name="copied">true</xsl:attribute>
            <xsl:apply-templates />
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>