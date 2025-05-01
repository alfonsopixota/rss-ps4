<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/rss/channel">
    <html>
      <head>
        <title><xsl:value-of select="title"/></title>
        <style>
          body { font-family: Arial, sans-serif; background-color: #f9f9f9; padding: 20px; }
          h1, h2 { color: #333; }
          .item { background: white; padding: 15px; margin-bottom: 15px; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
          .item h2 { margin-top: 0; }
          a { color: #007BFF; text-decoration: none; }
          a:hover { text-decoration: underline; }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="title"/></h1>
        <p><strong>Autor:</strong> <xsl:value-of select="managingEditor"/></p>
        <p><strong>Fecha de publicación:</strong> <xsl:value-of select="pubDate"/></p>
        <img src="{image/url}" alt="{image/title}" style="max-width:200px; margin-bottom:20px;" />

        <xsl:for-each select="item">
          <div class="item">
            <h2><xsl:value-of select="title"/></h2>
            <p><strong>Fecha:</strong> <xsl:value-of select="pubDate"/></p>
            <p><xsl:value-of select="description"/></p>
            <p><a href="{link}" target="_blank">Ampliar información</a></p>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
