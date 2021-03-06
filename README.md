# pas_setup
Setup instructions for Program Analysis Project!

<!-- TABLE OF CONTENTS -->
## Table of Contents
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li><a href="#new-member-onboarding">New Member Onboarding</a></li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#github-set-up">Github Set Up</a></li>
        <li><a href="#server-set-up">Server Set Up</a></li>
        <li><a href="#ssh-set-up">SSH Set Up</a></li>
        <li><a href="#subteam-set-up">Subteam Set Up</a></li>
        <li><a href="#basic-command-for-git">Basic command for git</a></li>
      </ul>
    </li>
    <li><a href="#how-to-do-presentation">How to do presentation</a></li>
    <li><a href="#acknowledgement">Acknowledgement</a></li>
  </ol>
</details>

## About The Project
Program Analysis aims to build a system that can do more program analysis instead of a simple grading system. Currently, there are a lot of platforms for grading systems but none of them provide features like memory issue checking, error message suggestions and so on features. Also, we plan to impelement an easier way for user to custom their own test cases.

Our current team is made up of backend, frontend and testing subteams. Frontend is in charge of the UI design for submission and login pages. Backend is responsible for the establishment of database and grading. Testing team is responsible for using pytest to test the design. Our semester goal to make a fully functional grading system. Our next step is to try to implement those features to analyze programs.

<!-- New Member Onboarding -->
## New Member Onboarding
Check and make sure you do all the thing! 

- [ ] Be added to program analysis slack channel
- [ ] Contact your subteam leader and be added to discord server
- [ ] Finish the set up in Getting Started Section
- [ ] Check in every week with your team/alone to report your progress/plan/issue
- [ ] Attend your subteam meeting

## Getting Started
### Github Set Up
* Access to the repository 
  - Send team leader your github name
  - Wait to be added to the github
### Server Set Up
* For group member 
  - Set up an ssh key pair on your own computer and the ECE Grid.
      1. Run `ssh-keygen` in Powershell on Windows, or any terminal on a Unix based system.
      2. Type `cat ~/.ssh/id_rsa.pub`, then copy the entire output (everything including `ssh-rsa` and `***@hostname`) to your \
         clipboard and email to the system administrator.
      3. Once the administrator adds your account, try loging in with `username@precipice.ecn.purdue.edu`
      4. Once logged in, if you have not been prompted to update your password, run `passwd` and set your password.
* For server manger
  - Adding a new user to Precipice.
      1. run `sudo useradd -m [username]`
      2. Ask new user to provide their public key to you
      3. From the servadmin folder in this repository, run: \
        `sudo ./addKey.sh [username] "<paste user key here>"` \
        `echo "[username]" | sudo ./resetPasswd.sh`      
      4. Inform user that they may now log in to the system with instructions above.
   - Giving sudo privileges to a user.(**Only if this user is leader or server manger**) \
     `sudo usermod -aG sudo [username]`
   - Check current root user \
     `cat /etc/group | grep sudo`
   - Command to change privilege 
      1. Change to root(set password first if you do not have one) \
        `sudo -s` \
        You should see you become root because $ will change to #
      2. To get out of root do `CTRL + D` or `command + D`
  
### SSH Set Up
* Use Visual Studio Code to assess the sever(Recommended)
  - Click the Extension icon(or `Ctrl + Shift + X`) on the left bar of your visual studio code.
  - Serach 'ssh' on the serach box
  - Click the first extension (Remote - SSH) and hit install
  - After installation, you should see a new icon pops above Extension called **Remote Explorer**
  - Hit that icon and find the **+** icon under **ssh target** (Add new)
  - On the pop prompt enter `ssh username@precipice.ecn.purdue.edu` where username is your name sent to the server manager (purdue login by default)
  - Press enter and it will save automatically in your config file
  - Now you should see a computer icon pops under your **ssh target** with name `precipice.ecn.purdue.edu`
  - **Move your cursor around that computer icon** and hit the icon on the right called 'Open on SSH Host in New window'
  - Now you are all set! In the new window, you can click on **Open Folder** in the file explorer to open the folder you needed.
* Directly access through your terminal
  - Type the following command in your terminal(powershell for windows) where username is your name sent to the server manager (purdue login by default)\
  `ssh username@precipice.ecn.purdue.edu`  
  - If you log in successfully, you should be able to see the left of your terminal becomes `username@precipice:~$`\
  Now you are all set!

### Subteam Set Up
* If you are in frontend team
  - Please Read Instrction on:\
    https://github.com/PurdueCAM2Project/pas_frontend/blob/main/README.md
  - Read the dijango document:\
    https://docs.djangoproject.com/en/3.2/
* If you are in backend team
  - Please Read Instrction on:\
    https://github.com/PurdueCAM2Project/pas_backend/blob/main/README.md
  - Have good knowledge of regular expression
  - Have good knowledge of python class
* If you are in Testing team 
  - Please read the ReadMe of team you are responsible for testing

## Basic command for git
- Clone + Add + Commit + Push
  1. `git clone + HTTPS link on repository` : clone the repository to the local (Only need once)
  2. `git add [filename]` : command use to add files to commit
  3. `git commit -m "message here"` : command to commit the added file
  4. `git push` : Push the file been committed
  5. `git pull` : To get the update in remote repo

- Regarding Branches
  1. `git checkout -b [branchname]` : Create a branch and switch to that branch
  2. `git branch` : Check the branches, you should see a * before the branch you are currently at
  3. Do `git add` and `git commit` as before
  4. Use `git push origin [branchname]` to create a branch in the repo and push the changes to the branches in the remote repo
  5. Create pull request: Go to github webpage, you should see something like `Compare and merge branches` instantly after you push. Write down more comments and wait for others to merge the branches.
  6. Delete the branches once it has been merged
- Tips
  1. Merge at least once per two weeks. Otherwise your branch is lag far behind main branch and may cause conflict when you try to merge it thousands years later.
  2. NOT be afraid that you will ruin the repository, git and branches exists because we can always get former version and prevent merge if it is dangerous ????
  3. Do NOT push so many large file unnecessary(like large library - you can write the library required in requirements.txt and people can download it by themselves on their own computer) 
  4. Continue 3. Use .gitignore  to ignore some kind of file to be push (for example, you don't have to push BubbleSort.o which is the executable file generated by BubbleSort.c) 

## How to do presentation
* Be short and concise 
* Demo/Illustration are better than words
* **State the issue clearly rather than simply say "It does not work"**
  - Leaders should pay attention to this and ask that member why it does not work
  - Leaders should also monior all the members' task, make sure they are not misunderstand and wasting time doing useless stuff

## Acknowledgement
* Shan Huang (Spring 2021, Summer 2021 Leader) - huan1372@purdue.edu
* Jonathan Doorn (Spring 2021 Co-Leader) - jdoorn@purdue.edu
