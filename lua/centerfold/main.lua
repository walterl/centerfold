local _2afile_2a = "fnl/centerfold/main.fnl"
local _2amodule_name_2a = "centerfold.main"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local nvim = require("centerfold.aniseed.nvim")
do end (_2amodule_locals_2a)["nvim"] = nvim
local function viml__3elua(m, f, opts)
  return ("lua require('" .. m .. "')['" .. f .. "'](" .. ((opts and opts.args) or "") .. ")")
end
_2amodule_2a["viml->lua"] = viml__3elua
local function center_last_visual()
  local _let_1_ = nvim.fn.getpos("'<")
  local _ = _let_1_[1]
  local start_line = _let_1_[2]
  local _0 = _let_1_[3]
  local _1 = _let_1_[4]
  local _let_2_ = nvim.fn.getpos("'>")
  local _2 = _let_2_[1]
  local end_line = _let_2_[2]
  local _3 = _let_2_[3]
  local _4 = _let_2_[4]
  local midway_line = math.floor(((start_line + end_line) / 2))
  nvim.fn.setpos(".", {0, midway_line, 1, 0})
  nvim.ex.normal("zO")
  nvim.ex.normal("zz")
  return nvim.ex.normal("^")
end
_2amodule_2a["center-last-visual"] = center_last_visual
local function init()
  return nvim.ex.command_("-nargs=? -range CenterFold", viml__3elua("centerfold.main", "center-last-visual", {}))
end
_2amodule_2a["init"] = init
return _2amodule_2a