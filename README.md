
# Jenkins - Building CI/CD pipeline

Steps

```
1. Log into virtual machine - see fig 1

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

```

![Happy Coding](https://github.com/kukuu/AGILITY/blob/master/smiley.jpeg)

```

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
is a piece of JAVA code given to  the Dev team to test. This will go into Job2. Once certified 
it will be pushed to be Job3 to be deployed

24. The URL of our github repository has to be added to the 3 jobs as upadates in the configuration setups.

i. => Go to Job1

ii. => Go to configure 

iii. pick 'Source Code Management' tab. Then select Git.

iv. Insert repository URL for the project from Git. Jenkins will pull the code from the repository here and perform the iterative 3 job operations (consecutively) from there for the CI/CD pipeline.

v. Save your update.

25. Repeat step 24 for Job2 and Job3

26. Now we configure each build option so it knows what code to use to compile

27. We build the source code to get a war  file  which then becomes executable:

i. Jenkins uses Maven to get all the dependency packages needed to build the project - 
use Command for Mavin (see further below).

ii. Once Maven successfully pulls all dependencies needed to prform the test, and  build 
for the test completes successful, it is then made available for Docker to deploy.

iii. Maven doesn't only compile the code, but it validates it as well.


```
