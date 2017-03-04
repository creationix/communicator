return {
  name = "creationix/communicator",
  version = "0.0.1",
  description = "Web app to facilite ad-hoc cconversations",
  tags = { "websocket", "chat", "wiki", "social" },
  license = "MIT",
  author = { name = "Tim Caswell", email = "tim@creationix.com" },
  homepage = "https://github.com/creationix/communicator",
  dependencies = {
    "creationix/weblit-app@3",
    "creationix/weblit-websocket@3",
    "creationix/redis-client@3",
  },
  files = {
    "**.lua",
    "!test*"
  }
}
