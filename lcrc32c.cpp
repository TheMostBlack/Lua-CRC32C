extern "C" {
#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>
}

#include <crc32c/crc32c.h>

static int lua_crc32c_calculate(lua_State *L) {
    const char *data = luaL_checkstring(L, 1);

    uint32_t crc = crc32c::Crc32c(data, strlen(data));

    lua_pushinteger(L, crc);

    return 1;
}

static const struct luaL_Reg crc32c_function[] = {
    {"calc", lua_crc32c_calculate},
    {NULL, NULL}
};

extern "C" int luaopen_lcrc32c(lua_State *L) {
    luaL_newlib(L, crc32c_function);
    return 1;
}
