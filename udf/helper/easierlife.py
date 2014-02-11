#! /usr/bin/env python

import fileinput
import json
import math


import zlib

import sys

import os

import cPickle as pickle

import itertools

import os

LIMIT = 10000

BASE_FOLDER, throwaway = os.path.split(os.path.realpath(__file__))
BASE_FOLDER = BASE_FOLDER + "/../../"

def log(str):
	sys.stderr.write(str.__repr__() + "\n")

def serialize(obj):
	#return zlib.compress(pickle.dumps(obj))
	return pickle.dumps(obj)

def deserialize(obj):
	#return pickle.loads(str(unicode(obj)))
	return pickle.loads(obj.encode("utf-8"))

def get_inputs():
	for line in fileinput.input():
		line = line.rstrip()
		try:
			yield json.loads(line)
		except:
			log("ERROR  :  " + line)

def dump_input(OUTFILE):
	fo = open(OUTFILE, 'w')
	for line in fileinput.input():
		fo.write(line)
	fo.close()
