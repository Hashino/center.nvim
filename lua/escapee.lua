local Center = {}

local core   = require("escapee.core")
local state  = require("escapee.state")

function Center.setup(opts)
  state.opts = vim.tbl_deep_extend("force", state.opts, opts or {})

  if state.opts.enabled then
    core.enable()
  end

  return Center
end

return Center
