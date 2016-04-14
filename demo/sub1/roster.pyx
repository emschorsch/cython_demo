#!/usr/bin/env python
# Try 1): # from .player cimport Player  # demo/sub1/roster.pyx:2:0: 'demo/sub1/player/Player.pxd' not found
# Try 2): # from player cimport Player  # error from line 1 of player.pxd: No module named player
# Try 3): # from . cimport player  # demo/sub1/roster.pyx:5:0: 'demo/sub1.pxd' not found
# Try 4): # cimport player  # erro from line 1 of player.pxd: No module named player

cdef class Roster:
    cdef str location
    cdef public players
    # cdef public player.Player players  # this doesn't work
    # cdef public player.Player[] players # how do I declare a list of Players?
    # cdef public player.Player cur_player
    cdef public cur_player

    def __init__(self, location="DEFAULT", players=None):
        self.location = location
        self.players = players
        self.cur_player = players[0]
