<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Mappa-servizi-per-elettronica-ed-elettricita-in-Italia by FILIPPO ZINI</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>nome</th>
                        <th>comune</th>
                        <th>provincia</th>
                        <th>regione</th>
                        <th>dataOraInserimento</th>
                        <th>identificatoreOSM</th>
                        <th>longitudine</th>
                        <th>latitudine</th>
                    </tr>
                    <xsl:for-each select="mappaElettrica/servizio/nome">
                        <tr>
                            <td><xsl:value-of select="@nome"/></td>
                            <td><xsl:value-of select="comune/@nome"/></td>
                            <td><xsl:value-of select="comune/provincia"/></td>
                            <td><xsl:value-of select="comune/regione"/></td>
                            <td><xsl:value-of select="comune/dataOraInserimento"/></td>
                            <td><xsl:value-of select="comune/identificatoreOSM"/></td>
                            <td><xsl:value-of select="comune/longitudine"/></td>
                            <td><xsl:value-of select="comune/latitudine"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>    
    </xsl:template>
</xsl:stylesheet>
