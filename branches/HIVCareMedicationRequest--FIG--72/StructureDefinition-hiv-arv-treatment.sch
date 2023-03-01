<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CarePlan
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CarePlan</sch:title>
    <sch:rule context="f:CarePlan">
      <sch:assert test="count(f:encounter) &gt;= 1">encounter: minimum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:period) &gt;= 1">period: minimum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:activity) &gt;= 1">activity: minimum cardinality of 'activity' is 1</sch:assert>
      <sch:assert test="count(f:note) &lt;= 1">note: maximum cardinality of 'note' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CarePlan/f:activity</sch:title>
    <sch:rule context="f:CarePlan/f:activity">
      <sch:assert test="count(f:detail) &gt;= 1">detail: minimum cardinality of 'detail' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CarePlan/f:activity/f:detail</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail">
      <sch:assert test="count(f:extension[@url = 'http://openhie.org/fhir/hiv-cbs/StructureDefinition/art-regimen-switched-or-substituted']) &lt;= 1">extension with URL = 'http://openhie.org/fhir/hiv-cbs/StructureDefinition/art-regimen-switched-or-substituted': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://openhie.org/fhir/hiv-cbs/StructureDefinition/art-regimen-line']) &gt;= 1">extension with URL = 'http://openhie.org/fhir/hiv-cbs/StructureDefinition/art-regimen-line': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://openhie.org/fhir/hiv-cbs/StructureDefinition/art-regimen-line']) &lt;= 1">extension with URL = 'http://openhie.org/fhir/hiv-cbs/StructureDefinition/art-regimen-line': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
