# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
  * Version control allows one to track revision history of files and protects code from being overwritten by allowing changes to be merged in
* What is a branch and why would you use one?
  * A branch is a copy of a given file that can be merged into master once it's finished. Branches are used to ensure that new files can be merge into master cautiously without overriding existing data. It also allows files to be rolled back if there is an error or problem.
  * It is best practice to do all of your work on a feature branch.
* What is a commit? What makes a good commit message?
  * A commit is essentially a "save" of a given file. Best practice is to commit files frequently in order to make sure data isn't lost and merge conflicts don't happen.
  * A good commit message states discreetly what changed since the last version or commit. It should be specific and detailed.
* What is a merge conflict?
  * A merge conflict occurs when a given file is changed by two or more people at the same time and some lines within that file are in conflict with each other. When this happens, Git has no way to determine which user changes to prioritize.