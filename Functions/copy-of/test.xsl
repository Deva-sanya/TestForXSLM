<xsl:stylesheet
        version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
    <xsl:template match="/">
        <xsl:variable
                name="boolean"
                select="values/boolean='true'"
        />
        <xsl:variable
                name="string"
                select="string(values/string)"
        />
        <xsl:variable
                name="number"
                select="number(values/number)"
        />
        <xsl:variable
                name="node-set"
                select="values/node-set/*"
        />
        <xsl:variable name="tree">
            <xsl:copy-of select="values/tree/*"/>
        </xsl:variable>
        <xsl:text>Value-of boolean:</xsl:text>
        <xsl:value-of select="$boolean"/>
        <xsl:text>Copy-of boolean:</xsl:text>
        <xsl:copy-of select="$boolean"/>
        <xsl:text>Value-of string:</xsl:text>
        <xsl:value-of select="$string"/>
        <xsl:text>Copy-of string:</xsl:text>
        <xsl:copy-of select="$string"/>
        <xsl:text>Value-of number:</xsl:text>
        <xsl:value-of select="$number"/>
        <xsl:text>Copy-of number:</xsl:text>
        <xsl:copy-of select="$number"/>
        <xsl:text>Value-of node-set:</xsl:text>
        <xsl:value-of select="$node-set"/>
        <xsl:text>Copy-of node-set:</xsl:text>
        <xsl:copy-of select="$node-set"/>
        <xsl:text>Value-of tree:</xsl:text>
        <xsl:value-of select="$tree"/>
        <xsl:text>Copy-of tree:</xsl:text>
        <xsl:copy-of select="$tree"/>
    </xsl:template>
</xsl:stylesheet>