# pas_setup
Setup instructions for Program Analysis Project!

<!-- TABLE OF CONTENTS -->
## Table of Contents
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#server-set-up">Server Set Up</a></li>
        <li><a href="#ssh-set-up">SSH Set Up</a></li>
        <li><a href="#subteam-set-up">Subteam Set Up</a></li>
      </ul>
    </li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

## About The Project
Program Analysis aims to build a system that can do more program analysis instead of a simple grading system. Currently, there are a lot of platforms for grading systems but none of them provide features like memory issue checking, error message suggestions and so on features. Also, we plan to impelement an easier way for user to custom their own test cases.

Our current team is made up of backend, frontend and testing subteams. Frontend is in charge of the UI design for submission and login pages. Backend is responsible for the establishment of database and grading. Testing team is responsible for using pytest to test the design. Our semester goal to make a fully functional grading system. Our next step is to try to implement those features to analyze programs.

## Getting Started
### Server Set Up
* For group member 
  - Set up an ssh key pair on your own computer and the ECE Grid.
      >  1. Run `ssh-keygen` in Powershell on Windows, or any terminal on a Unix based system.
      >  2. Type `cat ~/.ssh/id_rsa.pub`, then copy the entire output (everything including `ssh-rsa` and `***@hostname`) to your
      >     clipboard and email to the system administrator.
      >  3. Once the administrator adds your account, try loging in with `username@precipice.ecn.purdue.edu`
      >  4. Once logged in, if you have not been prompted to update your password, run `passwd` and set your password.
* For server manger
  - Adding a new user to Precipice.
      >  1. run `sudo useradd -m [username]`
      >  2. Ask new user to provide their public key to you
      >  3. From the servadmin folder in this repository, run:
      
                  sudo ./addKey.sh [username] "<paste user key here>"
                  echo "[username]" | sudo ./resetPasswd.sh
            
      >  4. Inform user that they may now log in to the system with instructions above.
   - Giving sudo privileges to a user.
      >  `sudo usermod -aG sudo [username]`
  
### SSH Set Up
* Use Visual Studio Code to assess the sever(Recommended)\
  - Click the Extension icon(or `Ctrl + Shift + X`) on the left bar of your visual studio code.
  - Serach 'ssh' on the serach box
  - Click the first extension (Remote - SSH) and hit install
  - After installation, you should see a new icon pops above Extension called Remote Explorer
  - Hit that icon and find the + icon under ssh target (Add new)
  - On the pop prompt enter `ssh username@precipice.ecn.purdue.edu` where username is your name sent to the server manager (purdue login by default)
  - Press enter and it will save automatically in your config file
  - Now you should see a computer icon pops under your ssh target with name `precipice.ecn.purdue.edu`
  - Move your cursor around that computer icon and hit the icon on the right called 'Open on SSH Host in New window'
  - Now you are all set! In the new window, you can click on Open flolder in the file explorer to open the folder you needed.
* Directly access through your terminal
  - Type the following command in your terminal(powershell for windows) where username is your name sent to the server manager (purdue login by default)\
  `ssh username@precipice.ecn.purdue.edu`  
  - If you log in successfully, you should be able to see the left of your terminal becomes `username@precipice:~$`\
  Now you are all set!
### Subteam Set Up
* If you are in frontend team
  Please Read Instrction on:
  https://github.com/PurdueCAM2Project/pas_frontend/blob/main/README.md
* If you are in backend team
  Please Read Instrction on: 
  https://github.com/PurdueCAM2Project/pas_backend/blob/main/README.md
* If you are in Testing team
  Please read the ReadMe of team you are responsible for testing
