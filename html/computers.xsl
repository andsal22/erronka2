<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="../css/styles.css"/>
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
                <a href="accessories.xml">Accessories inventary</a>
                <a href="computers.xml">Computer invenrtory</a>
                <a href="equipment.xml">Equipment inventory</a>
                <a href="other.xml">Other equipment invenory</a>
                <a href="periferals.xml">Peripheral inventory</a>
                <a href="server.xml">Server inventory</a>
               </div>
           </li>
              <li class="menu-icon">
                  <i class="fas fa-bars"></i>
              </li>
          </ul>
      </nav>   

        <xsl:apply-templates select="/Inventario"/>

        <footer>
        </footer>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Inventario">
    <div class="xml-content">
      <h2>Computers:</h2>
      <xsl:apply-templates select="PC"/>
    </div>
  </xsl:template>

  <xsl:template match="PC | Periferico | Equipamiento | Accesorio | Impresora | Proyector | Scanner | Servidor">
    <div class="item">
	<ul>
	<h3>Model:</h3>
      <xsl:apply-templates select="Modelo"/>
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
	<h3>CPU:</h3>
      <xsl:apply-templates select="ComponentesBasicos/CPU"/>
	</ul>
	<ul>
	<h3>RAM:</h3>
      <xsl:apply-templates select="ComponentesBasicos/RAM"/>
	</ul>
	<ul>
	<h3>Storage:</h3>
      <xsl:apply-templates select="ComponentesBasicos/DiscoDuro"/>
	</ul>
	<ul>
	<h3>GPU:</h3>
      <xsl:apply-templates select="ComponentesBasicos/TarjetaGrafica"/>
      <xsl:apply-templates select="Tipo"/>
	</ul>
	<ul>
	  <img width="20%" height="20%" src="../img/fpc.jpg" class="CalloutRightPhoto"/>
	  </ul>
    </div>
  </xsl:template>

  <xsl:template match="Modelo | Ano | Caracteristicas | Tipo">
    <p>
      <xsl:value-of select="."/>
    </p>
  </xsl:template>

</xsl:stylesheet>
