# Create dev org
sfdx force:org:create --definitionfile config/project-scratch-def.json --setalias dev --setdefaultusername
# Push all metadatas
sfdx force:source:push -f
# Assign permset
sfdx force:user:permset:assign --perm-set-name FormulaForceRaceManagementUpdateDNFStatus
sfdx force:user:permset:assign --perm-set-name FormulaForceRaceManagement
sfdx force:user:permset:assign --perm-set-name FormulaForceRaceManagementAddDriver
sfdx force:user:permset:assign --perm-set-name FormulaForceRaceAnalytics
# Export Custom Metadata
sfdx force:cmdt:record:insert --filepath ./data/TrackLapRecords.csv --typename TrackLapRecord__mdt
# Export sample data
sfdx data import tree -p ./data/Data-plan.json