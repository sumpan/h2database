-- Copyright 2004-2018 H2 Group. Multiple-Licensed under the MPL 2.0,
-- and the EPL 1.0 (http://h2database.com/html/license.html).
-- Initial Developer: H2 Group
--

CALL XMLCDATA('<characters>');
> '<![CDATA[<characters>]]>'
> --------------------------
> <![CDATA[<characters>]]>
> rows: 1

CALL XMLCDATA('special text ]]>');
> 'special text ]]&gt;'
> ---------------------
> special text ]]&gt;
> rows: 1

