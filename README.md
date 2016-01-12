# Workflowy2Mindmap
Very simple tool to take a Workflowy OPML export and convert it to MindMap 
format for loading into many different types of mindmap tools such as MindMap and MindMup.

WorkFlowy is an online outlining tool that is very quick at creating nested outlines. It doesn't however, provide
visual representations of those outlines which is where Workflowy2Mindmap comes in. By exporting the Workflowy
data to OPML you can use Workflowy2Mindmap to convert it to MindMap format which other tools can import. I use 
MindMup which loads MindMap formatted files from Google drive.

##Requirements

####gdrive

The gdrive tool is used to store MindMap files on Google Drive.
This command needs to be in your system path.

Install google gdrive from here - https://github.com/prasmussen/gdrive.
Gdrive needs to be configured by running gdrive, going to the provided web URL and 
logging in, then pasting the resulting code back into the terminal.

####xsltproc

Xsltproc is used to transform the OPML files to MindMap format. This command
needs to be in your system path.

http://xmlsoft.org/XSLT/xsltproc2.html

##Directions for Google drive

1. Create an outline in Workflowy (https://workflowy.com/)
2. Select the drop-down - export all
3. Click the "OPML" button
4. Click the "Download" link and save it as workflowy-export.opml
5. Open a terminal
3. Run workflowy2mm.sh workflowy-export.opml
4. Open a webbrowser and go to https://www.mindmup.com
5. Import the MindMap file from Google Drive (Mindmup version 1 doesn't seem to update google drive list)
6. Click the Blue root node and press the left curly bracket "{"
7. Press the forward slash to expand "/"

##Directions for local file

1. Create an outline in Workflowy (https://workflowy.com/)
2. Select the drop-down - export all
3. Click the "OPML" button
4. Click the "Download" link and save it as workflowy-export.opml
5. Open a terminal
6. workflowy2mm.sh workflowy-export.opml
7. Open a webbrowser and go to https://www.mindmup.com
8. Select "Open a Mindmap"
9. Click the Open button and select workflowy-export.mm
10. Click the Blue root node and press the left curly bracket "{"
11. Press the forward slash to expand "/"
