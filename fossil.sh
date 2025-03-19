#!/usr/bin/env bash

function _fossil() {
    alias f="fossil"
    alias f.cm="fossil commit -m"
    alias f.a="fossil add"
    alias f.rm="fossil rm"
    alias f.push="fossil push"
    alias f.pull="fossil pull"
    alias f.sync="fossil sync"
    alias f.up="fossil update"
    alias f.ui="fossil ui"
    alias f.sync.off="fossil set autosync off"
    alias f.sync.on="fossil set autosync on"
}