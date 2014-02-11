#! /usr/bin/python

import json
from helper.easierlife import *

rels = {
"_per_children":0,
"_per_parents":1,
"_per_city_of_death":2,
"_org_founded_by":3,
"_per_spouse":4,
"_org_top_members_employees":5,
"_per_member_of":6,
"_org_subsidaries":7,
"_org_parents":8,
"_org_city_of_headquarters":9,
"_per_siblings":10,
"_per_city_of_birth":11,
"_per_stateorprovinces_of_residence":12,
"_per_employee_of":13,
"_per_cities_of_residence":14,
"_per_countries_of_residence":15,
"_per_title":16,
"_per_schools_attended":17
}

ct = 0
for row in get_inputs():

	rs = {}

	for k in row:
		if 'mid1' in k:
			rs['mid1'] = row[k]
		if 'mid2' in k:
			rs['mid2'] = row[k]
		if 'mention1' in k:
			rs['mention1'] = row[k]
		if 'mention2' in k:
			rs['mention2'] = row[k]

	for r in rels:
		rs[r] = None
	
	print json.dumps(rs)
