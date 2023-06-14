<xsl:stylesheet
        version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
    <xsl:import href="doc.xsl"/>
    <xsl:template match="Function">
        <div style="border: solid green">
            <xsl:apply-imports/>
        </div>
    </xsl:template>
    <xsl:template match="Procedure">
        <div style="border: solid red">
            <xsl:apply-imports/>
        </div>
    </xsl:template>
</xsl:stylesheet>