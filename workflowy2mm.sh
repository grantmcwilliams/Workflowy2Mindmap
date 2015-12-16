#!/bin/bash

CMDPATH=${0%/*}

OPMLFILE="${1}"
DESTDIR="${2}"
if [[ -z "${DESTDIR}" ]] ;then
	DESTDIR="${PWD}"
fi
DESTFILE="${DESTDIR}/${OPMLFILE%.*}.mm"
XSLFILE="${CMDPATH}/opml2mm.xsl"

# Check to see if xsltproc exists in the path
if ! hash xsltproc 2>/dev/null ;then
	echo "xsltproc needs to be installed in your PATH - exiting"
	exit 1
fi

# Check to see if gdrive exists in the path
if ! hash drive 2>/dev/null ;then
	echo "gdrive needs to be installed in your PATH and configured - exiting"
	exit 1
fi

xsltproc -o "${DESTFILE}" "${XSLFILE}" "${OPMLFILE}"
drive upload -f "${DESTFILE}"

