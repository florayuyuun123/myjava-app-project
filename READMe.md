##
### CICD Project with Jenkins:  

Monolithic Architecture: 
![jenkins-monolithic](https://jenkins-cicd-project.s3.amazonaws.com/project-photos/jenkins-monolithic.png)
Microservice Architecture:
![jenkins-microservice](https://jenkins-cicd-project.s3.amazonaws.com/project-photos/jenkins-microservice.png)

##
Install applications needed: 
Install git: <br>
To install git, see [git install](https://git-scm.com/downloads) 

Configure git: 
```
git config --global user.name "gitHub-User-Name"
```
```
git config --global user.email "gitHubEmail"
```
Make sure to replace the username and email mwith your gitHube username and email
##
Create an account with gitHub: 
To create an account in github, see [GitHub Account](https://github.com/) 
##

Install Docker Engine: 
To install Docker Desktop on Windows, see [Install Docker On Windows](https://docs.docker.com/desktop/install/windows-install/) 

To test whether docker is installed:
```
docker ps
```
To check docker version:
```
docker --version
```
##
Install Java on Windows: <br>
To install Java on Windows, see [Install Java On Windows](https://www.java.com/download/ie_manual.jsp) 

##
Install ubuntu on Windows: <br>
To install ubuntu on Windows, see [Install ubuntu On Windows](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#3-download-ubuntu)
##
Tools to Install:
- Jenkins 
- Tomcat 
- Docker: <br>
   - SonarQube (as a Container) 
   - Nexus (as a Container)
##
Tools Needed:
- GitHub (git) = SCMT  
- Jenkins = (CICD)
- Maven = Build/package 'Java applications' 
- Sonarqube = scan codes 
- Nexus = Backup our build artifact (optional)
- Tomcat = (to host our application)
- Docker: <br>
    - to create docker images <br>
    - to run containers 
- DockerHub = to backup our images  
##
DevOps Tools: 
- git = for versioning 
- github = manage our source code 
- maven = to build artifact 
- sonarqube = scan out built artifacts 
- nexus (optional) = store our built artifact
- tomcat = host our application (web server) 
- jenkins = CICD
- docker = create images from our built artifact 
- dockerhub = store our docker images 
- docker = run our containers 
- kubernetes = manage our containers 
- ansible = configuration and provisioning 
- terraform = provisioning 
##
App Final Name: 
  jenkins-app
##
Note: <br>
Project src-code: w3school account: (mamicah2020@gmail.com)
##

##
### CICD Jenkins Integration:

1. Jenkins GitHub Intergrations:  
- In Jenkins, Go to Dashboard and create a 'new project' (+ New Item).
- Enter 'jenkins project' name and select 'Freestyle project' and click OK.
- Under Github project/Project url, paste your 'Github Project URL'  
- Under "Source Code Management", select Git. 
- Copy the 'GitHub Repository URL' and paste on Repository URL. 
- Set your Credentials: <br> 
  - Under Credentials, select '+Add' then Jenkins. <br>
  - Leave Domain, Kind and Scope as default. <br>
  - Under username, input your jenkins username and password. <br>
  - Under ID, input your identifier. <br>
  - Input your description and select Add. <br>
- Now Under Credentials replace -none- with your credentials. 
- Under 'Branches to build' input the branch you want to build from. 
- Now 'Save' 
- Select 'Build Now'
##

2. Jenkins Maven Intergrations: <br>
Configure Maven: <br> 
- In Jenkins, Dashboard ==> Manage Jenkins ==> Tools ==> Add Maven 
- Under Name, write maven+highest-version (eg: maven3.9.6)
- Now 'Save' <br>

Build with Maven: 
- In Jenkins, Dashboard ==> Project ==> Configure ==> Build Steps 
- Add Build Step ==> Invoke-top-level Maven Targets 
- Under 'Maven Version', select your preconfigured maven version.
- Under 'Goal' write 'clean package' 
- Now 'Save'
- Select 'Build Now'
##

3. Jenkins SonarQube Intergrations: (Code Quality) <br>
On SonarQube:<br>
Generate a Token:
- Go to Administration ==> Click the dropdown on Security ==> Users
- Click under 'Token'
- Enter Name under 'Name', Chose Duration then click 'Generate' 
- Copy Token and Backup for you won't be able to see or copy it again. 

| OR | 
     
- Go to 'Account' on the top right hand corner and click 'My Account'
- Security 
- Fill the appropriate input and click 'Generate'
- Under 'Type', select 'Global Analysis Token'
- Remember to backup your token 

On GitHub: <br> 
- Go to the Build Script (pom.xml) in the GitHub Repository
- Go to 'Properties' and add/edit the following: 
```
<sonar.host.url>your-sonarqube-url</sonar.host.url>
<sonar.login>your-username</sonar.login>
<sonar.password>your-password</sonar.password>
<sonar.projectKey>your-sonarqube-token</sonar.projectKey>
<sonar.projectName>your-project-name</sonar.projectName>
```
- your-project-name: This is what will appear in SonarQube
- Commit the changes. 

On Jenkins: 
- Download and Install SonarQube Plugins: 
  - Dashboard ==> Manage Jenkins ==> Plugins
  - Available Plugins ==> SonarQube Scanner for Jenkins 
  - Select and install without restart 

- Configure SonarQube: 
  - Dashboard ==> Manage Jenkins ==> System 
  - Scroll down to SonarQube Servers and click 'Add SonarQube' 
  - Check 'Environmental Variables'
  - Input the following: 
    - Name: your-name 
    - Server URL: your server URL eg: `http://localhost:9000`
- Server authentication token: 
  - Click the +Add button below ==> Jenkins
  - Domain: leave as it is
  - Kind: Secret text 
  - Scope: leave as it is 
  - Secret: your-sonarqube-token
  - ID: your-ID (eg: jenkins-sonar-cred)
  - Description: your-Description (eg: jenkins-sonar-cred)
- Then click 'Add' 
- Server authentication token:
- Select what you just created.
- Now 'Save' 

- Run Your Job:
  - Go to Dashboard ==> yourProject ==> Configure ==> Build Steps ==> 
  - Add Build Step ==> Invoke-top-level Maven Targets
  - Under 'Maven Version', select your preconfigured maven version.
  - Under 'Goal' write 'sonar:sonar'
  - Then 'Save' 
  - Build Now    
##
4. Jenkins Nexus Integration: (Artifact Backup)
- Configure Nexus: <br>
Repositories:
  - Sign in to nexus and click 'Server administration and configuration' 
  - Open Repository ==> Create Repository ==> maven2 (hosted):
  - Name: your repository name 
  - Version policy: Mixed
  - Layout policy: Strict
  - Content Disposition: Inline
  - Blob store: default
  - Deployment policy: Allow redeploy
  - Click 'Create repository'

Users: <br> 
  - Click 'Create local user'
  - Fill out the form 
  - At the bottom under 'Roles', select nx-admin from column 1 and pushed to column 2 
  - Then click 'Create local user'

- Configure Jenkins: 
  - In Jenkins, go to Dashboard ==> Manage Jenkins ==> Plugins 
  - Available Plugins and search 'Nexus Artifact Uploader'
  - Install without restart 

  - Go to your project ==> Configure ==> Build Steps ==> Add build steps
  - Nexus artifact uploader 
  - Nexus artifact uploader
  - Nexus Details: 
    - Nexus Version: NEXUS3
    - Protocol: HTTP
    - Nexus UR: your nexus URL without the http/https: (eg: localhost:8081)
    - Credentials: use the user credentials you earlier configured in Nexus
    - GroupId: your project name - what will appear in nexus (eg: jenkins-app): 
    - Version: your version number (eg: 1.0-SNAPSHOT)
    - Repository: The repository you created in Nexus 
    - Artifacts ==> Add
      - ArtifactId: your ID. Subfolder inside your 'GroupId' (Your project name version. eg: jenkins-app-v1.0.0)
      - Type: war
      - Classifier: leave blank 
      - File: Get the complete link of your .war file on your backend. Default link could be found in: /var/lib/jenkins/ (eg: /var/lib/jenkins/workspace/your-project-name/target/jenkins-app-v1.0.0.war)
##
5. Jenkins Tomcat Integrations: <br> 
We do this intergration using a plugin call 'Deploy to Container'  
- In Jenkins go to Dashboard ==> Manage Jenkins ==> Plugins ==> 
- Available ==> Search "Deploy to container"
- Select and install without restart

- Dashboard ==> Project ==> Configure ==> Post-Build-Actions ==> 
- Add Post-Build-Action ==> 
- Deploy war/ear to container ==>
- Under 'Deploy war/ear to a container'
  - WAR/EAR files: <br>
     `target/*.war`  <br> 
     `target/your-built-artifact.war` 
  - Context path: leave blank   
                                         
- Add Container ==> Chose Tomcat Version (It should be the latest stable version):
  - Under Containers/Tomcat 9.x Remote 
  - add new credentials
  - use your tomcat credentials that you will configure in the 'tomcat-users.xml'
  - Follow the steps below to create your user in 'tomcat-users.xml'

To create your tomcat credentials: 
- On your terminal do the following: 
```
sudo nano /etc/tomcat9/tomcat-users.xml 
```
- Paste the following just above the </tomcat-users> closing.
```
<user username="tomcat" password="admin123" roles="manager-gui,admin-gui"/>     
<user username="vin" password="admin123" roles="manager-gui,admin-gui,manager-script"/> 
```
- Under Tomcat URL 
- Copy and paste your Tomcat URL
- Save 
- Build Now
##
6. Email Notification 
- In Jenkins go to Dashboard ==> Project ==> Configure ==> Post-Build-Action 
- Add Post-Build-Action ==> Email Notification ==> Emails
- Save
- Build Now 
- Note: This on sends emails when a build fails, becomes unstable or returns to stable.  
##

7. Configuring Projects in Jenkins: 
General: 
- Discard old builds: 
- Days to keep builds: you can leave blank 
- Max # of builds to keep: Chose your number (eg: 3)
- Save 

Build Triggers: 
- Chose Poll SCM 
- Schedule: <br>
     `* * * * * (* 5 times)` 
- Save 
- You can check below to see the 'cron syntax'

Build Environment: 
- Add timestamps to the Consol Output 

##
Build Triggers: 
- We use build triggers to automate the process.  
- Build Now           

- Build Periodically 
  - Jenkins uses a timer to trigger a build.<br> 
     `***** build every minute` <br>
     `H**** build every hour` Best for Database backup

- Poll SCM           
  - Jenkins trigger a build based on changes in the source codes. <br>
    (Generally Recommended) 
  - Jenkins pull the changes from GitHub. 
  - Cron Syntax: <br>
     `H/15 * * * *   # Check every 15 minutes` <br>
     `* * * * *      # Minute` <br>
     `* * * * *      # Hour` <br>
     `* * * * *      # Day of month` <br>
     `* * * * *      # Month` <br>
     `* * * * 5      # Day of week (5 is Friday, adjust as needed)`
  

- GitHub Web Hook    
  - Jenkins do a build when there is any changes in the source code <br> 
   (GitHub Account) 
  - GitHub push the changes to Jenkins.  
  - To configure = GitHub--> Project Repo--> Settings--> Webhooks-->  Add Webhook  <br>
     `Content type = (application/json)` <br>
     `Payload URL = Paste the Jenkins URL with the extension github-webhook/ ` <br>
     `(e.g. http://18.218.211.120:8080/github-webhook/)` 

##

### Jenkins Pipeline Jobs:
- Dashboard ==> + New Item ==> 
- Project Name ==> Pipeline ==> OK

Configure Pipeline Jobs: 
- Project Name ==> Configure 
- Genaral: 
  - Discard old builds: 
    - Strategy: Log Rotation 
    - Dayes to keep buiilds: (chose of leave blank for less than a day)
    - Max 3 of builds to keep: (eg: 3)

- This project is parameterized:
  - Create parameter 

- Build Triggers: 
  - Poll SCM 
  - Schedule: * * * * * (5 times with space)

Pipeline 
- Definition: 
  - Pipeline script:
##
