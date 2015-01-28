
[Fixer.io](http://fixer.io) is a free JSON API for current and historical foreign exchange rates. It relies on daily feeds published by the European Central Bank.

- - -

If you're just getting started using a minimal Linux install with no Ruby installed here are the steps to follow to get Ruby up and running:

#### To install Ruby on Debian 7 (Wheezy):

##### Install prerequisites:

``` shell
$ sudo apt-get -y install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion locales-all libxml2
```
##### Import key for RVM:

``` shell
$ command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
```

##### Install RVM:

``` shell
$ curl -L get.rvm.io | bash -s stable
```

``` shell
$ source /home/<YOUR-USERNAME>/.rvm/scripts/rvm
```

Log out and log back in to get a fresh prompt.

##### Install Ruby using RVM:

``` shell
$ rvm list known
$ rvm install ruby-2.2.0
```
#### Tested on

* Debian 7.8 (wheezy) with ruby 2.2.0
* Mac OS X Yosemite 10.10.2 with ruby 2.0.0p481