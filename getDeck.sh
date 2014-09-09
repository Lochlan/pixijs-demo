#!/bin/sh

DECK=universal_waite
OUTPUT_DIR=decks/$DECK

[ -d $OUTPUT_DIR ] || mkdir -p $OUTPUT_DIR
# card back
wget http://gfx.tarot.com/images/site/decks/$DECK/ghost.jpg -O $OUTPUT_DIR/ghost.jpg
# card fronts
for i in $(seq 0 77); do
    wget http://gfx.tarot.com/images/site/decks/$DECK/table_card/$i.jpg -O $OUTPUT_DIR/$i.jpg
done
