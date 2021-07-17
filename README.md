# dotfiles
## About The Project

My minimum configuration to work from the terminal in a comfortable way, I don't know how likely your terminal is as well since I only thought it for myself

## Requirements

| Name    | Description                                                                                                                                 |
|---------|---------------------------------------------------------------------------------------------------------------------------------------------|
| git     | Git is software for tracking changes in any set of files, usually used for coordinating work among programmers collaboratively developing source code during software development. Its goals include speed, data integrity, and support for distributed, non-linear workflows (thousands of parallel branches running on different systems).                             |
| stow    | GNU Stow is a symlink farm manager which takes distinct packages of software and/or data located in separate directories on the filesystem, and makes them appear to be installed in the same place. |

## How to install?

```bash
git clone --recursive https://github.com/marcos-ro/dotfiles ~/.dotfiles && cd ~/.dotfiles && stow home
```
