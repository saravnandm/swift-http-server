import PerfectHTTP
import PerfectHTTPServer
 
// Register your own routes and handlers
var routes = Routes()
routes.add(method: .get, uri: "/") {
    request, response in
    response.setHeader(.contentType, value: "text/html")
    response.appendBody(string: "<html><title>Swift HttpServer</title><body>My first Swift Http Server</body></html>")
        .completed()
}
 
do {
    // Launch the HTTP server.
    try HTTPServer.launch(
        .server(name: "www.myserver.in", port: 8081, routes: routes))
} catch {
    fatalError("\(error)") // fatal error launching one of the servers
}
