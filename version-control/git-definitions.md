# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    - Version control lets you see a history of all changes made to your project and is useful if needing to rollback.
* What is a branch and why would you use one?
    - A branch is an offshoot of the repository where developers usually work on separate items or feature requests. You would use one to separate your working code from production code. 
* What is a commit? What makes a good commit message?
    - A commit is a change to any branch, and if that branch is master, it is usually a change to the entire repository. A good commit message is concise but also somewhat detailed and tries to encompass the changes. If you need to be more specific or verbose you can always use the `-v` option when executing `git commit`
* What is a merge conflict?
    - A merge conflict occurs when multiple developers have made changes to the same section of code(s) and git doesn't know which version is the correct one. You must manually help git resolve the conflict.
