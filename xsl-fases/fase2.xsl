<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="monuments-list">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title><xsl:value-of select="countries/country[1]/name"/></title>
            </head>
            <body>
                <header>
                    <h1>Monuments:<xsl:value-of select="countries/country[1]/name"/></h1>
                </header>
                <div>
                    <xsl:apply-templates select="countries/country"/>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="country">
        <div class="country">
            <h2>
                <xsl:value-of select="name"/>
            </h2>      
        </div>
    </xsl:template>
            
</xsl:stylesheet>
