{ pkgs, ...}:

{
        programs.nvf = {
                enable = true;
                settings = {
                        vim.languages = {
                                enableLSP = true;
                                enableTreesitter = true;
                                nix = {
                                        enable = true;
                                        format.enable = true;
                                        format.package = pkgs.nixfmt-rfc-style;
                                        format.type = "nixfmt";
                                };
                                ts.enable = true;
                                rust.enable = true;
                                css.enable = true;
                        };
                        vim.autocomplete.nvim-cmp.enable = true;
                        vim.statusline.lualine.enable = true;
                        vim.telescope.enable = true;
                };
        };
}
