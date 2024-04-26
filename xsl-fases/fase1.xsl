<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="monuments-list">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title><xsl:value-of select="continent"/></title>
            </head>
            <body>
                <header>
                    <h1>Monuments:<xsl:value-of select="countries/country[1]/name"/></h1>
                </header>
            </body>
        </html>
    </xsl:template>
            
</xsl:stylesheet>
