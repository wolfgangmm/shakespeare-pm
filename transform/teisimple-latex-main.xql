import module namespace m='http://www.tei-c.org/tei-simple/models/teisimple.odd/latex' at '/db/apps/shakespeare-pm/transform/teisimple-latex.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "image-dir": (system:get-exist-home() || "/webapp/WEB-INF/data/expathrepo/tei-simple-0.6/test/", system:get-exist-home() || "/webapp/WEB-INF/data/expathrepo/tei-simple-0.6/doc/"),
    "styles": ["../transform/teisimple.css"],
    "collection": "/db/apps/shakespeare-pm/transform",
    "parameters": $parameters
}
return m:transform($options, $xml)