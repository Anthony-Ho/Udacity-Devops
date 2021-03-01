#!/bin/bash
# The command to creat ethe policy of at least one tag from CLI + JSON definition

az policy definition create --name AtLeastOneTagPolicyDefinition --display-name "At Least One Tag Policy" --description "There must be at least one tag associated to all resource created." --mode Indexed --rules policy_rules.json
az policy assignment create --name AtLeastOneTagPolicyAssignment --display-name "At Least One Tag Policy Assignment" --policy AtLeastOneTagPolicyDefinition