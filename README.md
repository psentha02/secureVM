# ☁️ Terraform Azure VM Provisioning Project

This project demonstrates how to provision a secure Ubuntu Virtual Machine on Microsoft Azure using [Terraform](https://www.terraform.io/). It includes setting up a virtual network, subnet, network interface, network security group (NSG), and VM with SSH key authentication. It's a beginner-friendly project aimed at learning Terraform while following security best practices.

---

## 🚀 Project Overview

### What This Project Does

- Provisions an Azure Resource Group
- Sets up a Virtual Network and Subnet
- Creates a Network Security Group with SSH access
- Generates and attaches a Public IP to a NIC
- Deploys an Ubuntu-based Azure VM
- Enables SSH login via a secure key pair

---

## 🛠️ Tech Stack

- [Terraform](https://www.terraform.io/)
- Azure Cloud Platform
- Ubuntu 20.04 LTS
- SSH for secure access

---

## 📁 Project Structure

```bash
terraform-azure-vm/
│
├── main.tf          # Main Terraform config file
├── variables.tf     # Input variables for customization
├── outputs.tf       # Outputs like the VM's public IP
├── terraform.tfvars # Variable values
├── .ssh/            # (Not included in repo) Your SSH keys
└── README.md        # This documentation
```

---

## ⚙️ Prerequisites

- [Terraform installed](https://developer.hashicorp.com/terraform/install)
- [Azure CLI installed](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- Azure account with permission to create resources
- SSH key pair for VM login

---

## 🔐 Environment Setup

1. **Generate SSH Keys**  
   Run the following (only once):

   ```bash
   ssh-keygen -t rsa -b 4096 -f ~/.ssh/azure_vm_key
   ```

2. **Log in to Azure**

   ```bash
   az login
   ```

3. **Export Azure Subscription Credentials**  
   Save your credentials file (e.g., `azure_credentials.json`) to `~/.azure/` and update your Terraform provider block accordingly.

---

## 🚧 How to Use

1. **Clone this repo**  
   ```bash
   git clone https://github.com/<your-username>/terraform-azure-vm.git
   cd terraform-azure-vm
   ```

2. **Initialize Terraform**

   ```bash
   terraform init
   ```

3. **Plan the Infrastructure**

   ```bash
   terraform plan
   ```

4. **Apply the Configuration**

   ```bash
   terraform apply
   ```

   Confirm with `yes`.

5. **Get the VM's Public IP**

   ```bash
   terraform output vm_public_ip
   ```

6. **SSH into the VM**

   ```bash
   ssh -i ~/.ssh/azure_vm_key azureuser@<VM_PUBLIC_IP>
   ```

---

## 🧪 Testing the VM

Once inside the VM:

- Verify OS: `lsb_release -a`
- Update system: `sudo apt update && sudo apt upgrade`
- Install utilities: `sudo apt install -y htop curl`
- Check connectivity: `ping -c 4 google.com`

---

## 🔄 Cleanup

To destroy all created resources:

```bash
terraform destroy
```

---

## 🔐 Security Tips

- Use SSH key authentication (done)
- Only allow SSH access from your IP in the NSG
- Use a firewall like UFW on the VM
- Disable root login and use a non-root user for operations

---

## 📌 Future Improvements

- Automate provisioning of monitoring/logging tools
- Parameterize admin username and image version
- Create reusable Terraform modules
- Integrate with CI/CD for cloud provisioning

---

## 🧑‍💻 Author

Created by [Your Name](https://github.com/<your-username>) — a cloud automation engineer learning Terraform and Go for DevOps and cloud infrastructure.

---

## 📜 License

MIT License
```

---

Let me know if you'd like to add badges, screenshots, or GitHub Actions for Terraform CI in the README.