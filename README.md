
# Jenkins - Building CI/CD pipeline

Steps

```
1. Log into virtual machine.

2. Enable Jenkins and Docker services

3. [alex@localhost - ] $ systemctl start jenkins

4.  Authentication dialogue box appears. Use your credentials.

5. Now you will be directed to the CLI

6. [alex@localhost - ] $ systemctl enable jenkins

7. Enter command as super user

8. [alex@localhost - ] $ sudo systemctl enable jenkins

9. Password 'required' follows

10. [ sudo ] Password for Alex required

// Executing /sbin/chkconfig  jenkins on


11. Enable Docker

12. [alex@localhost - ] $  systemctl start docker

13. Authenticate with credentials

14. Docker starts = >  [alex@localhost - ] 

15. Open Jenkins Dashboard from Applications => Firefox!

16. localhost:8080/login?from=%2F   This is Jenkins Dashboard

17. Login with credentials

i. user 

ii. password

18. Redirected to dashboard: localhost:8080

19.  READY TO CREATE THE CI/CD PIPELINE!

Will begin with jobs and their dependncies!


20. We will create 3 jobs

i. Build the project

ii. Test the project

iii. Deploy the project


21. From the dashboard, follow the follwing instructions:

i. New item

ii. Enter an item name = Job1

iii. => Freestyle project

iv. => ok

Once this is complete follow same steps in 21 and create Job2 and Job3 

22. Go to dashboard (localhost:8080) and you should see all 3 jobs created.

See fig. 2 below:
```

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-2.png)


```

23. Time to create pipeline. We will pull code from Github repository. In our example here, this
is a piece code given to  the Dev team to test. This will go into Job2. Once certified 
it will be pushed to be Job3 to be deployed

24. The URL of our github repository has to be added to the 3 jobs as upadates in the 
configuration setups.

i. => Go to Job1

ii. => Go to configure 

iii. pick 'Source Code Management' tab. Then select Git.

iv. Insert repository URL for the project from Git. Jenkins will pull the code from the repository here
and perform the iterative 3 job operations (consecutively) from there for the CI/CD pipeline.

v. Save your update.

25. Repeat step 24 for Job2 and Job3

26. Now we configure each build option so it knows what code to use to compile

27. We build the source code to get a war  file  which then becomes executable:

i. Jenkins uses Maven to get all the dependency packages needed to build the project - 
use Command for Mavin (see further below).

ii. Once Maven successfully pulls all dependencies needed to prform the test, and  build 
for the test completes successful, it is then made available for Docker to deploy.

iii. Maven doesn't only compile the code, but it validates it as well.

2. Begin from Job1

i. => 'Configure' option

ii. => 'Build' option tab

iii. In the drop down menu choose => "Add build step"

iv.  => 'Execute shell'. Two major statements we need to add to the executable command are the:
 
 a. directory of web code 'install'
 
 b. maven command

 28. See how we change the directory from the web directory to the testing directory in the command. 

 This ends Job1, 'SAVE' and 'APPLY'

 See insert below:
```
![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-3.png)

![Happy Coding](hhttps://github.com/kukuu/AGILITY/blob/master/fig-4.png)

```
29. Job2 is where we want testing to be done and copied to Docker to handle and take further to production.
From there the application will be deployed to the production server.

30. Go to: 

i. => Configure 

ii. => 'Build option' tab

ii. => Add build step

iii. => Execute shell 

iv. Add code. See insert below

v. We also build the Docker Container

vi. 'SAVE' and 'APPLY'

```

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-5.png)

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-6.png)

```
31. In Job3 we finally do a test of the system and deploy to production.

Before Job3 begins first check if any old  image files have been created in the environment,
and only then have them created. This is part of error handling that needs to be done in the code.

Repeat step 30 with its valid changes. 'SAVE' and 'APPLY'.



See in the inserted code below: 

```

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-7.png)

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-8.png)

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-9.png)


```
32. Next step is to interconnect all 3 jobs into a pipeline. Stating the sequence of the build order.

In job 1:

i. Go to => 'Configure' option

ii.  => 'Post build Actions'

iii. Select 'build other projects'

iv. In the 'project to build' field insert 'Job2'

v. 'SAVE', 'APPLY'

In Job2:

i. Repeat process of Job1, but update 'project to build' field to 'Job3'

See all 3 connected jobs after the changes below.


33. Next we will be building the pipeline. 

i. Go to the => + option

ii. Insert a view name

iii. Click => 'Build Pipeline View'

iv. Click 'Ok'

v. The pipeline should know where it should start from.

vi. Scroll down to 'Pipeline Flow', and under upstream/downstream config, and under 'Select Intial Job'
 enter 'Job1'.

vii. Click 'APPLY', and 'OK'.

See fig-11 below

```

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-10.png)


```
34. Click option 'run' to kick it starting

See fig-12 below
```


![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-11.png)

```

35. All other completed job builds and flag reports


```


![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-12-green-flag-building-maven.png)

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-14-green-flag-building-docker.png)

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-15-green-flag-report-building-docker.png.png)

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-16-yellow-flag-job-3-building.png)



```
35. Job3 sucessfully built! CI/CD pipeline is now complete
```

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-17-completing-successful-ci-cd-pipeline.png)


![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-18-Console-output.png)


```
36. Lunch the application say:


localhost:3010

REACT/REDUX/GraphQL Application 

```

https://github.com/kukuu/react-redux-graphql-express


![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-21-hosted-application.png)


![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/fig-20-hosted-graphql-server.png)

```
Happy Coding
```

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/smiley.jpeg)
