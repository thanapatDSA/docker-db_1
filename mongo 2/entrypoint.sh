#!/bin/bash
echo "✅ Start mongo container"
mongoimport --db admin --collection events --drop --file /data/db_import/admin.events.json
mongoimport --db admin --collection events --drop --file /data/db_import/admin.car.json
echo "✅ End mongo container"