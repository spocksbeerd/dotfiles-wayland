#!/bin/bash

mpd --kill
[ ! -s ~/.local/state/mpd/pid ] && mpd
