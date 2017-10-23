<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="text" encoding="iso-8859-1"/>
    
    <xsl:template match="TEI">
        <xsl:apply-templates select="teiHeader"/>
        <xsl:apply-templates select="//ref"></xsl:apply-templates>
    </xsl:template>
    
    <xsl:template match="teiHeader">
        <xsl:apply-templates select="descendant::date"/><xsl:text>
    </xsl:text>
    </xsl:template>
    <xsl:template match="ref">
        <xsl:apply-templates/><xsl:text>, </xsl:text><xsl:apply-templates select="location/@source"/><xsl:text>
        </xsl:text>
    </xsl:template>
</xsl:stylesheet>