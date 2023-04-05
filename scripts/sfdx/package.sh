# Create managed package
sfdx force:package:create --name "FormulaForce App" --description "FormulaForce App" --packagetype Managed --path force-app
# Release a managed package version
sfdx force:package:version:create --package "FormulaForce App" --definitionfile config/project-scratch-def.json --wait 10 --installationkeybypass --codecoverage
# Promote a managed package version
sfdx force:package:version:promote --package "FormulaForce App@0.1.0-1"
# Check package ancestry
sfdx force:package:version:displayancestry --package "FormulaForce App@0.1.0-1"