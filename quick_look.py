from astropy.io import fits
import matplotlib.pyplot as plt
import os, sys
import argparse
import numpy as np
parser=argparse.ArgumentParser()
parser.add_argument('path', help="Image path")
parser.add_argument('--header','-H', action='store_true', help="view image header")
parser.add_argument('--param', '-P', action='store_true', help="view desired parameter")

arg = parser.parse_args()
file= arg.path

if arg.param:
    param1='CMD_EXPT'
    #param1='X1'
    #param2='LEDONOFF'
    param2='SHTR_STR'
    hdu=fits.open(file)[0]
    print(file,"\t", param1, hdu.header[param1], param2, hdu.header[param2])

elif arg.header:
    hdu=fits.open(file)[0]
    head=hdu.header.keys
    print(head)
    
else:
    print(file)
    hdu=fits.open(file)[0]
    print("\n ***** \n Min, Max:", np.min(hdu.data), np.max(hdu.data),"\n *****\n")
    plt.figure(file)
    plt.imshow(hdu.data, origin='lower')
    plt.colorbar()
    plt.title(file)
    plt.show()
