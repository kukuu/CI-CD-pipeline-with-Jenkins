
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
