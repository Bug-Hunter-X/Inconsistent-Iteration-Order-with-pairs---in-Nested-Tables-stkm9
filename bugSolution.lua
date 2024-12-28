local function foo(t, sortedKeys)
  local keys = {} 
  for k,_ in pairs(t) do table.insert(keys,k) end
  table.sort(keys)
  for _,k in ipairs(keys) do
    local v = t[k]
    if type(v) == "table" then
      foo(v, sortedKeys)
    end
  end
end

local t = { a = 1, b = { c = 2, d = { e = 3 } } }
foo(t) 