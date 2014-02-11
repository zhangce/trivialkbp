#! /bin/bash

# Configuration
DB_NAME=deepdive_kbp
DB_USER=czhang
DB_PASSWORD="Password is set via the PGPASSWORD environment variable"

cd `dirname $0`
BASE_DIR=`pwd`

psql -U $DB_USER -c "UPDATE relations t0 SET _per_title = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_title';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_parents = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_parents';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_city_of_death = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_city_of_death';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _org_founded_by = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_org_founded_by';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_spouse = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_spouse';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_cities_of_residence = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_cities_of_residence';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_member_of = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_member_of';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _org_subsidaries = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_org_subsidaries';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_countries_of_residence = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_countries_of_residence';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _org_city_of_headquarters = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_org_city_of_headquarters';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_stateorprovinces_of_residence = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_stateorprovinces_of_residence';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_city_of_birth = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_city_of_birth';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_siblings = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_siblings';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_employee_of = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_employee_of';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _org_top_members_employees = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_org_top_members_employees';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_schools_attended = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_schools_attended';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _org_parents = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_org_parents';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_children = True FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type = '_per_children';" $DB_NAME

psql -U $DB_USER -c "UPDATE relations t0 SET _per_title = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_title';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_parents = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_parents';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_city_of_death = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_city_of_death';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _org_founded_by = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_org_founded_by';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_spouse = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_spouse';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_cities_of_residence = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_cities_of_residence';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_member_of = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_member_of';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _org_subsidaries = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_org_subsidaries';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_countries_of_residence = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_countries_of_residence';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _org_city_of_headquarters = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_org_city_of_headquarters';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_stateorprovinces_of_residence = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_stateorprovinces_of_residence';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_city_of_birth = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_city_of_birth';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_siblings = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_siblings';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_employee_of = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_employee_of';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _org_top_members_employees = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_org_top_members_employees';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_schools_attended = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_schools_attended';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _org_parents = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_org_parents';" $DB_NAME
psql -U $DB_USER -c "UPDATE relations t0 SET _per_children = False FROM freebase t1 WHERE t0.mention1=t1.entity1 AND t0.mention2=t1.entity2 AND type <> '_per_children';" $DB_NAME
