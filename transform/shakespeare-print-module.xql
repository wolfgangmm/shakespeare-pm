module namespace pml='http://www.tei-c.org/tei-simple/models/shakespeare.odd/fo/module';

import module namespace m='http://www.tei-c.org/tei-simple/models/shakespeare.odd/fo' at '/db/apps/shakespeare-pm/transform/shakespeare-print.xql';

(: Generated library module to be directly imported into code which
 : needs to transform TEI nodes using the ODD this module is based on.
 :)
declare function pml:transform($xml as node()*, $parameters as map(*)?) {

   let $options := map {
       "styles": ["../transform/shakespeare.css"],
       "collection": "/db/apps/shakespeare-pm/transform",
       "parameters": $parameters
   }
   return m:transform($options, $xml)
};