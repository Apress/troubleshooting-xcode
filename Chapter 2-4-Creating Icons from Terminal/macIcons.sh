#!/bin/bash

# File: macIcons.sh
# Abstract: n/a
# Version: 1.0
# Author: Magno Urbano (www.addfone.com)
#
# Disclaimer: IMPORTANT:  This software is supplied to you by the Author
# in consideration of your agreement to the following terms, and your use,
# installation, modification or redistribution of this software constitutes
# acceptance of these terms.  If you do not agree with these terms, please
# do not use, install or modify this software.
# 
# In consideration of your agreement to abide by the following terms, and
# subject to these terms, the Author grants you a personal, non-exclusive
# license, under the Author's copyrights in this original software, to use
# this software, with or without modifications, in source and/or binary forms;
# In all cases you must retain this notice and the following text and
# disclaimers in all such redistributions of the Author Software.
# Neither the name, trademarks, service marks or logos of the Author. may
# be used to endorse or promote products derived from this Software
# without specific prior written permission from the Author.  Except as
# expressly stated in this notice, no other rights or licenses, express or
# implied, are granted by the Author herein, including but not limited to any
# patent rights that may be infringed by your derivative works or by other
# works in which this Software may be incorporated.
 
# This Software is provided by the Author on an "AS IS" basis.  THE AUTHOR
# MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION
# THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE, REGARDING THIS SOFTWARE OR ITS USE AND
# OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.
 
# IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL
# OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION,
# MODIFICATION AND/OR DISTRIBUTION OF THIS SOFTWARE, HOWEVER CAUSED
# AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE),
# STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
 
# Copyright (C) 2012 Magno Urbano. All Rights Reserved.


# This code is provided as part of the book Troubleshooting Xcode by the
# author, published by Apress. If you have purchased the book you can use
# this script free of charge. 


mkdir -p ./icons_mac
for x in 512 256 128 32 16
do 
  double=$(($x * 2))  
   sips --resampleWidth $double icon.png --out ./icons_mac/icon-$x@2x.png
   sips --resampleWidth $x icon.png --out ./icons_mac/icon-$x.png
done
