local _0_0 = nil
do
  local name_0_ = "centerfold.main"
  local loaded_0_ = package.loaded[name_0_]
  local module_0_ = nil
  if ("table" == type(loaded_0_)) then
    module_0_ = loaded_0_
  else
    module_0_ = {}
  end
  module_0_["aniseed/module"] = name_0_
  module_0_["aniseed/locals"] = (module_0_["aniseed/locals"] or {})
  module_0_["aniseed/local-fns"] = (module_0_["aniseed/local-fns"] or {})
  package.loaded[name_0_] = module_0_
  _0_0 = module_0_
end
local function _2_(...)
  local ok_3f_0_, val_0_ = nil, nil
  local function _2_()
    return {require("math"), require("aniseed.nvim")}
  end
  ok_3f_0_, val_0_ = pcall(_2_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {require = {math = "math", nvim = "aniseed.nvim"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _1_ = _2_(...)
local math = _1_[1]
local nvim = _1_[2]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "centerfold.main"
do local _ = ({nil, _0_0, {{}, nil, nil, nil}})[2] end
local viml__3elua = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function viml__3elua0(m, f, opts)
      return ("lua require('" .. m .. "')['" .. f .. "'](" .. ((opts and opts.args) or "") .. ")")
    end
    v_0_0 = viml__3elua0
    _0_0["viml->lua"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["viml->lua"] = v_0_
  viml__3elua = v_0_
end
local center_last_visual = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function center_last_visual0(...)
      local _3_ = nvim.fn.getpos("'<")
      local _ = _3_[1]
      local start_line = _3_[2]
      local _0 = _3_[3]
      local _1 = _3_[4]
      local _4_ = nvim.fn.getpos("'>")
      local _2 = _4_[1]
      local end_line = _4_[2]
      local _3 = _4_[3]
      local _4 = _4_[4]
      local midway_line = math.floor(((start_line + end_line) / 2))
      nvim.fn.setpos(".", {0, midway_line, 1, 0})
      nvim.ex.normal("zO")
      nvim.ex.normal("zz")
      return nvim.ex.normal("^")
    end
    v_0_0 = center_last_visual0
    _0_0["center-last-visual"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["center-last-visual"] = v_0_
  center_last_visual = v_0_
end
local init = nil
do
  local v_0_ = nil
  do
    local v_0_0 = nil
    local function init0()
      return nvim.ex.command_("-nargs=? -range CenterFold", viml__3elua("centerfold.main", "center-last-visual", {}))
    end
    v_0_0 = init0
    _0_0["init"] = v_0_0
    v_0_ = v_0_0
  end
  _0_0["aniseed/locals"]["init"] = v_0_
  init = v_0_
end
return nil