#!/bin/bash

JACK=/usr/bin/qjackctl
RAKK=rakarrack
GUITARIX=guitarix
TUNER=gxtuner

pgrep $JACK
if [ $? == "1" ]
then
    $JACK & disown
fi

pkill $RAKK
pkill $GUITARIX
pkill $TUNER

$RAKK & disown
$GUITARIX & disown
$TUNER & disown