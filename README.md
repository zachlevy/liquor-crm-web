# Liquor CRM Web
Uses Sinatra, AngularJS, and Sprockets

### Running
```
$ rackup
```

### LiveReload via Guard
There's a guard task included that you can run in a seperate or background shell which will auto-reload your browser whenver you change a file. You'll need to install a [LiveReload browser extension](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei?hl=en).
```
$ guard
```

### Deploying Assets
Depending on how you're deploying your app, you will probably want to precompile your assets locally.

Assets can be precompiled into the public directory via rake task:
```
$ rake assets:precompile
```

Assets can be cleaned (removed) from the public directory via rake task:

```
$rake assets:clean
```
