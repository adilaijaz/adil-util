#!/usr/bin/python

import getopt
import random
import sys

def usage():
    print 'sample.sh <file to sample> [-p probability of sampling - default 0.1]'

def main(*argv):
    try:
        opts, args = getopt.getopt(argv[1:], "hp:", ["help", "probability="])
    except getopt.GetoptError:
        usage()
        return 2

    p=0.1
    for o, a in opts:
            if o in ("-h", "--help"):
                usage()                     
                sys.exit()                  
            elif o in ("-p", "--probability"):
                p=float(a)
            else:
                assert False, "unhandled option"

    if (len(args) != 1):
        print 'Expecting one argument for parsing out file name'
        usage();
        return 2

    path = args[0]
    print 'probability is %.2f' % p
    f=open(path, 'r')
    for line in f:
        if (random.random() < p):
            print line.strip()

if __name__ == '__main__':
    sys.exit(main(*sys.argv))
