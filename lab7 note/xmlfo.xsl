<xsl:template match="header">
<fo:block
    font-size="14pt" font-family="verdana" color="red"
    space-before="5mm" space-after="5mm">
    <xsl:apply-templates/>
</fo:block>
</xsl:template>

<xsl:template match="paragraph">
<fo:block
    text-indent="5mm"
    font-family="verdana" font-size="12pt"
    space-before="5mm" space-after="5mm">
    <xsl:apply-templates/>
</fo:block>
</xsl:template>