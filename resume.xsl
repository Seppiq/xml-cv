<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>

    <xsl:template match="/resume">
        <html>
            <head>
                <link rel="stylesheet" href="resume.css"/>
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
                      integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
                      crossorigin="anonymous"></link>
            </head>
            <body>
                <div class="resume">
                    <div class="profile">

                        <img src="img/avatar.jpg" alt="Profile photo"/>
                        <h1 class="name">
                            <xsl:value-of select="profile/name"/>
                        </h1>
                        <p class="email">
                            <xsl:value-of select="profile/email"/>
                        </p>
                        <p class="phone">
                            <xsl:value-of select="profile/phone"/>
                        </p>
                        <p class="lesta-nickname">
                            <xsl:value-of select="profile/lesta-nickname"/>
                        </p>
                        <p class="social">
                            <xsl:value-of select="profile/social"/>

                            <a href="https://vk.com/kiman361" target="_blank">
                                <i class="fab fa-vk"></i>
                            </a>
                            <a href="https://github.com/Seppiq" target="_blank">
                                <i class="fab fa-github-alt"></i>
                            </a>
                            <a href="https://t.me/KirillSemak" target="_blank">
                                <i class="fab fa-telegram-plane"></i>
                            </a>
                            <a href="https://www.facebook.com/kiman361" target="_blank">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </p>
                        <p class="goal">
                            <xsl:value-of select="profile/goal"/>
                        </p>
                        <p class="summary">
                            <xsl:value-of select="profile/summary"/>
                        </p>
                    </div>
                    <main class="main">
                        <section>
                            <h2>Education: bachelor</h2>
                            <xsl:for-each select="main/education/degree">
                                <div>
                                    <h3>
                                        <xsl:value-of select="type"/>
                                    </h3>
                                    <h4><xsl:value-of select="institution"/>,
                                        <xsl:value-of select="location"/>
                                    </h4>
                                    <p class="dates">
                                        <xsl:value-of select="dates/from"/> -
                                        <xsl:value-of select="dates/to"/>
                                    </p>
                                </div>
                            </xsl:for-each>
                        </section>
                        <section>
                            <h2>Skills:</h2>
                            <ul>
                                <xsl:for-each select="main/skills/item">
                                    <li>
                                        <xsl:value-of select="."/>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </section>
                        <section>
                            <h2>Hobbys:</h2>
                            <ul>
                                <xsl:for-each select="main/hobbys/item">
                                    <li>
                                        <xsl:value-of select="."/>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </section>
                    </main>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>