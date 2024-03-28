<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="../css/styles.css"/>
        <title>Tolosaldea LH Machine</title>
        <link rel="icon" type="image/png" href="../img/icon.png"/>
      </head>
      <body>
        <!-- Header with Banner and Logo -->
        <header>
          <div class="banner">
            <img src="../img/image.png" alt="Tolosaldea LH Machinery"/>
          </div>
        </header>

        <!-- Navigation Menu -->
        <nav>
          <div class="lmao">
          <ul class="nav-links">
              <li><a href="index.html">Home</a></li>
              <li><a href="about.html">About Us</a></li>
              <li><a href="contact.html">Contact</a></li>
              <li class="dropdown">
                  <a href="#products">Products</a>
                  <div class="dropdown-content">
                   <a href="low.html">Low price CNC print</a>
                   <a href="high.html">High quality CNC print</a>
                  </div>
              </li>
              <li class="dropdown">
               <a href="#xml">Inventory</a>
               <div class="dropdown-content">
                <a href="computers.xml">Computer invenrtory</a>
                <a href="equipment.xml">Network Equipment inventory</a>
                <a href="other.xml">Other equipment invenory</a>
                <a href="periferals.xml">Peripheral inventory</a>
                <a href="server.xml">Server inventory</a>
               </div>
           </li>
              <li class="menu-icon">
                  <i class="fas fa-bars"></i>
              </li>
          </ul>
        </div>
      </nav>   


        <xsl:apply-templates select="/Inventario"/>

        <footer>
          <p>© 2024 Andoni Salegui Izquierdo. All rights reserved.</p>
      </footer>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Inventario">
    <div class="xml-content">
      <h2>Impresoras</h2>
      <xsl:apply-templates select="Impresora"/>
      <h2>Proyectores</h2>
      <xsl:apply-templates select="Proyector"/>
      <h2>Scanners</h2>
      <xsl:apply-templates select="Scanner"/>
    </div>
  </xsl:template>

  <xsl:template match="Impresora | Proyector | Scanner">
    <div class="item">
	<ul>
	<h3>Model:</h3>
      <xsl:apply-templates select="Modelo"/>
	</ul>
	<ul>
	<h3>Year of Production:</h3>
	<xsl:apply-templates select="Ano"/>
	</ul>
	<ul>
	<h3>Characteristics:</h3>
	<xsl:apply-templates select="Caracteristicas"/>
	</ul>
	<ul>
	</ul>
	<ul>
	<h3>Year of Purchase:</h3>
      <xsl:apply-templates select="@añoCompra"/>
	</ul>
	<ul>
	<h3>Supplyer</h3>
      <xsl:apply-templates select="@proveedor"/>
	</ul>
	<ul>
		<img class="images" src="{Image/@path}" alt="404 Image not found"/>
	</ul>
    </div>
  </xsl:template>

  <xsl:template match="Modelo | Ano | Caracteristicas | Tipo">
    <p>
      <xsl:value-of select="."/>
    </p>
  </xsl:template>

</xsl:stylesheet>
