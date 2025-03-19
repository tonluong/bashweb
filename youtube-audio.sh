#!/usr/bin/env bash

# bloomberg, ABC-Australia, CNA, Al-Jazeera, France24English
function _yt() {
    local _ytaudio=("iEpJwprxDdk" "vOTiJkg1voo" "XWq5kBlakcQ" "gCNeDWCI0vo" "Ap-UM1O9RBU")
    for ((i=1; i <= $#_ytaudio; i++)); do
        alias yta1.${i}="mpv --no-video --ytdl-format=91 ytdl://${_ytaudio[i]}"
        alias ytv1.${i}="mpv --vo=tct ytdl://${_ytaudio[i]}"
    done
}
