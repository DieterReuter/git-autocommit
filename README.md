git-autocommit
==============

This is an amazing small tool, which automates your usage of GIT.  On every file change is creates a commit and pushes it to your remote GIT repository. 



Prerequisites
=============

Clone the `watchman` project from Facebook
```bash
git clone https://github.com/facebook/watchman
```

Install `watchman`
```bash
cd watchman
make
make install
```

Test if `watchman` is correctly installed in your PATH
```bash
which watchman
```
Should return something like
```bash
/usr/local/bin/watchman
```


How to start your `git-autocommit`
==================================

Just define your start script, let's say we name it `start-watchman.sh`
```bash
#!/bin/bash
watchman -- trigger ~/projects/git-autocommit auto-commit '*' -- ./auto-commit.sh
```

