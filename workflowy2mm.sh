#!/bin/bash

CMDPATH=${0%/*}
XSLFILE="${CMDPATH}/opml2mm.xsl"
GDRIVE='false'

syntax()
{
	echo "Usage:"
	echo "${0##*/} <OPML file> [destination directory] [-g]"
	echo ""
	echo "Options:"
	echo "	-g	upload mindmap file to Google Drive"
	echo ""
	echo "Destination directory is optional, if no provided"
	echo "mindmap file will be in same directory as OPML file."
	echo ""
}

while getopts :g OPTIONS
do	
	case "$OPTIONS" in
		g)  GDRIVE='true';;
		[?]) syntax ;;
	esac
done
shift $((OPTIND-1))


OPMLFILE="${1}"
if [[ -z ${OPMLFILE} ]] ;then
	syntax
	exit 1
fi

DESTDIR="${2}"
if [[ -z "${DESTDIR}" ]] ;then
	DESTDIR="${PWD}"
fi
DESTFILE="${DESTDIR}/${OPMLFILE%.*}.mm"


# Check to see if xsltproc exists in the path
if ! hash xsltproc 2>/dev/null ;then
	echo "xsltproc needs to be installed in your PATH - exiting"
	exit 1
fi

# Check to see if gdrive exists in the path
if [[ "${GDRIVE}" = "true" ]] ;then
	if ! hash drive 2>/dev/null ;then
		echo "gdrive needs to be installed in your PATH and configured - exiting"
		exit 1
	fi
fi

# Convert OPML to Mindmap
xsltproc -o "${DESTFILE}" "${XSLFILE}" "${OPMLFILE}"

# If GDRIVE = true then attempt to upload file
if [[ "${GDRIVE}" = 'true' ]]; then 
	drive upload -f "${DESTFILE}"
fi


