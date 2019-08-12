# Envoy ALS Server in Ruby

TL;DR

```
$ make

# From another tab, if you don't have envoy in your local, you can try https://getenvoy.io.
# Make sure you have the correct IP where your service log is running.
$ envoy -c config.example.yaml

# Another tab, the last one (call the envoy proxy, the listener is on port :10000):
$ curl localhost:10000
```

## License

MIT
