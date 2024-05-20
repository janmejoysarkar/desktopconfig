#!/usr/bin/env python3
import webbrowser as wb
print ("Piratebay adfree search \n")
x="https://thepiratebay10.info/search/"
z="/1/99/0"
a= input ("Enter Search Query (small letters): ")
l=a.split()
c="%20"
y= c.join(l)
url= x+y+z
print (url)
wb.open(url, new=2)

