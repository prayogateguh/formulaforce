echo "0 - Connecting to DevHub"
sfdx auth:sfdxurl:store -f scripts/sfdx/devhub.txt -a DevHub >> scratch.log
sfdx force:config:set defaultdevhubusername=DevHub -g >> scratch.log

echo "1 - Creating dev org"
sfdx force:org:create -f config/project-scratch-def.json -a dev -d 1 -s -c >> scratch.log

echo "2 - Deploy application"
sfdx force:source:push --forceoverwrite --loglevel=trace >> scratch.log