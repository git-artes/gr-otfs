#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright 2023 Federico 'Larroca' La Rocca.
#
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this software; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
#


import numpy
from gnuradio import gr

class otfs_modulator(gr.sync_block):
    """
    docstring for block otfs_modulator
    """
    def __init__(self, delay_ntaps, doppler_ntaps):
        gr.sync_block.__init__(self,
            name="otfs_modulator",
            in_sig=[numpy.complex64, ],
            out_sig=[numpy.complex64, ])

        self.M = delay_ntaps
        self.N = doppler_ntaps
        self.set_output_multiple(self.M*self.N)


    def work(self, input_items, output_items):
        in0 = input_items[0]
        out = output_items[0]

        m_size = self.M*self.N
        n_frames_in = len(in0)//m_size

        for i in numpy.arange(n_frames_in):
            symbols_matrix_in = numpy.reshape(in0[i*m_size:(i+1)*m_size],(self.M,self.N), order='F')
            Xt = numpy.fft.ifft(symbols_matrix_in,axis=1)
            out[i*m_size:(i+1)*m_size] = Xt.flatten(order='F')
        return len(output_items[0])

