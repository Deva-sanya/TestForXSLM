<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/Objects">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="@target_type"/>
            <xsl:apply-templates select="node()[not(self::target_type)]"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="@target_type[. = '']">
        <xsl:attribute name="target_type">
            <xsl:choose>
                <xsl:when test="not(@target_type != '')">UNKNOWN</xsl:when>
            </xsl:choose>
        </xsl:attribute>
    </xsl:template>

</xsl:stylesheet>