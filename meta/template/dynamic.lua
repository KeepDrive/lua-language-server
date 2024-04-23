---#if not MS then DISABLE() end
---@meta dynamic

---#DES 'dynamic'
---@class dynamiclib
dynamic = {}

---@alias expression_object userdata

---#DES 'dynamic.eval'
---@param expr string | expression_object
---@return any
function dynamic.eval(expr) end

---#DES 'dynamic.prepare'
---@param expr string
---@return expression_object
function dynamic.prepare(expr) end

return dynamic
