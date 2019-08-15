using Pkg
pkg"activate ."

using HTTP, Gumbo, Sockets

const POSTS_URL = "https://blog.shifudao.com/posts.html"
const BODY = 2
const CONTAINER = 1
const POSTS = 3
const RAND_NUM = 5

function rand_links(req)
    try
        r = HTTP.request("GET", POSTS_URL)
        if r.status == 200 
            body = String(r.body)
            dom = parsehtml(body)
            """<ul class="posts"> """ * join(["$elm" for elm in rand(children(dom.root[BODY][CONTAINER][POSTS]), RAND_NUM)]) * "</ul>"
        else
            ""
        end
    catch
        ""
    end
end

const PORT = 8080

function api_server()
    router = HTTP.Router()
    HTTP.@register(router, "GET", "/", rand_links)
    HTTP.serve(router, Sockets.localhost, PORT, verbose = true)
end

api_server()
