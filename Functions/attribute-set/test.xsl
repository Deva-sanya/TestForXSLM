<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version='1.0'>
>
    <xsl:template match="chapter/heading">
        <fo:block
                quadding="start"
                xsl:use-attribute-sets="title-style"
        >
            <xsl:apply-templates />
        </fo:block>
    </xsl:template>
    <xsl:attribute-set name="title-style">
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>
</xsl:stylesheet>