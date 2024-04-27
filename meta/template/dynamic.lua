---#if not CYF then DISABLE() end
---@meta dynamic
---#SETDOC 'ms-additions'

---#DES 'dynamic'
---@class dynamiclib
dynamic = {}

---#DES 'dynamic.eval'
---@param expr string | userdata
---@return any
function dynamic.eval(expr) end

---#DES 'dynamic.prepare'
---@param expr string
---@return userdata
function dynamic.prepare(expr) end

return dynamic
