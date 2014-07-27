# Streetlights API

The backend API that will power the Streetlights application.

Application created by Matthew Piccolella and Sahir Jaggi.

## Installation

First, make sure you have the most recent versions of Vagrant and Virtualbox installed. Then:

``` bash
  $ git clone https://github.com/mjp2220/StreetlightsAPI.git
  $ cd StreetlightsAPI
  $ vagrant up
  $ vagrant ssh
  $ deployment/install.sh
  $ npm install -g app/
```

If you encounter an error saying that `npm` cannot find `/usr/bin/node`, run the following command:

``` bash
  $ sudo ln -s /usr/bin/nodejs /usr/bin/node
```

To start the server running in the background with automatic updates, run this:

``` bash
  $ forever start -e app/error.log -w app/web.js 
```

This will also log errors and access to the `app/` directory.
