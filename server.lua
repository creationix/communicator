local weblit = require 'weblit'
local pathJoin = require('luvi').path.join

weblit.app

.use(weblit.logger)
.use(weblit.autoHeaders)
.use(weblit.etagCache)

.use(weblit.static(pathJoin(module.dir, "web")))

.websocket({
  path = "/",
  protocol = "chat",
}, function (req, read, write)
  print("Websocket connection!", req)
  for message in read do
    write(message)
  end
  write()
end)

.start()
