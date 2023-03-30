#from PyPDF2 import PdfFileReader
#
#with open("disney20220708.pdf", "rb") as input:
#    reader = PdfFileReader(input)
#
#    print("disney20220708.pdf has %d pages.\n" % reader.getNumPages())
#
#    page = reader.getPage(1)
#
#    print("A")
#
#    print(page.extractText())
    
    
import sys
from pathlib import Path
from subprocess import call

py_path = "/home/lu/.local/bin/pdf2txt.py"

call(["python3", str(py_path), "-o disney20220708.txt", "-p 2", "disney20220708.pdf"])
