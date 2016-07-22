# homebrew

This installs Homebrew, the Mac OS X package manager.

Make sure to run it as a regular user that will manage packages, since homebrew does not officially support installing as root (see below for an 
example).

## Role variables

- `homebrew_packages`: A list of brew packages to install.
- `homebrew_cask`: A list of cask packages to install.

...

## Example playbook

```
---
- hosts: all
  sudo: yes
  roles:
    - role: homebrew
      homebrew_packages:
        - ruby
      homebrew_casks:
        - firefox
```

## Testing

- `brew install ruby`
- `brew cask install virtualbox vagrant`
- `gem install bundler`
- `bundle install`
- `kitchen test`

Use of RVM (or similar) to maintain gemsets is highly recommended.
