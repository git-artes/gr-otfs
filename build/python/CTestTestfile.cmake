# CMake generated Testfile for 
# Source directory: /home/flarroca/facultad/gnuradio/gr-otfs/python
# Build directory: /home/flarroca/facultad/gnuradio/gr-otfs/build/python
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(qa_otfs_modulator "/usr/bin/sh" "/home/flarroca/facultad/gnuradio/gr-otfs/build/python/qa_otfs_modulator_test.sh")
set_tests_properties(qa_otfs_modulator PROPERTIES  _BACKTRACE_TRIPLES "/usr/lib/x86_64-linux-gnu/cmake/gnuradio/GrTest.cmake;122;add_test;/home/flarroca/facultad/gnuradio/gr-otfs/python/CMakeLists.txt;46;GR_ADD_TEST;/home/flarroca/facultad/gnuradio/gr-otfs/python/CMakeLists.txt;0;")
add_test(qa_otfs_demodulator "/usr/bin/sh" "/home/flarroca/facultad/gnuradio/gr-otfs/build/python/qa_otfs_demodulator_test.sh")
set_tests_properties(qa_otfs_demodulator PROPERTIES  _BACKTRACE_TRIPLES "/usr/lib/x86_64-linux-gnu/cmake/gnuradio/GrTest.cmake;122;add_test;/home/flarroca/facultad/gnuradio/gr-otfs/python/CMakeLists.txt;47;GR_ADD_TEST;/home/flarroca/facultad/gnuradio/gr-otfs/python/CMakeLists.txt;0;")
