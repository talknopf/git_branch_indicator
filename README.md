# git_branch_indicator
This repository will provide you with a bash based tool

# Prerequasites:
  A working installation of git binary, after all this is a tool to make you git work easier. 
  
# Installation:
  1. Clone this repo to your desired location.
  2. Use your favorite editor to edit either your ~/.bashrc (on linux) or ~/.bash_profile (on mac os).
     add the following source /path/to/repo/git_branch_indicator.tool.
  3. Open a new terminal instance
  

# How will it look?
  once out change to a directory holding a git repo or part of it, your command line promt will change to the branch name.
  if the branch is "Clean" (same the origin branch) it will show the branch name in green, if local branch is "Dirty" it will
  show the branch name in red.
  
# How to remove?
  To disable:
    1. Search for the line in your .bash_profile file sourcing the tool, comment or remove it.
    2. Open a new terminal instance.
  To remove:
    1.run the disable procedure.
    2.remove the folder containing the local clone of this repo.
    
 For any requests, issues or bugs please contact me: talknopf@gmail.com
 I hope this help
 
 Credits to @ronkitay
