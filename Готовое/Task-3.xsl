<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:key name="group" match="Function" use="@Name"/>


    <xsl:template match="/Objects/Object/Function">
        <Functions>
            <xsl:apply-templates select="Function[generate-id(.) = generate-id(key('group',@Name))]"/>
        </Functions>
    </xsl:template>

    <xsl:template match="/Objects/Object/Function">
        <group name="{@Name}">
            <Function>
                <xsl:for-each select="key('group',@Name)">
                    <p function="{@Name}"/>
                </xsl:for-each>
            </Function>
        </group>
    </xsl:template>

    <xsl:key name="group2" match="Procedure" use="@Name"/>

    <xsl:template match="/Objects/Object/Procedure">
        <Procedures>
            <Procedure>
                <xsl:apply-templates select="Procedure[generate-id(.) = generate-id(key('group2',@Name))]"/>
                <xsl:for-each select="key('group2',@Name)">
                    <p procedure="{@Name}"/>
                </xsl:for-each>
            </Procedure>
        </Procedures>
    </xsl:template>

</xsl:stylesheet>