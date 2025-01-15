#!/bin/bash

set -o errexit
set -o nounset

REPO="${PWD}"

install() {
    cd "${1}" || return
    echo "installing Merge PDF and Burst PDF in ${1}"
    unlink "Merge PDF" &> /dev/null || true
    cp "${REPO}"/merge_pdf "Merge PDF"
    unlink "Burst PDF" &> /dev/null || true
    cp "${REPO}"/burst_pdf "Burst PDF"
    unlink "PDF to PNG" &> /dev/null || true
    cp "${REPO}"/pdf_to_png "PDF to PNG"
}

install "${HOME}/.local/share/nautilus/scripts"
install "${HOME}/.local/share/nemo/scripts"
install "${HOME}/.config/caja/scripts"
