<?php
    // this note is about how to get a DOMNode's outerHTML and innerHTML.
    $dom = new DOMDocument('1.0','UTF-8');
    $dom->loadHTML('<html><body><div><p>p1</p><p>p2</p></div></body></html>');    
    $node = $dom->getElementsByTagName('div')->item(0);    
    $outerHTML = $node->ownerDocument->saveHTML($node);    
    $innerHTML = '';
    foreach ($node->childNodes as $childNode){
        $innerHTML .= $childNode->ownerDocument->saveHTML($childNode);
    }
    echo '<h2>outerHTML: </h2>';
    echo htmlspecialchars($outerHTML);
    echo '<h2>innerHTML: </h2>';    
    echo htmlspecialchars($innerHTML);    
?> 