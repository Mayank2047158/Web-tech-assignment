<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
  <html>
  <body>
    <h2>News Collection</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>ID</th>
        <th>Topic</th>
        <th>Description</th>
        <th>Paragraph</th>
      </tr>
      <xsl:for-each select="newscollect/news">
      <xsl:sort select = "NewsId"/> 

        <tr>
          <td><xsl:value-of select="@NewsId"/></td>
          <td><xsl:value-of select="newstopic"/></td>
          <td><xsl:value-of select="newsdesc"/></td>
          <td><xsl:value-of select="newspara"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>