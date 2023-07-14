# Iteration 2
## Table of Contents
Iteration Objectives
Task 1 - Watch the Video on OpenStack Administration
Task 2 - Horizon Access
Demo Prep
Task 3 - Working with Horizon Projects
3.1 Creating New Projects (Tenants) and Users in Openstack
3.1.1 Create New Project
3.1.2 Create a New User
3.2 Creating a New Volume in OpenStack
3.3 Creating a New Instance in OpenStack
Task 4 – Create an Image in OpenStack - Virtual Machine Image
Task 5 – Video: Openstack CLI Basics
Task 6– Multi-tenancy Concerns
Demo
Next Steps
 
 
### Iteration Objectives

Learn the fundamentals of configuring and architecting Cloud computing solutions.
Learn how to navigate the Horizon Dashboard
Learn how to configure a Cloud
Explore Multitenancy Concerns
SSH into a Virtual Machine

## Task 1 - Watch the Video on OpenStack Administration

This task provides a basic understanding of how you can configure OpenStack Cloud components. The link below will provide a video overview of configuring via the Horizon Dashboard and via the command-line commands: 
Zero to Nova Video

## Task 2 - Horizon Access

A screen shot of the dashboard is below. The tabs in the left sidebar will provide overall access to your cloud environment as administrator. In the home screen of the page is the Overview tab and will display the usage of your system. Please take some time and navigate the tabs on the left sidebar and screens to familiarize yourself with Horizon.
(Image)
Access the following tabs to complete these tasks:
System Panel tab
 
Overview | View basic reports.
Resource Usage | Use the following tabs to view the following usages: Daily Report View the daily report. Stats View the statistics of all resources.
Hypervisors | View the hypervisor summary.
Host Aggregates | View, create, and edit host aggregates. View the list of availability zones.
Instances | View, pause, resume, suspend, migrate, soft or hard reboot, and delete running instances that belong to users of some, but not all, projects. Also, view the log for an instance or access an instance through VNC.
Volumes | View, create, edit, and delete volumes and volume types.
Flavors | View, create, edit, view extra specifications for, and delete flavors. A flavor is size of an instance.
Images | View, create, edit properties for, and delete custom images.
Networks | View, create, edit properties for, and delete networks.
Routers | View, create, edit properties for, and delete routers.
System Info | Use the following tabs to view the service information: Services View a list of the services. Compute Services View a list of all Compute services. Network Agents View the network agents. Default Quotas View default quota values. Quotas are hard-coded in OpenStack Compute and define the maximum allowable size and number of resources.
Projects | View, create, assign users to, remove users from, and delete projects.
Users | View, create, enable, disable, and delete users.
A more detailed explanation of all tabs and displays and a guide can be found at {+}https://docs.openstack.org/install-guide/index.html

### Demo Prep

Start creating a document (PowerPoint, Word, OneNote, etc.) for use during your demo.
This will be used to help show the Topic Advisor how you progressed through the iteration.
Think about adding screen shots with timestamps or plan on live demos to help supplement the document and demonstrate your learnings.
Update the document as you move through the iteration.

## Task 3 - Working with Horizon Projects

### 3.1 Creating New Projects (Tenants) and Users in Openstack

#### 3.1.1 Create New Project

Navigate to Identity Panel > Projects via the tab options on the left.
![Image](https://wiki.web.att.com/download/attachments/1445603113/image2023-7-3_12-21-25.png?version=1&modificationDate=1688404886000&api=v2)
Click the Create Project button in the upper right corner.
(Image)
Under the Project Info tab, add the project name. The description is optional.
(Image) 
In the Project Members tab, you can add any members to the project you want.
Members don't have to be added now. You can always modify them via the edit projects option once the project has been created.
(Image) 
You do not need to change anything under the project group.
(Image)
Select create project
(Image)
Since they are closely related, next we will cover how to create a new user and add them to the new project.

#### 3.1.2 Create a New User

Navigate to the Users tab directly under the Projects tab we previously used to create a new project.

For any OpenStack help, you can find it here: https://docs.openstack.org
Click the Create User button in the upper right corner.
(Image) 
Once the create user screen opens, supply a name, password, role, and which project you want the user added to.
Here we're adding Bill as a member of new project, the project we created before. You could also have selected the admin role from the drop down if you wanted Bill to be able to view/modify the admin settings for the project.
Once you have finished, you should now be able to sign out and re-login as the newly created user.
(Image)
(Image)
Select create user.
Go back to projects tab, open my lab project and add click on manage members tab.
(Image)
And select the manage members tab on right side.
(Image)
add members select all. Then save.
(Image)
Sign out.
(Image)
and re-login as the newly created user.
Bill and the password you created.
(Image)
Here you log in as Bill, be assigned to new project, and have access to only the Project tab on the left. If Bill was assigned to the admin role, you would also be able to see the Admin tab.
To see these, go to the Identity→ Projects and you should see Bill is assigned to 6 Admin roles
(Image)

### 3.2 Creating a New Volume in OpenStack

Additional Instructions can be found at: {+}https://docs.openstack.org/mitaka/user-guide/dashboard_manage_volumes.html
Navigate to the Project > Compute > Volumes tab via the tab selection on the left.
(Image)
Click on the Create Volume button in the upper right. On the Create Volume page, input values for the name, size, and source. Here we can set the volume source as Image, that way we can boot an instance from volume when we create an instance.
The image is one of the prebuilt Cirros test images (but you can use Ubuntu, fedora, centOS). You may also choose to use a snapshot or another volume as a source. You may also choose no source, meaning the volume will contain no file system or partition.
(Image)
(Image)
Select create Volume.
(Image)
Once the volume is created, it will be displayed under the Volumes tab with a status available.

### 3.3 Creating a New Instance in OpenStack

Additional Instructions can be found at: {+}https://docs.openstack.org/mitaka/user-guide/dashboard_launch_instances.html
Navigate to Project > Compute > Instances in the tab menu on the left.
(Image)
Click the Launch Instance button in the upper right. A pop-up will show, and inside the Launch Instance menu, add values for the name, flavor, instance count, and boot source. The Flavor option controls the size of the instance. You can see details on the flavor selection to the right to help you choose which one to use. Here we have the boot source as a volume that was created before with the cirros image attached to it. Other options to launch the instance are directly from an image or from a snapshot.
(Image)
Go to source tab, and select up arrow to allocate.
(Image)
(Image)
Go to Flavor tab.
(Image)
And select up arrow on m1.tiny
(Image)
After filling out the details, if you have Neutron enabled with more than one possible network, you'll need to select which one(s) you want to use for the instance. Unless you are setting up a specific network configuration, it's easiest to just select the default public network shared. You select by just dragging the public box to the selected networks section. Should be auto selected for you; on older versions of Openstack, you will need to select and specify the network you using.
(Image)
Now select launch instance.
(Image)
Once the instance has been created, we can see it under the Instances tab.
(Image)
Double click on bill volume
(Image)
Selecting the instance will take you to the Instance Details screen. From here you can view the instance overview, log, and console via the tabs at the top. Clicking on the Console tab will take you to a console where you can log into the newly created instance.
Username and password is on the screen.
Cirros gocubsgo
(Image)
(Image)

## Task 4 – Create an Image in OpenStack - Virtual Machine Image

Example: Ubuntu image
This example installs an Ubuntu 18.04 (Bionic Beaver) image. To create an image for a different version of Ubuntu, follow these steps with the noted differences.
Download an Ubuntu installation ISO. Because the goal is to make the smallest possible base image, this example uses the network installation ISO. The Ubuntu 64-bit 18.04 network installation ISO is at the Ubuntu download page.
Start the installation process by using either virt-manager or virt-install as described in the previous section. If you use virt-install, do not forget to connect your VNC client to the virtual machine.
Assume that the name of your virtual machine image is ubuntu-18.04, which you need to know when you use virsh commands to manipulate the state of the image.
Open a ssh session to your VBOX VM via terminal inside your VM OR by using putty or SecureCRT ETC
(Image)
Use command sudo wget -o /var/lib/libvirt/boot/bionic-mini.iso \>  http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/current/images/netboot/mini.iso
(Image)
sudo chown libvirt-qemu:kvm /var/lib/libvirt/boot/bionic-mini.iso
(Image)
sudo qemu-img create -f qcow2 /var/lib/libvirt/images/bionic.qcow2 10G
(Image)
sudo chown libvirt-qemu:kvm /var/lib/libvirt/images/bionic.qcow2
(Image)
sudo apt install virtinst
(Image)
If you get an error {virt-install' not found, but can be installed with: sudo apt install virtinst} install the virtual kvm and follow the procedure on this website: https://linuxize.com/post/how-to-install-kvm-on-ubuntu-18-04/
If you have any issues, contact your CELL Cloud TA assigned to your group.
Creating Virtual Machines
With KVM installed on your Ubuntu desktop, let’s create the first VM. This can be done either from the command-line or using the virt-manager application.command.
(Image)
Now you need to download the Official Ubuntu images using below command
virt-install --virt-type kvm --name bionic --ram 1024 \
  --cdrom=/var/lib/libvirt/boot/bionic-mini.iso \
  --disk /var/lib/libvirt/images/bionic.qcow2,bus=virtio,size=10,format=qcow2 \
  --network network=default \
  --graphics vnc,listen=0.0.0.0 --noautoconsole \
  --os-type=linux --os-variant=ubuntu18.04
(Image)
Image is complete.
The underlying image file that you created with the qemu-img create command, such as /var/lib/libvirt/images/bionic.qcow2, is now ready for uploading to the Image service by using the openstack image create command. For more information, see the Glance User Guide. https://docs.openstack.org/glance/latest/user/index.html 
Now login into Horizon dashboard and create a flavor.
Go to Admin → Compute → click on create flavor
(Image)
Select the name of the flavor
Id auto
Vcpus 2
Ram 1924
Root disk 10
Rest fields leave default
(Image)
Select create flavor
(Image)
Now create an image.go to compute→ image
(Image)
Select create image
(Image)
Name it
(Image)
Open choose file and navigate where you download the Mini.iso
(Image)
(Image)
Select Metadata tab. And navigate to Hypervisor selection and select the VM_mode volume and create image
(Image)
And select create image
(Image)
(Image)
Hit the launch tab and create an instance
(Image)
Go to source tab, and you should see the image created. Use the up arrow to be added and use if not there.
(Image)
Go to Flavor tab and select flavor.
(Image)
Select m1.small using up arrow
(Image)
Move to network tab, and you should see the shared network already selected. If not, use the up arrow to add the network.
(Image)
And launch instance.
(Image)
And you should have an image with no errors. If you get an error, you have to go back and see if you made any errors selecting flavors etc.
(Image)
If you want to learn more about installing images with other flavors, you can follow the Openstack documentation guide on how to create images manually:
https://docs.openstack.org/image-guide/create-images-manually.html      

## Task 5 – Video: Openstack CLI Basics

The Youtube link below demonstrates how to use Openstack Command-Line tools. Although the primary focus is using the tools – glance, nova, keystone – security by credentials, and SSH are also discussed in more detail: {+}https://www.youtube.com/watch?v=GXXKpY5d8UY

## Task 6– Multi-tenancy Concerns

Here is a video to give you an overview of multi-tenancy concerns. Please click here: http://www.youtube.com/watch?v=1_GmEh-uOqY
Demo
Congratulations on completing the iteration tasks in preparation for your demo
Complete a demo with your Topic Advisor
Next Steps
Check your CELL group schedule in SharePoint
Continue collaboration with your CELL group
Be active in MS Teams
If you noticed any errors on this page, please let the CELL Program Team know by sending an email to the Technology Learning Team mailbox: g31488@att.com
Navigate to Iteration 3 and continue your CELL journey
