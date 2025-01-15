#!/bin/bash

set -o errexit
set -o nounset

REPO="${PWD}"

install() {
    cd "${1}" || return
    echo "installing Merge PDF and Burst PDF in ${1}"
    unlink "Merge PDF" || true
    cp "${REPO}"/merge_pdf "Merge PDF"
    unlink "Burst PDF" || true
    cp "${REPO}"/burst_pdf "Burst PDF"
}

install "${HOME}/.local/share/nautilus/scripts"
install "${HOME}/.local/share/nemo/scripts"
install "${HOME}/.config/caja/scripts"
