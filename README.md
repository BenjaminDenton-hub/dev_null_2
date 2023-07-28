# DevNull
This is a really basic plug application that will accept any request, and
respond with the status code specified in the path. E.g.

Currently only supports PUT, GET, and POST requests, but would be very simple to support other
methods.

# DevNull - Local Dev
CURL:
```
curl -X PUT http://localhost:4000/200
```

will respond with an empty body and a status code of 200.

# DevNull - Deployed
URL:
```
https://dev-null.herokuapp.com/200
```

will respond with an empty body and a status code of 200.
