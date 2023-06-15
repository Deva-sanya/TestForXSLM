<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="Param">
        <xsl:copy>
            <xsl:if test="count(@Name) > 0">
                <xsl:apply-templates select="@Name"/>
                <xsl:apply-templates select="@pos"/>
            </xsl:if>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>