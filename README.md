# jpackage

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What jpackage affects](#what-jpackage-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with jpackage](#beginning-with-jpackage)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)
    * [TODO](#todo)
    * [Contributing](#contributing)

## Overview

Install JPackage yum repo

## Module Description

This module is intended to be used by eyp-spacewalk, it just installs a jpackage yum repo

## Setup

### What jpackage affects

Manages **/etc/yum.repos.d/jpackage-generic.repo**

### Setup Requirements

This module requires pluginsync enabled

### Beginning with jpackage

include jpackage class

```puppet
	class { 'jpackage': }
```

or

```puppet
include ::jpackage
```

## Usage

single class module (with private classes)

## Reference

### jpackage

* **manage_repo**: manage repo (default: true)
* **repo_enabled**: enable repo (default: true)
* **repo_gpgcheck**: check GPG (default: true)

## Limitations

Tested on CentOS 6 only

## Development

We are pushing to have acceptance testing in place, so any new feature should
have some test to check both presence and absence of any feature

### TODO

Nothing so far

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
