
# 🚀 Infrastructure as Code with Terraform: Dockerized Node.js App

This project demonstrates the use of **Terraform** to provision a local **Docker** container running a **Node.js** application. It aligns with **Task 3** of the Elevate Labs internship program, focusing on Infrastructure as Code (IaC) principles.

---

## 📌 Objective

To provision a local Docker container using Terraform, encapsulating a Node.js application.

---

## 🧰 Tools & Technologies

- **Terraform**: Infrastructure as Code tool
- **Docker**: Containerization platform
- **Node.js**: JavaScript runtime environment

---

## 📁 Project Structure

```
├── Dockerfile
├── index.js
├── package.json
├── main.tf
├── terraform.tfstate
├── terraform.tfstate.backup
└── screenshots/
```

---

## 📝 Steps Implemented

1. **Node.js Application Setup**
   - Created `index.js` and `package.json` to define the Node.js application.

2. **Dockerfile Creation**
   - Wrote a `Dockerfile` to containerize the Node.js application.

3. **Terraform Configuration**
   - Developed `main.tf` to define Docker provider and resources:
     - Pulled the Node.js base image.
     - Built a custom Docker image for the application.
     - Provisioned a Docker container exposing port 3000.

4. **Terraform Initialization**
   - Ran `terraform init` to initialize the working directory.

5. **Execution Plan**
   - Executed `terraform plan` to preview the actions Terraform would take.

6. **Infrastructure Provisioning**
   - Applied the configuration with `terraform apply` to build and run the Docker container.

7. **Verification**
   - Confirmed the container was running using `docker ps`.
   - Accessed the application via `http://your-public-ip:80`.

8. **State Inspection**
   - Used `terraform state list` to view managed resources.

9. **Infrastructure Teardown**
   - Destroyed the provisioned infrastructure with `terraform destroy`.

---

## 📸 Screenshots

Screenshots demonstrating each step are available in the `screenshots/` directory of this repository.

---

## 📂 Deliverables

- `main.tf`: Terraform configuration file.
- `Dockerfile`: Defines the Docker image for the Node.js app.
- `index.js` & `package.json`: Node.js application files.
- `terraform.tfstate` & `terraform.tfstate.backup`: Terraform state files.
- `screenshots/`: Visual documentation of the provisioning process.

---

## 🧠 Learnings

- Gained hands-on experience with Terraform's Docker provider.
- Understood the workflow of provisioning Docker containers using Terraform.
- Reinforced the principles of Infrastructure as Code (IaC).

---

## 📌 Note

Ensure Docker is installed and running on your local machine before executing the Terraform scripts.

---

Feel free to clone this repository and experiment with the configurations to deepen your understanding of Terraform and Docker integration.
