import SimpleHTTPServer
import SocketServer
import os

PORT = 8000

web_dir = os.path.join(os.path.dirname(__file__), 'xandr_docs')
os.chdir(web_dir)

SocketServer.TCPServer.allow_reuse_address = True
Handler = SimpleHTTPServer.SimpleHTTPRequestHandler
httpd = SocketServer.TCPServer(("", PORT), Handler)

print("serving at port", PORT)
httpd.serve_forever()
