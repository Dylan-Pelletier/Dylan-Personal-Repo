# Dylan-Personal-Repo
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

[My Virtual machine network topology](https://github.com/Dylan-Pelletier/Dylan-Personal-Repo/blob/main/Cloud%20virtual%20network%20topology.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the yml file may be used to install only certain pieces of it, such as Filebeat.

  [My playbook](https://github.com/Dylan-Pelletier/Dylan-Personal-Repo/blob/main/filebeat-metricbeat.yml.txt)

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name      | Function  | IP Address   | Operating System |
|-----------|-----------|--------------|------------------|
| Jump Box  | Gateway   | 20.58.180.64 | Linux            |
| Elk-Stack | ELK Stack | 20.70.10.141 | Linux            |
| Web-1     | Testing   | 10.2.0.7     | Linux            |
| Web-2     | Testing   | 10.2.0.8     | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 97.108.3.48

Machines within the network can only be accessed by the jumpbox.
- 20.58.180.64

A summary of the access policies in place can be found in the table below.

| Name    | Publicly Accessible | Allowed IP Addresses |
|---------|---------------------|----------------------|
| JumpBox | No                  | 97.108.3.48          |
| ELK     | No                  | 20.58.180.64         |
| Web-1   | No                  | 20.58.180.64         |
| Web-2   | No                  | 20.58.180.64         |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- Because we can accurately put out identical changes to each system we deploy on.

The playbook implements the following tasks:
- Downloads and installs filebeat and metricbeat deb
- Drops in configuration files and enables the system
- Starts the service

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: 10.2.0.7 & 10.2.0.8

We have installed the following Beats on these machines:
- Filebeat and Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat collects system logs whereas metricbeat collects system metrics.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the conf file to .yml.
- Update the hosts file to include the IP's of the target machines
- Run the playbook, and navigate to  http://20.70.10.141:5601/app/kibanato check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?
- the file with the yml extension is the playbook.
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- You update the hosts file to run on specific IP's.
- _Which URL do you navigate to in order to check that the ELK server is running?
- http://20.70.10.141:5601/app/kibanato 

The following screenshot displays the results of successfully installing the beats:

[Filebeat](https://github.com/Dylan-Pelletier/Dylan-Personal-Repo/blob/main/Filebeat%20kibana%20screenshot.png)
[Metricbeat](https://github.com/Dylan-Pelletier/Dylan-Personal-Repo/blob/main/Correct%20Kibana%20Metricbeat%20data.png)

