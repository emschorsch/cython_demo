#!/usr/bin/env python

cdef class Roster:

    def __init__(self, str location="DEFAULT", list players=None):
        self.location = location
        self.players = players
        self.cur_player = players[0]
