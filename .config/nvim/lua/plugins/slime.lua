return {
  "jpalardy/vim-slime",
  config = function()
    vim.cmd([[let g:slime_target = "tmux"]])
    vim.cmd([[let g:slime_default_config = {"socket_name": "default", "target_pane": "0.1"}]])
  end,
}
