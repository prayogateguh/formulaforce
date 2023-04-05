# Create dev org
sfdx force:org:create --definitionfile config/project-scratch-def.json --setalias dev --setdefaultusername
# Assign permset
sfdx force:user:permset:assign --perm-set-name FFRaceManagementUpdateDNFStatus
sfdx force:user:permset:assign --perm-set-name FFRaceManagement
sfdx force:user:permset:assign --perm-set-name FFRaceManagementAddDriver
sfdx force:user:permset:assign --perm-set-name FFRaceAnalytics