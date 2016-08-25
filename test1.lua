local p='/usr/local/share/lua/5.1/'
local m_package_path = package.path
    package.path = string.format("%s?.lua;%s?/init.lua;%s",
        p, p, m_package_path)
mongol = require "resty-mongol"
    conn = mongol() -- return a connection object
