---#if not CYF then DISABLE() end
---@meta json

---#DES 'json'
---@class jsonlib
json = {}

---@alias NullType userdata

---#DES 'json.parse'
---@param jsonString string
---@return table
function json.parse(jsonString) end

---#DES 'json.serialize'
---@param table table
---@return string
function json.serialize(table) end

---#DES 'json.isnull'
---@param val any
---@return boolean
function json.isnull(val) end

---#DES 'json.null'
---@return NullType
function json.null() end

return json
