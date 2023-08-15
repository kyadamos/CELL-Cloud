# Cloud Iteration 1 Answer Key

Instructions
Please use this checklist to guide participants’ learning. Answering the questions will demonstrate their understanding of each task.
Have participants save screenshots for each task to simplify the demo, keeping in mind others would like to understand what you have done. This will also be useful to SMEs when there are questions related to a task.
For archive purposes, please complete the checklist for each participant and name the file [1stName] [LastName] SDN Checklist

## Iteration 1

Task 1 & 2 (Optional)

- What are some benefits of Cloud Computing that are driving us to embrace this solution?
  - Reduced expense
  - Scalability
  - Resource optimization
- What are some Cloud Computing concepts that seem difficult to grasp?
- What are some Cloud Apps you would be interested to work on?
Task 3
- What OpenStack services do you use to manage
  - networking (Neutron)
  - compute (Nova)
  - storage (Cinder)
  - Security (Keystone)
  - Images (Glance)
- What are some good resources you found on understanding OpenStack architecture?
Task 4
- Do a walkthrough of your install and highlight the steps that were challenging for you.
- Were the instructions satisfactory?
- If no, what can be improved? Consult with a SME and update the wiki!
- What were some of the problems you encountered and how did you resolve them?
- What were some useful commands that helped you troubleshoot?
- What is the purpose of the steps in task 4.4?
  - ONBOOT=yes. The interface will always start on boot
  - BOOTPROTO=dhcp. The interface will look for a DHCP server to obtain a dynamic IP address.
  - BOOTPROTO=static. The interface will be assigned a IP address which needs to be specified.
  - NM_CONTROLLED= no. The interface is fully configured by the /etc/sysconfig/network-scripts/ifcfg-ethX files, not the NetworkManager daemon
- Find/ post an OLE article on the NM_CONTROLLED option (when yes may be a better option)
- What is the purpose of the MASQUERADE iptable entry?
  - To allow the cloud slave nodes to communicate with external public networks. The firewall is configured for IP masquerading, which makes requests from the slave nodes (with internal IPs) appear to be from the firewall's external device
- Do a walkthrough of the Fuel UI.
- What was easy about deploying a Cloud?
- What were some roadblocks you encountered? What helped you get through it?
- Consult with a SME and update the wiki, if the documentation can be improved!
