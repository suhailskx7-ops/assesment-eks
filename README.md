EKS Assessment Project  
### by *Suhail Shaik*  

---

 Overview  
This project demonstrates a complete AWS EKS (Elastic Kubernetes Service) setup using **Terraform** and **GitHub Actions CI/CD**.  
It automates infrastructure provisioning, Kubernetes application deployment, and pipeline integration for continuous delivery.

---

⚙️ Tech Stack  
- **Terraform** – Infrastructure as Code (IaC)  
- **AWS EKS** – Kubernetes orchestration  
- **Kubernetes** – Pod, Service, and Deployment management  
- **GitHub Actions** – CI/CD automation  
- **Docker** – Containerization of the application  

---

## 📂 Project Structure  
    .
├── app/ # Application source code
├── k8s/ # Kubernetes deployment YAMLs
├── terraform/ # Terraform configuration files
└── .github/workflows/ # CI/CD pipeline definition


---

 What I Did  
- Designed and provisioned AWS infrastructure using Terraform  
- Created an EKS cluster with proper IAM roles and networking  
- Configured worker node groups for the cluster  
- Deployed application manifests to EKS via Kubernetes YAML files  
- Set up GitHub Actions workflow to automate deployment to EKS  
- Managed secrets and environment variables securely in GitHub  

---

 Deployment Steps  

### **Terraform**  
```bash
terraform init
terraform plan
terraform apply -auto-approve

Kubernetes
aws eks update-kubeconfig --region us-east-1 --name <cluster-name>
kubectl apply -f k8s/
kubectl get pods
kubectl get svc

Challenges & Learnings

Faced billing challenges due to AWS resource costs and learned to destroy resources promptly using terraform destroy.

Debugged aws-auth ConfigMap issues to allow worker node access.

Understood the importance of IAM permissions for EKS and CI/CD pipelines.

Gained hands-on experience in automating deployments with GitHub Actions.
