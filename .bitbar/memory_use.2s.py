#!/usr/bin/python

from operator import truediv
from subprocess import Popen, PIPE

process = Popen(['vm_stat'], stdout=PIPE)
if not process.wait() == 0: raise Exception
lines = process.stdout.read().strip().split('\n')[1:-1]
pairs = [line[:-1].split(':') for line in lines]
stats = dict((key, int(value)) for (key, value) in pairs)
keys = ['Pages free', 'Pages active', 'Pages inactive', 'Pages speculative', 'Pages wired down']
total = sum(stats[key] for key in keys)
used = total - stats['Pages free']
ratio = truediv(used, total)
print '%.2f' % ratio
