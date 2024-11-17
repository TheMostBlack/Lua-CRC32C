# LuaCRC32C
基于[Google CRC32C](https://github.com/google/crc32c)库的Lua绑定

### Lua 示例代码

```lua
local crc32c = require("lcrc32c")
local data = "Hello, World!"
local crc = crc32c.calc(data)
print("CRC32C:", crc)
