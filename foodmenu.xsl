<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<body style="font-family:Arial;font-size:12pt;">

<div style="background-color:#ccae2a;color:white;padding:40px;margin-bottom:20px;">
<span style="font-weight:bold;font-family:Arial;font-size:30px;"> EKA HOTEL FOOD MENU 
</span>
</div>

<xsl:for-each select="menu/food">
  <div style="background-color:rgb(216, 233, 122);padding:14px;text-align:center;width:1000px;margin-left:150px;">
    <span style="font-weight:bold"><xsl:value-of select="name"/> --------------------- 
    </span>
    <xsl:value-of select="price"/>
    </div>

  <div style="margin-bottom:1em;text-align:center;font-size:15px;background-color:rgb(233, 227, 227);padding:20px;width:990px;margin-left:150px;">
    <p>
    <xsl:value-of select="description"/>
    </p>
  </div>
</xsl:for-each>
</body>
</html>