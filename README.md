# myDRE Proxy Scripts

Instructions and scripts to make a post deployment of an image with Git, R, Rstudio, Python, Anaconda and/or Miniconda easier for the user.


## Instructions for the user post deployment
- Read the Readme.txt in User Instruction folder on the desktop

** when performed by an Owner (somebody with admin priviledges), most steps are probably not even needed for all other members



## Prep steps for VM image with Notepad++, Git, R, Rstudio, Python, Anaconda and/or Miniconda

<details>
<summary>Click to expand the instructions</summary>

### Putting user instructions on public desktop
Clone or download the git, put it in:
c:\users\public\desktop

### install Notepad++
- open google chrome
- chrome: notepad-plus-plus.org
- download 64 bit
- display in folder
- Install as admin (press Run
- display in folder
- Install as admin (press Run at Smartscreen)
- Click through default stuff


### Install Git
- open google chrome
- chrome: git-scm.com
- download 64 bit
- display in folder
- Install as admin (press Run at Smartscreen)
- Click through default stuff, select the options you deem necessary


### Install R / RStudio
- google chrome
- Chrome: cloud.r-project.org
- download latest R
- download latest rtools42
- Chrome: posit.co
- download latest RStudio
- display in folder
- install as admin  (press Run at Smartscreen)
- Click through default stuff, select the options you deem necessary
- Run RStudio as admin
- Follow instructions on support.mydre.org ....no need to do the .site thing


### Python
- google chrome
- Chrome: python.org
- download latest python
- display in folder
- install as admin  (press Run at Smartscreen)
- Add python.exe to PATH
- Custom install, select the options you deem necessary
- Next
- Check: All users
- Installing packages: cmd open as admin, pip install <package>


### Anaconda
- google chrome
- Chrome: Anaconda.org
- download latest Anaconda
- display in folder
- install as admin  (press Run at Smartscreen)
- select the options you deem necessary


### Miniconda
- google chrome
- Chrome: conda.io
- download latest Miniconda
- display in folder
- install as admin  (press Run at Smartscreen)
- select the options you deem necessary


### Enable one or more of the above
- Follow the Readme.txt in User Instructions you put on public desktop


### Generalize
see: https://support.mydre.org/portal/en/kb/articles/vm-image
- Delete c:\Windows\Panther
- Go to c:\Windows\System32\Sysprep
- OOBE, Generalize, Shutdown, OK
- VM will close
- Go to user portal
- When VM is stopped (never start, it will require you to delete the VM and do all the work again)
- Press the Generalize icon
- Once completed it is available as an image (at the bottom of the list) 
- You can request ST to move it to the gallery so that it becomes available for other Workspaces


</details>