# 1.1 Think About Time

**1) Which time management and productivity ideas did you learn about?**

I took a spin through most of the links, and the ones that really stuck out to me were the Pomodoro technique and the link on starting small.

I like the Pomodoro in concept because of its simplicity and use of timeboxing as a way of setting microbursts of productivity.

I like the idea of starting small, since I usually try to start big and find this one particularly applicable to me. 

 
**2) What is "Time Boxing?" How can I use it in Phase 0?**

Timeboxing, as I understand it, is setting a time limit on a specific goal and stopping work on it once that time is reached. The Pomodoro technique could be one example of this (very small timebox). Sprints, as employed by many product teams, would be a longer one. 

I think timeboxing could be particularly useful in Phase 0 for helping me get through challenges in a timely and efficient manner. In particular, because of the remote learning, there are concepts that may not stick, so taking the initiative to set limits will help chunk up the work in a way that makes it digestible and allows for breaks and reflection, which will be a good tactic for revisiting work later. 


**3) How do I manage my time currently?**

I usually wake up with a few objectives in mind for the next day or two. And make sure that I accomplish those. I try to be fluid and allow for flexibility whenever possible, so as not to impose unnecessary deadlines, but keeping a checklist does help me ensure critical items get completed. 

The other technique I employ is setting milestones for bigger goals. For example, if my goal this week is to complete all Week 1 assignments, I will break it up, just as the module has into smaller ones. As I progress through the week, I will make sure that sufficient progress is made mid-week, and later in the week, so that I give myself a realistic chance at completing the entire set of challenges. 
 

**4) Is my current strategy working?**

I think it does. Usually, really critical goals always find a way of getting completed by the due date, since I allow myself to think about what's important each day, and give myself progress checks throughout the course of the week to ensure that I'm not leaving myself with a lot of last minute to-do's. 

 

**5) Can I employ any of the strategies?**

I really think I will give the general notion of timeboxing (loosely with Pomodoro, but maybe not 25 minute increments) a more serious thought. I apply it loosely, but allowing myself to truly focus in without distraction is something I struggle a bit with, so giving myself 1 hour productivity sprints I think will really help me focus.

 

**6) What is my overall plan for Phase 0 time management?**

My plan is to use my current productivity methods (not trying to change too much), while making improvements using some of the tips here. 

In particular, because the work is already structured out with timing expectations, I hope to follow the pathway while keeping myself in check so that I do not leave too much for the end of the week. I will have a part time job during phase 0, so I know that last minute cramming will be very detrimental. I've worked with my part time employer to ensure I have some flexibility and have set expectations on my time outside of work, to make sure I can accomplish my DBC commitments. 

I will definitely try timeboxing during my DBC time as well. I sometimes struggle with more nebulous goals, especially ones that are related to self learning (I'm better in person), so I think the short bursts of productivity will be really helpful by placing confines with clear objectives. 

# 1.2 The Command Line

**1) What is a shell? What is bash?**

The shell is the way to access the commands (in any OS) -- essentially the command line. Bash appears to be the default / more specific shell type in Unix based OS (like MacOS).

**2) What was most challenging?**

I struggled a bit with the piping and env commands toward the end, at least in understanding what exactly they do. I also don't understand how different modifiers (like -rf for rm) will work, but hopefully that will become more apparent as more use cases come up. 

I think this exercise was a great intro, but it's still challenging to see how everything will get be used going forward.

**3) Was I successful in using the commands?**

I think so. Some of them still don't make 100% sense, but I took good notes and I'm sure will explore the use cases more later on.

**4) In my opinion, most useful?**

Besides "cd" (obvs!), I really liked "ls", which I think will help for orienting around what is there in a given directory. I also like "less", which sounds like it will be super useful once we're editing code directly in the terminal. 

**5) Commands**

pwd:  Print working directory --> tells me where I am

ls:  Lists all files / paths in current directory (or another specified directory)

mv:  Deceptively appears to rename, rather than move!

cd:  Takes me to a given path specified

../: When used with cd, takes me up one directory

touch:  Creates a new file

mkdir:  Make directory --> creates a new directory

less:  Shows a full screen of a given file, space to paginate, q to exit

rmdir:  Deletes a specified directory, as long as there's nothing else in it  

rm:  Deletes files, can delete a directory with things in it if specified correctly

help:  Brings up a help dialogue

# 1.3 Forking and Cloning

**1) If I were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be? Why would I fork a repository as opposed to create a new one?**

**Creating a new repo:**  To create a blank / empty repo, go to Github.com

1. Click the "+"  on the top right and select new repository
2. Name the repo
3. Choose the access settings (private or public)
4. Select a license as needed
5. Save

**Forking a repo**

1. Using an existing repository
2. Find the "fork" button near the top right
3. Select the destination (usually your own username) for where you'd like to fork the repo

**Cloning a repo**

1. On a given repo, find the HTTPS clone URL (middle / bottom right of the screen)
2. In the shell, navigate to the directory where you'd like to clone the repo using "cd"
3. Type "git clone" followed by the URL, and hit enter

**Why fork vs. create new?**

Forking to me seems like copying an existing repo with information and work already done in it. It would be used for projects with collaboration, where we'd want to work on existing code but not disrupt the master. It's like copy-paste in my mind.

Creating new is more to create an empty repo. 

 

**2) What struggles did I have setting up Git and Github? What did I learn?**

No struggles for me, the installation of git via the shell was simple, and joining Github was fairly straightforward as well.

The key learning for me here was the distinction between Git and Github, which is that one is local and one is remote, and that the remote version is a great online tool used for collaboration with larger teams.  