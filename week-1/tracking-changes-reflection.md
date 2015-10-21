**1. How does tracking and adding changes make developers' lives easier?**

Tracking and adding changes makes developers' lives easier because it allows collaborators to easily view a history of changes, with the functionality to revert back to previous versions easily. 

**2. What is a commit?**

A commit is a "saved" version of a file / branch that contains a set of changes that the user has specified. 

**3. What are the best practices for commit messages?**

Best practices include:
-Using a headline, usually less than 50 characters
-Using bullets for more detailed descriptions
-Using the present tense - representing what happens if the commit is merge, rather than what was done

**4. What does the HEAD^ argument mean?**

HEAD^ represents the previous commit, whereas HEAD alone means the current commit. It's used to revert back to previous commits. 

**5. What are the 3 stages of a git change and how do you move a file from one stage to the other?**

1. Editing:  Here is where changes are made in a seprate branch. To move to the next stage, the user must be done with their commits. 
2. Pushing changes:  Here, the branch is pushed up to Github. Moving a file to the next stage requires pushing the file back to Github. Substeps include merging the master to the working branch (if there are changes), then pushing the branch up to Github. This is completed when the final push has been completed. 
3. Pull request:  Merging the branch. The previous step initiates a pull request, which is managed on the Github.com website, where a user must compare the changes, confirm the merge into master, and then finally delete the branch after it's merged. 

**6. Write a handy cheatsheet of the commands you need to commit your changes?**

-git pull origin master
-git checkout -b newbranchname
-git checkout branchtoswitchtowhenswtiching
-git status
-git add .
-git commit -m "message here"
-git push origin newbranch
-git branch -d branchtobedeleted

**7. What is a pull request and how do you create and merge one?**

A pull request includes
-Sending the branch back up remotely to Github
-Another user usually (or in this case me) verifying the changes and comparing them
-Confirming the merge into master

The pull request is a request to update and merge into master. 

**8. Why are pull requests preferred when working with teams?**

It appears to create a step for code review, and ensure that the branch being worked on isn't affecting the master branch, which is great for version control, preventing errors, and parallel workstreams in collaboration. 