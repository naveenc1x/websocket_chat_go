
# Minimal high performs chat example for [Fiber](https://github.com/gofiber/fiber) with [Fiber WebSocket](https://github.com/gofiber/websocket)
  it uses go routines to handle all connection via 3 channels Register,Unregister,Onmessage.
it also has defer functions and mutex to prevent dead lock and system crashes.

when the program stats it will upgrade the http connection to a web socket connection and serves a static HTML

In the HTML file it will create a web socket connection with localhost and when the form is submitted sends the data to the server
In the server side when a new client req is accepted it will handle with register channel.
If the incomming msg is a text msg it will send it to the broadcast channel 
A separate go rotine will handle all the incomming go channel messages and it will also write messages into the channel 
In the HTML page when a new message is received it will create a new div and write that text to that div

**It will also send image data**
## Usage

`go run .` and visit http://localhost:8080

or e.g.

`go run . -addr=3000` and visit http://localhost:3000
