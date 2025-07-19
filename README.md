
---

## ✅ Key Features

- Reusable Terraform modules  
- Environment-specific configurations (`dev`, `staging`, `prod`)  
- Jenkins pipeline with **Build with Parameters**  
- SSH access restricted by IP for better security  

---

## ⚙️ Jenkins Pipeline

Uses a parameterized pipeline to select the environment and run:

- `terraform init`
- `terraform plan`
- `terraform apply`

---

## 🧠 Challenges Solved

- Managed `.tfvars` manually (excluded via `.gitignore`)  
- Removed extra `git clone` from Jenkinsfile  
- Handled Terraform variable passing in CI/CD  

---

## 📎 GitHub Repo

🔗 [https://github.com/apurba-nag/terraform-ec2-multi-env](https://github.com/apurba-nag/terraform-ec2-multi-env)

---

## 💬 Feedback Welcome

Feel free to share suggestions or fork the project. Happy to connect and collaborate!

---

## 🔖 Tags

`#terraform` `#jenkins` `#aws` `#devops` `#iac`
