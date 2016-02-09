import module namespace m='http://www.tei-c.org/tei-simple/models/teisimple.odd/web' at '/db/apps/shakespeare-pm/transform/teisimple-web.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["../transform/teisimple.css"],
    "collection": "/db/apps/shakespeare-pm/transform",
    "parameters": $parameters
}
return m:transform($options, $xml)