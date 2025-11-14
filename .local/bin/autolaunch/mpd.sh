#!/bin/bash

mpd --kill
[ ! -s ~/.config/mpd/pid ] && mpd
