<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="Object">
        <xsl:copy>
            <xsl:if test="@ID mod 2 = 0">
                <xsl:apply-templates select="@ID"/>
                    <xsl:for-each select="Object">
                        <xsl:sort select="@ID" data-type="number" order="ascending" />
                    </xsl:for-each>
            </xsl:if>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>