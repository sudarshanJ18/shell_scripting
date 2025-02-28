# Shell Scripting for AWS & GitHub API

## Repository Overview
This repository contains shell scripts for automating AWS resource monitoring and GitHub repository management.

### Directory Structure
```
shell_scripting\aws
│── simple_aws_resource_listing.sh
│── aws_resource_monitoring.sh
│
shell_scripting\github-api
│── list-users.sh
│── list-open-issues.sh
│
shell_scripting\README.md
```

## Scripts

### AWS Scripts

#### 1. AWS Resource Listing Script
**File:** `aws/simple_aws_resource_listing.sh`

**Description:** Lists various AWS resources including:
- **S3 Buckets**
- **EC2 Instances**
- **Lambda Functions**
- **IAM Users**

**Usage:**
```bash
bash aws/simple_aws_resource_listing.sh
```

#### 2. AWS Resource Monitoring Script
**File:** `aws/aws_resource_monitoring.sh`

**Description:** Monitors AWS resources and logs their usage, including:
- Running **EC2 Instances**
- Active **Lambda Functions**
- **S3 Buckets**
- IAM Users **without MFA**

**Usage:**
```bash
bash aws/aws_resource_monitoring.sh
```

**Enhancements:**
- Can be scheduled as a cron job for periodic monitoring.
- Logs results to a file for historical tracking.
- Can be extended to send alerts via email or Slack.

---
### GitHub API Scripts

#### 1. List Users with Read Access
**File:** `github-api/list-users.sh`

**Description:** Lists users with read access to a GitHub repository.

**Usage:**
```bash
bash github-api/list-users.sh <repo_owner> <repo_name>
```
Example:
```bash
bash github-api/list-users.sh octocat Hello-World
```

#### 2. List Open Issues in a Repository
**File:** `github-api/list-open-issues.sh`

**Description:** Fetches and displays open issues for a given GitHub repository.

**Usage:**
```bash
bash github-api/list-open-issues.sh <repo_owner> <repo_name>
```
Example:
```bash
bash github-api/list-open-issues.sh octocat Hello-World
```

**Enhancements:**
- Can filter issues by labels (e.g., `bug`, `enhancement`).
- Can be modified to post issue updates via **Slack/Email**.

---
## Possible Future Enhancements
### AWS Scripts:
- List additional AWS resources (e.g., RDS, CloudFront, VPCs, EKS clusters).
- Implement automated cleanup of **unused EC2 instances**.
- Add an option to export data in **CSV/JSON format**.

### GitHub API Scripts:
- Fetch users with different permission levels (e.g., write, admin).
- Assign **reviewers to pull requests automatically**.
- Add an option to export issue data for reporting.

## Contribution
Feel free to submit pull requests to improve or add features.

## License
This repository is licensed under the MIT License.

