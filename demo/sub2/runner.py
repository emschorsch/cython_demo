#!/usr/bin/env python

from demo.sub1.player import Player
from demo.sub1.roster import Roster


player1 = Player(name="test", age=12)
roster1 = Roster(location="CA", players=player1)
import pdb; pdb.set_trace()  # XXX BREAKPOINT

