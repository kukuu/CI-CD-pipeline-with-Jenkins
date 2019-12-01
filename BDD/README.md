

# Summary

To facilitate the design and run modes of the automated test execution system, I would first like to clear up with the following.  Whether:

1. The system is driven by actions of the end user such as an ecommerce website or a HR system in which case BDD acts as a good medium to capture all the user actions for the engine to process.

2. Or is it driven by a third party API calls, cron jobs, data exports/imports, etc. TDD might be a better solution.
Is the System .

Judging from the context of the exercise, I will recommend BDD as Agile methodology to drive the process. I will cover a TDD Unit Tests instance as an addendum and other edge cases as an extension.

I have chosen to create epic for building a "LIVE EVENT NEWS FEEDS" feed for smart and feature phones.

## Architecture

BDD relies on the use of a very specific vocabulary to minimize miscommunication and to ensure that everyone – the business, developers, testers, analysts and managers – are not only on the same page but using the same words.
Secondly, Acceptance tests will be written using the standard agile framework of a User story. 

At the Front End Level which also serves as the final delivery point of acceptance of our design, user stories consists of:

```
1. Role

2. Feature

3. Benefit

```

Putting this into context we can have for example: 

```
"As a [role] I want [feature] so that [benefit]". 
```



### Acceptance criteria

Acceptance criteria will be written in terms of scenarios and implemented as classes: Given [initial context], when [event occurs], then [ensure some outcomes].

### Flavor

Each user story will follow the following structure

1. Title 

The story should have a clear, explicit title.

2. Narrative

i. This will  consist of a single or several clauses to be deduced from the scenarios.

ii. The event triggers the start of the scenario.

iii. Finally, it states the expected outcome, in one or more clauses.


### Tools:

1. Cucumber - As Test Framework for BDD

This is a Ruby based tool for writing BDD tests. With Cucumber, the user describes the behaviour of the system with natural language, Gherkin with some specific keywords: 

context(default given), event(action - when), outcome (then). This is expressed as: 

```
Given, When, Then, And, In order to, As a and I want to for Features

```

## The process -  Pull Cycle (rather than Push)


1. Stakeholders and Business Values stories are added to backlog

2. The Development team in SPRINT planning pulls the highest priorities stories to work  on that fit in a SPRINT.

   i. Refining epics to User Stories  to develop

   ii. Test strategy is adopted by team. Feature files are created by Dev and QA. Each will explains a feature of the system and some scenarios of different test situations. 

3. Team demonstrates completed stories as Runnable Tested Features (RTF) to StakeHolders

4. The business then pulls a collection of RTFs to release as an application or update.
 

## Dividing work amongst developers:

Allocation of work will be managed through JIRA.

Each of the 5 developers will be assigned a feature to develop. Features will be determined by grouping the numbers of expected outcomes.

The developer of a feature will be responsible for its unit tests, while a separate engineer is responsible for integration and end-to-end tests for accountability. Behavior specs will carry a teams’s agreement that unit tests will be completed separately.


## Implementation

A.

 The BDD Cycle steps:

1. Feature files -  https://github.com/kukuu/CI-CD-pipeline-with-Jenkins/tree/master/BDD/features

1. Focus on one scenario

2. Write a failing step definition

3. Write a failing example

4. Get example to pass

5. Refactor

6. Step up when example passes

7. Refactor


B.  Adding Step Definitions

As Cucumber doesn’t know how to interpret the features by itself, the next step will be to create step definitions explaining what to do when finding that step in one of the scenarios. 

In our example, we will write our step definitions in Ruby. You will need CSS Hooks (classes, IDs and attributes) which will be obtained from our view templates together with some ruby expressions to execute and complete the test.

We will also be needing the following helper libraries:

```
Capyberra – Library of  functions you can use in your step definitions

Gem

Build files for your cucumber

Gem Lock, 

Watir-webdriver gem, 

RSpec  

Gem
```


## Unit Test - TDD

 

## Deployment steps for Docker Container 

 https://github.com/kukuu/CI-CD-pipeline-with-Jenkins/blob/master/docker-deployment-steps.md


##  Building automated CI/CD pipeline with Jenkins to Production

https://github.com/kukuu/CI-CD-pipeline-with-Jenkins/blob/master/README.md


##  Test Pyramid

https://github.com/kukuu/AGILITY/blob/master/test-pyramid-coverage.jpg



E.  Useful Commands

```
$ gem install cucumber

$ rails g cucumber:install.

$ bundle exec cucumber

```


## Continuous Integration anad Continuous Deployment

For automating the builds of the  design and run systems of our testing framework as a CI/CD pipeline we would use 

1. Jenkins  

2. Selenium

3. Docker


## Author

Name: Alexander Adu-Sarkodie

LinkedIn: https://www.linkedin.com/in/alexander-adu-sarkodie-063b4b4a/

GitHub - https://github.com/kukuu?tab=repositories

