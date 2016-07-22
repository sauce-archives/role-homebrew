# my_role

Role description.

## Role variables

- `var`: Description.

...

## Example playbook

```
---
- hosts: all
  sudo: yes
  roles:
    - role: my_role
```

## Testing

- `brew install ruby`
- `brew cask install virtualbox vagrant`
- `gem install bundler`
- `bundle install`
- `kitchen test`

Use of RVM (or similar) to maintain gemsets is highly recommended.
