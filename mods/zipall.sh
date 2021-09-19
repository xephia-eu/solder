#!/bin/bash
for mod in * ; do
	if [ -d "$mod" ] ; then
		cd "$mod" || continue
		for ver in * ; do
			if [ -d "$ver" ] ; then
			  cd "$ver" || continue 
		    if [ ! -f ../$ver.zip ]; then
          zip -r ../$ver.zip *
		    fi
		    cd ..
			fi
		done
		cd ..
	fi
done