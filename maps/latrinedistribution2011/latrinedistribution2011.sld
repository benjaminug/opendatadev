<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd">
 <NamedLayer>
  <Name>latrinedistribution:2011</Name>
  <UserStyle>
   <Title>latrinedistribution:2011</Title>
   <FeatureTypeStyle>
    <Rule>
     <Name>No data</Name>
     <Title>No data</Title>
     <ogc:Filter>
      <ogc:And>
       <ogc:PropertyIsGreaterThan>
        <ogc:PropertyName>2010/11</ogc:PropertyName>
        <ogc:Literal>0.0</ogc:Literal>
       </ogc:PropertyIsGreaterThan>
       <ogc:PropertyIsLessThanOrEqualTo>
        <ogc:PropertyName>2010/11</ogc:PropertyName>
        <ogc:Literal>0.0</ogc:Literal>
       </ogc:PropertyIsLessThanOrEqualTo>
      </ogc:And>
     </ogc:Filter>
     <PolygonSymbolizer>
      <Fill>
       <CssParameter name="fill">#bbbbbb</CssParameter>
      </Fill>
     </PolygonSymbolizer>
    </Rule>
    <Rule>
     <Name>&lt; 20 (Low coverage)</Name>
     <Title>&lt; 20 (Low coverage)</Title>
     <ogc:Filter>
      <ogc:And>
       <ogc:PropertyIsGreaterThan>
        <ogc:PropertyName>2010/11</ogc:PropertyName>
        <ogc:Literal>1.0</ogc:Literal>
       </ogc:PropertyIsGreaterThan>
       <ogc:PropertyIsLessThanOrEqualTo>
        <ogc:PropertyName>2010/11</ogc:PropertyName>
        <ogc:Literal>20.0</ogc:Literal>
       </ogc:PropertyIsLessThanOrEqualTo>
      </ogc:And>
     </ogc:Filter>
     <PolygonSymbolizer>
      <Fill>
       <CssParameter name="fill">#fff299</CssParameter>
      </Fill>
     </PolygonSymbolizer>
    </Rule>
    <Rule>
     <Name>20.0000 - 40.0000</Name>
     <Title>20.0000 - 40.0000</Title>
     <ogc:Filter>
      <ogc:And>
       <ogc:PropertyIsGreaterThan>
        <ogc:PropertyName>2010/11</ogc:PropertyName>
        <ogc:Literal>20.0</ogc:Literal>
       </ogc:PropertyIsGreaterThan>
       <ogc:PropertyIsLessThanOrEqualTo>
        <ogc:PropertyName>2010/11</ogc:PropertyName>
        <ogc:Literal>40.0</ogc:Literal>
       </ogc:PropertyIsLessThanOrEqualTo>
      </ogc:And>
     </ogc:Filter>
     <PolygonSymbolizer>
      <Fill>
       <CssParameter name="fill">#d5c57a</CssParameter>
      </Fill>
     </PolygonSymbolizer>
    </Rule>
    <Rule>
     <Name>40.0000 - 60.0000</Name>
     <Title>40.0000 - 60.0000</Title>
     <ogc:Filter>
      <ogc:And>
       <ogc:PropertyIsGreaterThan>
        <ogc:PropertyName>2010/11</ogc:PropertyName>
        <ogc:Literal>40.0</ogc:Literal>
       </ogc:PropertyIsGreaterThan>
       <ogc:PropertyIsLessThanOrEqualTo>
        <ogc:PropertyName>2010/11</ogc:PropertyName>
        <ogc:Literal>60.0</ogc:Literal>
       </ogc:PropertyIsLessThanOrEqualTo>
      </ogc:And>
     </ogc:Filter>
     <PolygonSymbolizer>
      <Fill>
       <CssParameter name="fill">#ab995b</CssParameter>
      </Fill>
     </PolygonSymbolizer>
    </Rule>
    <Rule>
     <Name>60.0000 - 80.0000</Name>
     <Title>60.0000 - 80.0000</Title>
     <ogc:Filter>
      <ogc:And>
       <ogc:PropertyIsGreaterThan>
        <ogc:PropertyName>2010/11</ogc:PropertyName>
        <ogc:Literal>60.0</ogc:Literal>
       </ogc:PropertyIsGreaterThan>
       <ogc:PropertyIsLessThanOrEqualTo>
        <ogc:PropertyName>2010/11</ogc:PropertyName>
        <ogc:Literal>80.0</ogc:Literal>
       </ogc:PropertyIsLessThanOrEqualTo>
      </ogc:And>
     </ogc:Filter>
     <PolygonSymbolizer>
      <Fill>
       <CssParameter name="fill">#816c3c</CssParameter>
      </Fill>
     </PolygonSymbolizer>
    </Rule>
    <Rule>
     <Name>> 80 (High coverage)</Name>
     <Title>> 80 (High coverage)</Title>
     <ogc:Filter>
      <ogc:And>
       <ogc:PropertyIsGreaterThan>
        <ogc:PropertyName>2010/11</ogc:PropertyName>
        <ogc:Literal>80.0</ogc:Literal>
       </ogc:PropertyIsGreaterThan>
       <ogc:PropertyIsLessThanOrEqualTo>
        <ogc:PropertyName>2010/11</ogc:PropertyName>
        <ogc:Literal>97.0</ogc:Literal>
       </ogc:PropertyIsLessThanOrEqualTo>
      </ogc:And>
     </ogc:Filter>
     <PolygonSymbolizer>
      <Fill>
       <CssParameter name="fill">#57401e</CssParameter>
      </Fill>
     </PolygonSymbolizer>
    </Rule>
   </FeatureTypeStyle>
  </UserStyle>
 </NamedLayer>
</StyledLayerDescriptor>
