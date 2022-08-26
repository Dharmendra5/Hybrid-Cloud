# Logicalis-DevOps-Demo
**This Repo is to showcase DevOps Work**

This Terraform Framework is divided into two Sections:
1.  Environment
2.  Modules

In this Showcase, we will be using *dev* environment only

This Showcase is based on 

![Reference_logicalis_demo](https://user-images.githubusercontent.com/22361420/186303246-3ea1e4fb-d274-4ac5-a4ba-b0b1588a0d85.png)

### Modules: ###
These are a collection of standard configuration files in a dedicated  directory. Terraform modules encapsulate groups of resources dedicated to one task, reducing the amount of code you have to develop for similar infrastructure components.

For Example: For SQL, we can write the configuration files for Resource Group, Storage Account, SQL Server and SQL Database, we could wrap everything in one module and then use/reuse it

For simplicity, I have written every module individually, so they are loosely coupled. As per our requirement, we can call the modules.

### Terraform Commands 

**terraform init**

This command is used to initialize a working directory containing Terraform configuration files. This is the first command that should be run after writing a new Terraform configuration or cloning an existing one from version control.

**terraform plan**

This command evaluates a Terraform configuration to determine the desired state of all the resources it declares, then compares that desired state to the real infrastructure objects being managed with the current working directory and workspace.

**terraform show**

This command is used to provide human-readable output from a state or plan file. This can be used to inspect a plan to ensure that the planned operations are expected, or to inspect the current state as Terraform sees it.

**terraform apply**

This command performs a plan just like terraform plan does, but then actually carries out the planned changes to each resource using the relevant infrastructure provider's API. It asks for confirmation from the user before making any changes, unless it was explicitly told to skip approval.

**terraform destroy**

This command terminates resources managed by your Terraform project. This command is the inverse of terraform apply in that it terminates all the resources specified in your Terraform state. It does not destroy resources running elsewhere that are not managed by the current Terraform project.
