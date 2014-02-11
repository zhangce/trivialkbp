#! /bin/bash

# Configuration
DB_NAME=deepdive_kbp
DB_USER=czhang
DB_PASSWORD="Password is set via the PGPASSWORD environment variable"

cd `dirname $0`
BASE_DIR=`pwd`



#dropdb -U $DB_USER deepdive_titles

#createdb -U $DB_USER deepdive_titles

#psql -U $DB_USER -c "drop schema if exists public cascade; create schema public;" $DB_NAME
#

#psql -U $DB_USER -c "delete from relation_features;" $DB_NAME
#psql -U $DB_USER -c "delete from relations;" $DB_NAME
#


psql -U $DB_USER -c "CREATE TABLE relation_features (id bigserial primary key,              \
	                                                 mid1 text,                     \
	                                                 mid2 text,                    \
													 mention1 text,					\
													 mention2 text,					\
													 feature text);" 					$DB_NAME

psql -U $DB_USER -c "CREATE TABLE freebase (id bigserial primary key,              \
													 entity1 text,						\
													 entity2 text,							\
													 type text);" 					$DB_NAME

psql -U $DB_USER -c "CREATE TABLE relations (id bigserial primary key, \
											 mid1  text,               \
											 mid2  text,               \
											 mention1 text,					\
											 mention2 text,					\
											 _per_children  boolean,               \
											 _per_parents  boolean,               \
											 _per_city_of_death  boolean,               \
											 _org_founded_by  boolean,               \
											 _per_spouse  boolean,               \
											 _org_top_members_employees  boolean,               \
											 _per_member_of  boolean,               \
											 _org_subsidaries  boolean,               \
											 _org_parents  boolean,               \
											 _org_city_of_headquarters  boolean,               \
											 _per_siblings  boolean,               \
											 _per_city_of_birth  boolean,               \
											 _per_stateorprovinces_of_residence  boolean,               \
											 _per_employee_of  boolean,               \
											 _per_cities_of_residence  boolean,               \
											 _per_countries_of_residence  boolean,               \
											 _per_title  boolean,               \
											 _per_schools_attended  boolean);"             $DB_NAME




