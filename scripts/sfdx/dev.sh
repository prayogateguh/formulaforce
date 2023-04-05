# Create dev org
sfdx force:org:create --definitionfile config/project-scratch-def.json --setalias dev --setdefaultusername
# Assign permset
sfdx force:user:permset:assign --perm-set-name FFRaceManagementUpdateDNFStatus
sfdx force:user:permset:assign --perm-set-name FFRaceManagement
sfdx force:user:permset:assign --perm-set-name FFRaceManagementAddDriver
sfdx force:user:permset:assign --perm-set-name FFRaceAnalytics
# Export Custom Metadata
sfdx force:cmdt:record:insert --filepath ./data/TrackLapRecords.csv --typename TrackLapRecord__mdt
# Export sample data
sfdx data import tree -p ./data/Data-plan.json