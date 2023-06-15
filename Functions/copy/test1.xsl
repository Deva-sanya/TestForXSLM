<xsl:stylesheet
        version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
    <xsl:template>
        <xsl:copy>
            <xsl:attribute name="element-count">
                <xsl:value-of select="count(*) "/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
