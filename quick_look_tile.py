#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Feb 12 19:33:01 2024
Created to quickly visualize multiple files as a tile.
@author: janmejoyarch
"""

import matplotlib.pyplot as plt
from astropy.io import fits
import numpy as np
import sys

'''
files= ['/data1/janmejoy/system_wide_flat/single_files_from_each_day/reduced_SUT_C24_0199_000213_Lev0.5_2024-02-11T04.32.47.815_4081NB06.fits', 
        '/data1/janmejoy/system_wide_flat/single_files_from_each_day/reduced_SUT_C24_0204_000218_Lev0.5_2024-02-11T07.22.47.896_4081NB06.fits', 
        '/data1/janmejoy/system_wide_flat/single_files_from_each_day/reduced_SUT_C24_0165_000186_Lev0.5_2024-02-08T09.32.47.770_4081NB06.fits', 
        '/data1/janmejoy/system_wide_flat/single_files_from_each_day/reduced_SUT_C24_0081_000099_Lev0.5_2024-02-01T04.47.57.219_4081NB06.fits', 
        '/data1/janmejoy/system_wide_flat/single_files_from_each_day/reduced_SUT_C24_0151_000167_Lev0.5_2024-02-07T04.33.06.941_4081NB06.fits',
        '/data1/janmejoy/system_wide_flat/single_files_from_each_day/reduced_SUT_C24_0144_000160_Lev0.5_2024-02-06T07.22.47.640_4081NB06.fits'][:2]
'''
##### User Defined #####
args= sys.argv[1:]
files= args[2:]
vmx, vmn= args[0], args[1]
namelen= -37 
size=namelen+14 #Length of string to display on plot
print("Loading", len(files), "images...")
########################

if (len(files) == 0):
    print("Enter file paths")

elif (len(files) < 4):
    n=0
    fig, ax= plt.subplots(1, len(files))
    for i in range(len(files)):
        print(n, end=" ", flush=True)
        print("#", end=" ", flush=True)
        hdu= fits.open(files[n])[0]
        data= hdu.data
        ax[i].imshow(data, vmax=vmx, vmin=vmn, origin= 'lower')
        ax[i].set_title(files[n][namelen:size])
        n=n+1
    plt.show()

elif (len(files) == 4):
    n=0
    fig, ax= plt.subplots(2, 2)
    for i in range(2):
        for j in range(2):
            print(n, end=" ", flush=True)
            print("#", end=" ", flush=True)
            hdu= fits.open(files[n])[0]
            data= hdu.data
            ax[i,j].imshow(data, vmax=vmx, vmin=vmn, origin= 'lower')
            ax[i,j].set_title(files[n][namelen:size])
            n=n+1 
    plt.show()

elif (len(files)< 6):
    num= len(files)
    row= int(np.sqrt(num))
    col= int(np.sqrt(num)+1)
    fig, ax= plt.subplots(row,col)
    n=0
    for i in range(2):
        for j in range(3):
            if (n < num):
                print(n, end=" ", flush=True)
                print("#", end=" ", flush=True)
                hdu= fits.open(files[n])[0]
                data= hdu.data
                ax[i,j].imshow(data, vmax=vmx, vmin=vmn, origin= 'lower')
                ax[i,j].set_title(files[n][namelen:size])
                n=n+1
    plt.show()

else:
    num= len(files)
    row= int(np.sqrt(num))
    col= int(np.sqrt(num)+1)
    fig, ax= plt.subplots(row,col)
    n=0
    for i in range(row):
        for j in range(col):
            if (n < num):
                print(n, end=" ", flush=True)
                hdu= fits.open(files[n])[0]
                data= hdu.data
                ax[i,j].imshow(data, vmax=vmx, vmin=vmn, origin= 'lower')
                ax[i,j].set_title(files[n][namelen:size])
                #ax[i,j].set_title("LED ID:"+ hdu.header['LEDONOFF'])
                ax[i,j].tick_params(bottom=False, labelbottom=False)
                n=n+1
    plt.show()
