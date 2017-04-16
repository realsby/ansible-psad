ansible-psad
=========

This role installs psad from a git repository. The Port Scan Attack Detector
`psad` is a lightweight system daemon written in is designed to work with Linux
iptables/ip6tables/ipset/firewalld firewalling code to detect suspicious
traffic such as port scans and sweeps, backdoors, botnet command and control
communications, and more.

Requirements
------------

None.

Role Variables
--------------

There are many variables that are read from the defaults and/or the global
scope (ie.  hostvars, group vars, etc.), none are a prerequiste. Most are
configuration variables for `psad`. Please refer to the defaults file for
a full list of tunables. Others that are of important note are:

* `psad_github_org` (string) - Git source user/organization name.

Dependencies
------------

None.

Example Playbook
----------------

```yaml
---
- hosts: all
  pre_tasks:
  - name: Install firewalld dependency
    apt:
      name: firewalld
      state: present
  roles:
    # name of role to test
    - role: ansible-psad
      psad_github_org: "hurricanehrndz"
      psad_github_version: "ft_ipset"
```

License
-------

MIT

Author Information
------------------

* [Carlos Hernandez](https://github.com/hurricanehrndz) | [e-mail](mailto:carlos@techbyte.ca) | [Twitter](https://twitter.com/hurricanehrndz)
