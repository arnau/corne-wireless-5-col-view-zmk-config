default: (parse "./config/corne.keymap") draw to-png
    rm keymap.yml keymap.svg

parse filename:
    uvx --from keymap-drawer keymap parse -z {{filename}} -o keymap.yml

drw filename:
    uvx --from keymap-drawer keymap parse -z {{filename}} | uvx --from keymap-drawer keymap draw -o keymap.svg -

draw:
    uvx --from keymap-drawer keymap draw -o keymap.svg keymap.yml

to-png:
    rsvg-convert -f png -b '#ffffff' keymap.svg > keymap.png
