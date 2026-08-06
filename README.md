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