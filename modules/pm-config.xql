xquery version "3.0";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-web="http://www.tei-c.org/tei-simple/models/shakespeare.odd/web/module" at "../transform/shakespeare-web-module.xql";
import module namespace pm-print="http://www.tei-c.org/tei-simple/models/shakespeare.odd/fo/module" at "../transform/shakespeare-print-module.xql";
import module namespace pm-latex="http://www.tei-c.org/tei-simple/models/shakespeare.odd/latex/module" at "../transform/shakespeare-latex-module.xql";

declare variable $pm-config:web-transform := pm-web:transform#2;
declare variable $pm-config:print-transform := pm-print:transform#2;
declare variable $pm-config:latex-transform := pm-latex:transform#2;