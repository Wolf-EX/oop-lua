local componentList = require "components"

local entityClass = {
  
  name = "undefined",
  
  components = {},
  
  addComponent = function(self, c)
    for k, v in pairs(componentList) do
      if k == c then
        for k, v in pairs(componentList[c].Class) do
          self[k] = v
        end
        self.components[k] = v.Functions
        return true
      end
    end
    return false
  end
}

local entityConstructer = {__call = function(table, key)
    obj = {}
    setmetatable(key or obj, {__index = entityClass})
    return key or obj
end}

setmetatable(entityClass, entityConstructer)

return entityClass
