# Envoy ALS Server in Ruby

TL;DR

```
$ make

# From another tab, if you don't have envoy in your local, you can try https://getenvoy.io.
# Make sure you have the correct IP where your service log is running.
$ envoy -c config.example.yaml

# Another tab, the last one (call the envoy proxy, the listener is on port :10000):
$ curl localhost:10000

# In the first tab you will see something like:
{"identifier":{"node":{"buildVersion":"bf169f9d3c8f4c682650c5390c088a4898940913/1.11.0/clean-getenvoy-af8a2e7/RELEASE/BoringSSL"},"logName":"ok"},"httpLogs":{"logEntry":[{"commonProperties":{"downstreamRemoteAddress":{"socketAddress":{"address":"127.0.0.1","portValue":58277}},"downstreamLocalAddress":{"socketAddress":{"address":"127.0.0.1","portValue":10000}},"startTime":"2019-08-12T04:41:28.003240000Z","timeToLastRxByte":"0.000151880s","timeToFirstUpstreamTxByte":"0.040410133s","timeToLastUpstreamTxByte":"0.040427674s","timeToFirstUpstreamRxByte":"0.343800671s","timeToLastUpstreamRxByte":"0.344012068s","timeToFirstDownstreamTxByte":"0.343967255s","timeToLastDownstreamTxByte":"0.344229634s","upstreamRemoteAddress":{"socketAddress":{"address":"172.217.27.36","portValue":443}},"upstreamCluster":"service_google"},"protocolVersion":"HTTP11","request":{"requestMethod":"GET","scheme":"https","authority":"www.google.com","path":"/","userAgent":"curl/7.62.0","requestId":"89831d79-5f6c-460f-a345-1cf04d497d40","requestHeadersBytes":"186","requestHeaders":{}},"response":{"responseCode":302,"responseHeadersBytes":"432","responseBodyBytes":"327","responseHeaders":{},"responseTrailers":{},"responseCodeDetails":"via_upstream"}}]}}
```

## License

MIT
