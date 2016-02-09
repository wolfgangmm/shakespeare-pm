import module namespace m='http://www.tei-c.org/tei-simple/models/shakespeare.odd/web' at '/db/apps/shakespeare-pm/transform/shakespeare-web.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["../transform/shakespeare.css"],
    "collection": "/db/apps/shakespeare-pm/transform",
    "parameters": $parameters
}
return m:transform($options, $xml)