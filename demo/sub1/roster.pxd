from player cimport Player


cdef class Roster:
    cdef:
        public str location
        public list players
        public Player cur_player


