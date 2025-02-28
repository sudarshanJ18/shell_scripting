#!/bin/bash

# GitHub API URL
API_URL="https://api.github.com"

# GitHub username and token
USERNAME=$username
TOKEN=$token

# Repository owner and name
REPO_OWNER=$1
REPO_NAME=$2

# Function to fetch open issues
function list_open_issues {
    local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/issues?state=open"

    # Fetch open issues
    issues=$(curl -s -u "${USERNAME}:${TOKEN}" "${API_URL}/${endpoint}" | jq -r '.[] | "\(.title) - \(.html_url)"')

    # Display results
    if [[ -z "$issues" ]]; then
        echo "No open issues found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Open Issues for ${REPO_OWNER}/${REPO_NAME}:"
        echo "$issues"
    fi
}

# Main script execution
echo "Fetching open issues for ${REPO_OWNER}/${REPO_NAME}..."
list_open_issues
