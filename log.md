# 100 Days Of Code - Log

### Day -1: September 23, 2018 

**Today's Progress**: Just decided to do the challenge.

**Thoughts:** I have projects to do but they are large. I am working my way into new to me technologies 
and working through many different new prolems should help with this journey.

**RegExp Pattern Matching Problem**
I had a problem at work that followed me home. I have a field in a DB table that contains comments. These comments can contain the time an operation on a patient is going to take. We need to extract this time as it is the estimated time for an operation from the Doctor.

A comment field might look like:
- ++ HYSTEROSCOPY+D&C - CAT 3 - 90MINS
- OT 1 HOUR; AAN; PAC;
- CAT 3 * 30MIN * LA * ANAPHYLAXIS TO PENICILLIN, MULTIPLE ALL
- +++ +/- BIOPSY **CAT 2** (2 HRS)

I knew that Regular Expression migh help me wiht this problem but I am using SQL Server and it does not have RegularExpressions, even in SQL 2017. You can add an assembly that wraps C# functions and then write SQL Functions to expose the C# functions.

My first attempt was to solve this problem with somewhat procedural SQL. Breaking down the problem with a series of CTEs. tokenising the string and extracting just the time value and interval type. Sometimes they are not able to be tokenised separately when there is no space between them. Log story short, several hours at work and about 80 lines of SQL and I had a working but buggy solution. Many edge cases that resulted in parsing non numbers as integers and crashing the query.

OK so time to setup RegExp on my server. I used the DLL available at https://github.com/DevNambi/sql-server-regex/blob/master/install/sql-2016.md

SQL 2017 required signed or trusted assemblies so there is a bit more work to install than in these instructions but you can set the assemly as trusted but require a SHA 512 hash of the DLL.

The final SQL solultion is only one line of SQL plus devlaring two regExp patterns.

I haven't played much with Regular Expressions for many years since I used to configure virtual hosts in apache config files.

Glad to have worked throguh this problem and learnt the fundamental of regular expression patterns with mathcing patterns and look aheads.


**Link to work:** 
[Git Repo for publishing work](https://github.com/ge-hall/100DaysOfCode/new/master)
[RegExp Pattern Matching Problem] (https://github.com/ge-hall/100DaysOfCode/tree/master/RegExp)


### Day 0: September 24, 2018


**Today's Progress**: Fixed CSS, worked on canvas functionality for the app.

**Thoughts**: I really struggled with CSS, but, overall, I feel like I am slowly getting better at it. Canvas is still new for me, but I managed to figure out some basic functionality.

**Link(s) to work**: [Calculator App](http://www.example.com)


### Day 1: September 25, 2018

**Today's Progress**: I've gone through many exercises on FreeCodeCamp.

**Thoughts** I've recently started coding, and it's a great feeling when I finally solve an algorithm challenge after a lot of attempts and hours spent.

**Link(s) to work**
1. [Find the Longest Word in a String](https://www.freecodecamp.com/challenges/find-the-longest-word-in-a-string)
2. [Title Case a Sentence](https://www.freecodecamp.com/challenges/title-case-a-sentence)
