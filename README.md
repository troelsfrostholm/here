# README #

"Here" is a bash script that enables the use of bookmarks when navigating folders in the shell. 

### Installation (Linux and Mac)
1. Clone the repository with `git clone git@bitbucket.org:troelsfrostholm/here.git`

2. Source the bash script file named `here`, e.g. by adding the following line to ~/.bashrc:
`source /path/to/repository/here`

### Usage
Creating a bookmark for the current folder:

`> here [bookmark-name]`

Going to a bookmarked folder:

`> go [bookmark-name]`

Listing the path pointed to by a bookmark:

`> where [bookmark-name]`

In particular, bookmark-name can be omitted in the above commands, and the standard name 'here' will be used automatically. 

Removing a bookmark:

`> del bookmark-name`

### Tips
If bash completion is enabled, one can get a list of all bookmarks by pressing tab after typing one of the above commands. 

### Bash completion

To enable bash completion, make sure you have bash-completion installed on your system. Then make a symlink of here-completion.bash in /etc/bash_completion.d/ and re-source your ~/.bashrc or equivalent.

### Technical details

The bookmark information is saved in the plain-text file ~/.here

The above four commands are implemented as bash functions, so they will shadow any program that may already be installed, called here, go, where or del. 

### Acknowledgements
This script is my reimplementation of functionality originally thought out, programmed and used by my masters thesis supervisor Åke Nordlund. Please DON'T contact him regarding this software, as he has nothing to do with this implementation, and he is busy figuring out how our solar system was created.  

### Who do I talk to?
troelsfrostholm@gmail.com