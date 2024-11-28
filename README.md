# Terraform-MultiRegion-Security-SIEM
# **J-Tele-Doctor Infrastructure Project**

## **Project Overview**
This repository contains the Terraform-based infrastructure code for the **J-Tele-Doctor** application, designed to support Tokyo Midtown Medical Center (TMMC) in its efforts to expand medical care services. The project focuses on creating a globally accessible and secure telemedicine platform that prioritizes compliance with local regulations and customer privacy.

### **Scenario**
TMMC aims to offer telemedicine services for customers who:
- Prefer remote consultations to avoid spreading illness.
- Are located abroad but require local language support.

The infrastructure must ensure:
1. Local application hosting in multiple regions.
2. Data compliance by storing syslog data and personal information strictly within Japan's borders.
3. Scalability, security, and availability in preparation for the next pandemic.

---

## **Current Stage: Work in Progress (Stage One)**

### **Goals**
1. Deploy infrastructure in the following locations:
   - **Tokyo**
   - **New York**
   - **London**
   - **Sao Paulo**
   - **Australia**
   - **Hong Kong**
   - **California**

2. Meet the following local requirements for each region:
   - Auto Scaling Group (ASG) with at least **2 Availability Zones**.
   - Minimum **1 EC2 instance** for current testing purposes.
   - Deployment to a **security zone** capable of transferring syslog data to Japan.
   - Restriction to **port 80** open to the public.

3. Observe critical limitations:
   - **Syslog data** must be stored in Japan only.
   - No **personal information** may be stored outside Japan.
   - Personal information cannot be transferred via a VPN.

---

## **Future Stages**
### **Stage Two:**
- Add **SIEM** for centralized log management.
- Deploy **WAF** (Web Application Firewall) for enhanced security.
- Implement **Amazon Cognito** for user authentication and secure login.

---

## **Work in Progress**
- [x] Multi-region infrastructure setup.
- [x] Security zone deployments for syslog compliance.
- [x] Basic ASG and EC2 instance configurations.
- [ ] SIEM server setup (Stage Two).
- [ ] WAF configuration (Stage Two).
- [ ] Cognito integration for user authentication (Stage Two).

---

Add Project Structure here
---

## **Limitations**
1. **Syslog Data Compliance:**
   - Must remain in Japan.
   - Cross-region data transfer limited to technical logs, with no personal information.
2. **Data Privacy:**
   - Personal information must never leave Japan.
   - Data transfer via VPN is not allowed.
3. **Security Constraints:**
   - Public access restricted to port 80.

---

## **Usage**
### **Prerequisites**
- AWS account with proper IAM permissions.
- Terraform version >= 1.x installed.

### **Deploy Infrastructure**
1. Clone the repository:
   ```bash
   git clone <repository_url>
   cd <repository_folder>
   ```
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Customize `variables.tf` as needed.
4. Apply the configuration:
   ```bash
   terraform apply
   ```
5. Verify infrastructure in the AWS Console.

---

## **Future Enhancements**
- Deployment of a centralized **SIEM server** in Japan.
- Integration of **WAF** for DDoS protection and traffic filtering.
- Implementation of **Cognito** for secure user authentication.

---

## **Contributions**
Feedback and contributions are welcome as this project evolves. Feel free to submit issues or pull requests.

---

## **Contact**
- **Project Lead**: Derrick Weil  
