git-autocommit
==============

This is an amazing small tool, which automates your usage of GIT.  On every file change it creates a commit and pushes it to your remote GIT repository. 



Prerequisites
-------------

Clone the `watchman` project from Facebook [Link](https://github.com/facebook/watchman)
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


Now start your first `git-autocommit` project
---------------------------------------------

Just define your start script, let's say we name it `start-watchman.sh`:
```bash
#!/bin/bash
watchman watch ~/projects/git-autocommit
watchman -- trigger ~/projects/git-autocommit auto-commit '*' -- ./auto-commit.sh
```

As you can see, we just use our own GitHub project `git-autocommit` to demonstrate how it works.  
With `watchman` we just start a `trigger` command, which will be fired every time a single file 
is changed within our directory structure.  That's all.

And here is the damned simple `auto-commit.sh` script:
```bash
#!/bin/bash
git add --all
git commit -am "Changed file $*, Auto-Commit V0.1"
git push
```

Now, let's start the show:
```bash
./start-watchman.sh
```


Just use it
-----------

Hey guys, that's all.  Just simply use it.
Ok, it's not completed nor perfect right now.  But I think it's a good starting point.
And once again, this GitHub project I've just created and edited while an active `watchman` was running my `auto-commit.sh` script.
On every single file save from my editor, I'm instantly getting a new commit pushed automatically to the remote GitHub repository.


Credits
-------

Thanks to this great article I found yesterday about the functions of `watchman` and how it could help to easily
automate even single tasks of a developers life.

[Watchman: Faster builds with large source trees](https://www.facebook.com/notes/facebook-engineering/watchman-faster-builds-with-large-source-trees/10151457195103920), by Wez Ferlong.



License
=======
The MIT License (MIT)

Copyright (c) 2013 Dieter Reuter

