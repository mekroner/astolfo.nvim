
if vim.g.astolfo == true then
    package.loaded["astolfo"] = nil
    package.loaded["astolfo.util"] = nil
    package.loaded["astolfo.theme"] = nil
end


local astolfo = require("astolfo")
astolfo.load(false)
