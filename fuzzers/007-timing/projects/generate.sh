#!/bin/bash

source ${XRAY_GENHEADER}
TIMFUZ_DIR=$XRAY_DIR/fuzzers/007-timing

timing_txt2csv () {
    python3 $TIMFUZ_DIR/timing_txt2csv.py --speed-json $TIMFUZ_DIR/speed/build/speed.json --out timing3.csv timing3.txt
}

