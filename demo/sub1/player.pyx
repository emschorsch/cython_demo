#!/usr/bin/env python
import numpy as np


cdef class Player:

    def __init__(self, str name="DEFAULT", int age=-1):
        self.name = name
        self.age = age
