from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer


class GymProHandler(SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0")
        self.send_header("Pragma", "no-cache")
        super().end_headers()


if __name__ == "__main__":
    server = ThreadingHTTPServer(("0.0.0.0", 8190), GymProHandler)
    print("GymPro K40 Pro server running at http://localhost:8190")
    print("Keep this window open while using GymPro.")
    server.serve_forever()
