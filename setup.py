#!/usr/bin/env python
from setuptools import find_packages, setup

from distutils.extension import Extension
from Cython.Distutils import build_ext

import numpy

ext_modules = [
    Extension('demo.sub1.roster',
              ['demo/sub1/roster.pyx'],
              include_dirs=[numpy.get_include(), "."],),
    Extension('demo.sub1.player',
              ['demo/sub1/player.pyx'],
              include_dirs=[numpy.get_include(), "."],),
]

setup(name="demo",
      version="0.1",
      platforms=["any"],  # or more specific, e.g. "win32", "cygwin", "osx"
      ext_modules=ext_modules,
      cmdclass={'build_ext': build_ext},
      packages=find_packages(),
      )

# To install
# python setup.py build_ext --inplace
