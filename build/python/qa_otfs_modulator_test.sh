#!/usr/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir="/home/flarroca/facultad/gnuradio/gr-otfs/python"
export GR_CONF_CONTROLPORT_ON=False
export PATH="/home/flarroca/facultad/gnuradio/gr-otfs/build/python":$PATH
export LD_LIBRARY_PATH="":$LD_LIBRARY_PATH
export PYTHONPATH=/home/flarroca/facultad/gnuradio/gr-otfs/build/swig:$PYTHONPATH
/usr/bin/python3 /home/flarroca/facultad/gnuradio/gr-otfs/python/qa_otfs_modulator.py 
