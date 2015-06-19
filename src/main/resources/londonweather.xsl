<?xml version="1.0"?>

<!--
londonweather.xsl
Transforms RSS XML data from BBC weather feed into an HTML summary
Copyright (c)2014 Kevin Boone
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
 <html>
  <head>
   <title>
     London weather forecast from the BBC 
   </title>
  </head>
  <body style="margin:20px; padding:0px; width:600px">
    <h2>London weather forecast from the BBC Justin</h2>
    <xsl:for-each select="rss/channel">
      <p>
        <i>
          Forecast date: <xsl:value-of select="pubDate"/>
        </i>
      </p>
    </xsl:for-each>
    <xsl:for-each select="rss/channel/item">
      <p>
        <b>
          <xsl:value-of select="title"/>
        </b> 
        <br/>
        <xsl:value-of select="description"/>
      </p>
    </xsl:for-each>
  </body>
 </html>
</xsl:template>
</xsl:stylesheet>

