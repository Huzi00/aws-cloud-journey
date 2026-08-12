# 🚀 60-Day AWS Cloud Engineering Journey

Documenting my 60-day intensive pathway from core fundamentals to production-grade Cloud Architecture.

---

## 📌 Day 01 — Account Security & IAM Architecture

### Key Objectives
* Enforced **Root Account Security** via Multi-Factor Authentication (MFA).
* Applied the **Principle of Least Privilege (PoLP)** by creating dedicated administrative and restricted access roles.
* Configured local machine access via **AWS CLI** using IAM security credentials.
* Set up budget alarms to enforce cost controls.

### Hands-on Lab & Validation
1. Created an `admin` IAM user with `AdministratorAccess` and console/CLI programmatic access.
2. Created a restricted IAM user (`readonly-test`) with `ReadOnlyAccess`.
3. Tested permission boundaries by attempting to launch an EC2 instance (`aws ec2 run-instances`) under the `readonly-test` identity.
4. **Result:** Verified proper authorization failure: `UnauthorizedOperation` / *"You are not authorized to perform this operation."*

---

## 📚 Key Technical Takeaways

* **Root Identity vs. IAM Users:** The Root user retains unrestricted permissions and must never be used for daily tasks. Day-to-day work belongs to scoped IAM identities.
* **IAM Core Mechanics:**
  * **Users:** Persistent identities assigned to individual people or services.
  * **Groups:** Collections of users mapped to shared permission sets.
  * **Roles:** Temporary credentials assumed by authorized entities without hardcoding static keys.
  * **Policies:** JSON documents defining explicit `Allow` or `Deny` rules over resources.

---

## 📌 Day 02 — Linux & Command Line Foundations

### Key Objectives
* Mastered Linux filesystem navigation, file operations, and stream filtering (`grep`, `cat`, redirection operators).
* Configured file execution permissions using `chmod`.
* Developed a custom Bash script (`env_check.sh`) to automate workstation environment audits and identity checks.

### Practical Output
* Script execution verified AWS CLI and Git presence while printing current IAM caller identity ARN.

---

## 📌 Day 03 — Advanced Git & Version Control Workflows

### Key Objectives
* Practiced production-grade Git branching strategy using dedicated feature branches (`feature/day-03-git`).
* Mastered local snapshot management across working directory, staging area, and local commits.
* Completed clean branch merging into `main` and branch lifecycle cleanup (`git branch -d`).

### Practical Output
* Structured Day 03 version control documentation created on an isolated branch and merged cleanly into production history.

---

## 📌 Day 04 — AWS S3 Foundations & CLI Management

### Key Objectives
* Mastered Amazon S3 core architecture: Global naming namespaces, buckets, keys, and object metadata.
* Provisioned and configured S3 storage buckets programmatically using the AWS CLI.
* Performed object lifecycle management (`cp`, `sync`, `ls`, and `rm`) from the command line.

### Practical Output
* Created a globally unique S3 bucket and programmatically synced local data directories to AWS cloud storage.