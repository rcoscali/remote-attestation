#!/bin/bash

baseDir=$(dirname $0)
. $baseDir/deploy/deploy.env

echo "Application: $dbAppId"
echo "mysql -u ra_user -h localhost $raDbName -e \"UPDATE ra_reaction SET reaction_status_id = 0 WHERE 1"
mysql -u ra_user -h localhost $raDbName -e "UPDATE ra_reaction SET reaction_status_id = 0 WHERE 1"

