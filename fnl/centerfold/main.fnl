(module centerfold.main
  {require {nvim centerfold.aniseed.nvim}})

(defn viml->lua [m f opts] ; From conjure.bridge
  (.. "lua require('" m "')['" f "']("
      (or (and opts opts.args) "") ")"))

(defn center-last-visual []
  (let [[_ start-line _ _] (nvim.fn.getpos "'<")
        [_ end-line _ _]   (nvim.fn.getpos "'>")
        midway-line        (math.floor (/ (+ start-line end-line) 2))]
    (nvim.fn.setpos "." [0 midway-line 1 0])
    (nvim.ex.normal "zO")
    (nvim.ex.normal "zz")
    (nvim.ex.normal "^")))

(defn init []
  (nvim.ex.command_
    "-nargs=? -range CenterFold"
    (viml->lua :centerfold.main :center-last-visual {})))
