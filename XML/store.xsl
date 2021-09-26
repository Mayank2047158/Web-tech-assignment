<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0" 
      xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
   <xsl:template match = "/"> 

    <html>
      <body style="font-family:Arial;font-size:12pt;background-color:#005073;">
      <h2 style="text-align:center; -webkit-text-emphasis: dot;color: #71c7ec;"> EXPROIUM STUDIO</h2>
        <xsl:for-each select="painting_list/abs">
        <div style="background-color:pink">
          <div style="background-color:#ff6f6f;color:white;padding:4px">
            <span style="font-weight:bold"><xsl:value-of select="name"/> - </span>
            <xsl:value-of select="price"/>
          </div>
          <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
            <p>
              <xsl:value-of select="description"/>
              <span style="font-style:italic"> (<xsl:value-of select="year"/> created)</span>
            </p>
          </div>
        </div>  
        </xsl:for-each>
        
         <h2 style = "color: #71c7ec;FONT-FAMILY: MONOSPACE;"> UPCOMING EVENTS</h2>
        <div>
        <table border = "1" bgcolor = "#71c7ec"> 
               <tr bgcolor = "#9acd32"> 
                  <th>TAG</th> 
                  <th>DATE</th> 
                  <th>ORANISOR</th> 
                  <th>VENUE</th> 
                  <th>TIME</th> 
               </tr> 
					
               <xsl:for-each select = "painting_list/event"> 
					
                  <xsl:sort select = "date"/> 
                  <tr> 
                     <td><xsl:value-of select = "@tag"/></td> 
                     <td><xsl:value-of select = "date"/></td> 
                     <td><xsl:value-of select = "organisor"/></td> 
                     <td><xsl:value-of select = "venue"/></td> 
                     <td><xsl:value-of select = "time"/></td> 
                  </tr> 
               </xsl:for-each> 
            </table>
          </div>  
      </body>
    </html>

   </xsl:template>  
</xsl:stylesheet>


