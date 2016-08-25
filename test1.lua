local p='/usr/local/share/lua/5.1/'
local m_package_path = package.path
    package.path = string.format("%s?.lua;%s?/init.lua;%s",
        p, p, m_package_path)
mongol = require "resty-mongol"
    conn = mongol() -- return a connection object
ok,err = conn:connect("172.17.0.4", 27017)
if not ok then
            print("connect failed: "..err)
        end

        local db = conn:new_db_handle ( "test" )
        col = db:get_col("test")

        r = col:find_one({name="dog"})
        print(r["name"])
