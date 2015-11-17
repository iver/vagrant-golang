# Vagrant with golang environment

Simple golang development environment for Vagrant.

## Overview

This project aims to facilitate the use of ``golang`` avoiding Operative System dependence issues, in this way we can focus on our development rather than installation configuration issues. You should be note that it is a project aimed at beginner developer so you do not expect anything advanced.

**Tools on the box**

* [Ubuntu 14.04.3 LTS](http://releases.ubuntu.com/14.04/)
* [Golang 1.5.1](https://golang.org/dl/)
* [Vagrant](https://www.vagrantup.com/)
* [My dot files configuration](https://github.com/ivan-iver/config)

**About tools**

> **Go**, also commonly referred to as golang, is a programming language developed at Google in 2007 by [Robert Griesemer](https://en.wikipedia.org/wiki/Robert_Griesemer), [Rob Pike](https://en.wikipedia.org/wiki/Rob_Pike), and [Ken Thompson](https://en.wikipedia.org/wiki/Ken_Thompson). Designed primarily for systems programming, it is a compiled, statically typed language in the tradition of C and C++, with garbage collection, various safety features and [CSP](https://en.wikipedia.org/wiki/Communicating_sequential_processes)-style [concurrent programming](https://en.wikipedia.org/wiki/Concurrent_programming) features added.



> **Vagrant** is computer software that creates and configures virtual [development environments](1). It can be seen as a higher-level [wrapper](2) around virtualization software such as [VirtualBox](3), [VMware](4), [KVM](5) and [Linux Containers](6) (LXC), and around configuration management software such as [Ansible](7), [Chef](8), [Salt](9), and [Puppet](10).

> Source: [Wikipedia](8)
    
[1]: https://en.wikipedia.org/wiki/Development_environment_(software_development_process)
[2]: https://en.wikipedia.org/wiki/Wrapper_library
[3]: https://en.wikipedia.org/wiki/VirtualBox
[4]: https://en.wikipedia.org/wiki/VMware
[5]: https://en.wikipedia.org/wiki/Kernel-based_Virtual_Machine
[6]: https://en.wikipedia.org/wiki/Linux_Containers
[7]: https://en.wikipedia.org/wiki/Ansible_(software)
[8]: https://en.wikipedia.org/wiki/Chef_(software)
[9]: https://en.wikipedia.org/wiki/Salt_(software)
[10]: https://en.wikipedia.org/wiki/Puppet_(software)
[11]: https://en.wikipedia.org/wiki/Vagrant_(software)

**Table of Contents**

- [Requirements](#require)
- [Quickstart](#quickstart)
- [License](#license)


## <a name="require">Requirements</a>

1. You must have installed [Vagrant](http://www.vagrantup.com/downloads.html)
2. And [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## <a name="quickstart"></a>Quickstart

First at all clone our vagrant repository:

``` bash
$ git clone https://github.com/ivan-iver/vagrant_golang.git golang
```

After that you can run your vagrant machine:

```
$ cd golang/
$ vagrant up --provision
```

Then the box will be downloaded for you.

If you wish, you can learn more about it alter a [vagrant file](Vagrantfile) and its [configuration options](ConfigOptions).

## <a name="license"></a>Copyright and license

***

Copyright (c) 2015 Iván Jaimes. See [LICENSE](LICENSE) for details.

## Feedback

Feedback is more than welcome; I probably got some things wrong so please tell me about it.


[Vagrant]: http://www.vagrantup.com/
[Vagrantfile]: https://github.com/ivan-iver/vagrant_golang/blob/master/Vagrantfile
[ConfigOptions]: http://docs.vagrantup.com/v2/vagrantfile/
