# Workflowy2Mindmap
Very simple tool to take a Workflowy OPML export and convert it to MindMap 
format for loading into many different types of mindmap tools such as MindMap and MindMup.

WorkFlowy is an online outlining tool that is very quick at creating nested outlines. It doesn't however, provide
visual representations of those outlines which is where Workflowy2Mindmap comes in. By exporting the Workflowy
data to OPML you can use Workflowy2Mindmap to convert it to MindMap format which other tools can import. I use 
MindMup which loads MindMap formatted files from Google drive.

Requirements
===========
gdrive
------

The gdrive tool is used to store MindMap files on Google Drive.
This command needs to be in your system path.

Install google gdrive from here - https://github.com/prasmussen/gdrive.

xsltproc
-------
Xsltproc is used to transform the OPML files to MindMap format. This command
needs to be in your system path.

http://xmlsoft.org/XSLT/xsltproc2.html

Directions:
===========
1. Create an outline in Workflowy
2. Export your outline in OPML format to your local harddrive
3. Run workflowy2mm.sh <your OPML file> 
4. Go to www.mindmup.com and import the MindMap file from Google Drive

