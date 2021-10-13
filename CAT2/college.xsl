<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body style="font-family:Arial;font-size:12pt;background-color:#005073;">
      <h2 style="text-align:center; -webkit-text-emphasis: dot;color: #71c7ec;"> CAT2</h2>
      <p style="text-align:center;font-weight:bold;color:#71c7ec;">XML file to show the detail of Student</p>
 
    <xsl:for-each select="CHRIST/CS">
        <div style="background-color:pink">
          <div style="background-color:#ff6f6f;color:white;padding:4px">
            <span style="font-weight:bold;color:#005073;">Student Details</span>
          </div>
        </div>

            <div style="color:black;padding:4px"><p style="font-weight:bold;color:white;">Student Name :</p> <xsl:value-of select="STU-NAME"/> </div>
            <div style="color:black;padding:4px"><p style="font-weight:bold;color:white;">Student Branch :</p><xsl:value-of select="STU-BRANCH"/> </div>
            <div style="color:black;padding:4px"> <p style="font-weight:bold;color:white;">Student College :</p><xsl:value-of select="STU-COLLEGE"/> </div>
            <div style="color:black;padding:4px"><p style="font-weight:bold;color:white;">Student Email :</p><xsl:value-of select="STU-EMAIL"/> </div>
            <p>---------------------</p>
          
      </xsl:for-each>

      <button style="padding:5px; font-weight:100; color:#000; border-radius:10px; background:white; margin:5px;">Add detail</button>
      <button style="padding:5px; font-weight:100; color:#000; border-radius:10px; background:white; margin:5px;" href="/Users/mayankbhatra/Desktop/LAB1/CAT2/store.xml">Show details</button>
  
  <xsl:for-each select="CHRIST/CS">
        <div style="background-color:pink">
          <div style="background-color:#ff6f6f;color:white;padding:4px">
            <span style="font-weight:bold;color:#005073;">Student Details</span>
          </div>
        </div>

            <div style="color:black;padding:4px"><p style="font-weight:bold;color:white;">Student Name :</p> <xsl:value-of select="STU-NAME"/> </div>
            <div style="color:black;padding:4px"> <p style="font-weight:bold;color:white;">Student College :</p><xsl:value-of select="STU-COLLEGE"/> </div>
            <p>---------------------</p>
          
      </xsl:for-each>
    
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
