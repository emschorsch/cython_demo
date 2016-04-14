#!/usr/bin/env python

import numpy as np

cdef class Player:
    cdef public name
    cdef public int age

    def __init__(self, name="DEFAULT", age=-1):
        self.name = name
        self.age = age
