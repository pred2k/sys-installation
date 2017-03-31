
## Firefox Addons

* Cookie Monster
* HTTPS Everwhere
* NoScript
* PwdHash
* RefControl
* Self-Destructing Cookies
* uBlock **Origin**
* CanvasBlocker

https://addons.mozilla.org/de/firefox/collections/bukkit/

## Firefox Settings

### in Settings Dialog

 TODO


#### Deaktivierung der Schriftarten

Für Linux als Standard Schrift  
Sans- Serif einstellen

### Plugins Dialog

disable all, but Flash. set Flash to clicktoplay

### in about:config

http://kb.mozillazine.org/About:config_entries

`webgl.disabled` to `true`  
`webgl.enable-webgl2` to `false` (WebGL2 is enabled since Firefox 51)  
`media.peerconnection.enabled` to `false`

#### Tip von ip-check.info:
`plugins.enumerable_names` to `[empty string]` (delete `*`) # gibt es nicht mehr http://wiki.kairaven.de/open/app/firefox#plugin-fingerprinting  
`browser.cache.disk.enable` to `false`  
`browser.cache.disk.capacity = 0`  
`browser.sessionhistory.max_entries` to `2` (dann geht aber auch nur 2 mal die Zurück-Taste)  
`dom.storage.enabled` to `false` (Self Destructing Cookies löschen die sowieso)

~~security.tls.version.min = 1  Deaktiviert SSL 3.0 (mit 2 gibt es immer wieder Probleme)~~ (seit FF x ist es deaktivert)
http://kubieziel.de/blog/archives/1563-SSL-im-Browser-sicher-verwenden.html

~~Suche nach rc4 und alle ergebnisse auf false stellen~~ (seite FF 36 nicht mehr nötig)
