#!/bin/bash
set -eo pipefail

# This is a small helper script used to extract the Debian version number
# defined in the Dockerfile so we can apply these as tags when building our own
# container.

if [ ! -f "${1}" ]; then
    >&2 echo "Input argument '${1}' is not a file"
    exit 1
fi

from_line="$(grep 'FROM' "${1}")"
version="$(echo "${from_line}" | cut -d: -f2)"
VERSION_MAJOR=$(echo "${version}" | cut -d. -f1)
VERSION_MINOR=$(echo "${version}" | cut -d. -f2 | cut -d- -f1)

if [ -n "${VERSION_MAJOR}" -a -n "${VERSION_MINOR}" ]; then
    echo "VERSION_MAJOR=${VERSION_MAJOR}"
    echo "VERSION_MINOR=${VERSION_MINOR}"
else
    >&2 echo "Found the following FROM line: '${from_line}'"
    >&2 echo "Could not extract all expected values: v${VERSION_MAJOR}.${VERSION_MINOR}"
    exit 1
fi
