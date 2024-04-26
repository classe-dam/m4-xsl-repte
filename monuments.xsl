<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="monuments-list">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title><xsl:value-of select="continent"/></title>
                <link rel="stylesheet" href="public/styles/styles.css"/>
            </head>
            <body>
                <header>
                    <h1>Monuments: <xsl:value-of select="countries/country[1]/name"/></h1>
                </header>
                <nav class="main_menu">
                    <ul class="main_menu_options">
                        <a class="main_option" href="africa.xml"><li>Àfrica</li></a>
                        <a class="main_option" href="america.xml"><li>Amèrica</li></a>
                        <a class="main_option" href="asia.xml"><li>Àsia</li></a>
                        <a class="main_option" href="europa.xml"><li>Europa</li></a>
                        <a class="main_option" href="oceania.xml"><li>Oceania</li></a>
                    </ul>
                    <ul class="secondary_menu_options">
                        <xsl:apply-templates select="countries/country" mode="nav"/>
                    </ul>
                </nav>
                <div>
                    <xsl:apply-templates select="countries/country" mode="card"/>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="country" mode="card">
        <div id="{name}" class="country">
            <h2>
                <xsl:value-of select="name"/>
            </h2>     
            <a href="">
                ^
            </a>
            <section class="country-monuments">
                <xsl:apply-templates select="monuments/monument"/>
            </section> 
        </div>
    </xsl:template>

    <xsl:template match="country" mode="nav">
        <a href="#{name}">
            <li><xsl:value-of select="name"/></li>
        </a>
    </xsl:template>


    <xsl:template match="monument">
        <a class="item" target="_blank" href="https://ca.wikipedia.org/wiki/{url}">
            <img src="./public/images/{image}.jpg"/>    
            <h3>
                <xsl:value-of select="name"/>
            </h3>
            <h4>
                <xsl:value-of select="place"/>
            </h4>  
        </a>
    </xsl:template>
            
</xsl:stylesheet>
