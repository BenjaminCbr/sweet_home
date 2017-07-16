# Purpose

Project about real estate for private customers

# Setup

Ruby version: 2.4.0

## Ubuntu

### Rbenv

  Install rbenv.

  NB: on Ubuntu, you might need to install an additional package `sudo apt-get install -y libreadline-dev`)

### Install Redis

   Install Redis

### Install Postgresl

Install PostgreSQL:

  - Install postgresql on your system
  For Ubuntu =>
  ```bash
    sudo apt-get install postgresql postgresl-contrib libpq-dev
  ```
  - Need to create a role in postgresql
  ```postgresql
    create role sweet_home_user with createdb login password 'password'
  ```
  - Ubuntu config  => the method for authentification needs to be changed from `peer` to `md5`. See
  (https://stackoverflow.com/questions/18664074/getting-error-peer-authentication-failed-for-user-postgres-when-trying-to-ge)

### Install bundler

Install bundler => `bundle install`

You also need to install an environment for executing Javascript (asset pipeline
compilation). We  use node.js => `sudo apt-get install node.js`


### Install nvm && NodeJS

Check this out => https://www.liquidweb.com/kb/how-to-install-nvm-node-version-manager-for-node-js-on-ubuntu-12-04-lts/

Then you need to install a recent version of node and use it

```bash
nvm ls-remote # lists available versions for node
nvm install <version_number>
nvm alias default
```

Not sure this is relevant anymore
```bash
curl https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash
sudo apt-get install nodejs
sudo apt-get install npm
```

### Install yarn

yarn is a package manager for Frontend library. Necessary in order to install Redux.

To do so, you need:

- to configure the repository that contains yarn
(see https://stackoverflow.com/questions/42606941/install-yarn-ubuntu-16-04-linux-mint-18-1)

```bash
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
```
