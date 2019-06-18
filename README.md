Team and repository tags
========================

[![Team and repository tags](https://governance.openstack.org/tc/badges/puppet-crane.svg)](https://governance.openstack.org/tc/reference/tags/index.html)

<!-- Change things from this point on -->

crane
======

#### Table of Contents

1. [Overview - What is the crane module?](#overview)
2. [Module Description - What does the module do?](#module-description)
3. [Setup - The basics of getting started with crane](#setup)
4. [Implementation - An under-the-hood peek at what the module is doing](#implementation)
5. [Limitations - OS compatibility, etc.]
6. [Development - Guide for contributing to the module](#development)
7. [Contributors - Those with commits](#contributors)
8. [Release Notes - Release notes for the project](#release-notes)
9. [Repository - The project source code repository](#repository)

Overview
--------

Crane is a lightweight docker pull API.

Module Description
------------------

The crane module is an attempt to make Puppet capable of managing the
entirety of crane.

Setup
-----

### Beginning with crane

To use the crane module's functionality you will need to declare multiple
resources.  This is not an exhaustive list of all the components needed; we
recommend you consult and understand the
[core of openstack](http://docs.openstack.org) documentation.


Implementation
--------------

### Crane

puppet-crane is a combination of Puppet manifests and ruby code to deliver
configuration and extra functionality through types and providers.

Beaker-Rspec
------------

This module has beaker-rspec tests

To run:

```shell
bundle install
bundle exec rspec spec/acceptance
```

Development
-----------

Developer documentation for the entire puppet-openstack project.

* https://docs.openstack.org/puppet-openstack-guide/latest/

Contributors
------------

* https://github.com/openstack/puppet-crane/graphs/contributors

Release Notes
-------------

* https://docs.openstack.org/releasenotes/puppet-crane

Repository
----------

* https://opendev.org/openstack/puppet-crane/
