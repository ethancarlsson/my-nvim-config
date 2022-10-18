return require('packer').startup(function(use)
	-- colorschemes
	use {'dracula/vim', as = 'dracula'}
	use {'junegunn/seoul256.vim', as = 'seoul256'}

	-- packer
	use 'wbthomason/packer.nvim'

	-- LSP configuration
	use 'williamboman/mason.nvim'    
	use 'williamboman/mason-lspconfig.nvim'

	use 'neovim/nvim-lspconfig' 

  -- Completion framework:
  use 'hrsh7th/nvim-cmp' 

  -- LSP completion source:
  use 'hrsh7th/cmp-nvim-lsp'

  -- Useful completion sources:
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'hrsh7th/vim-vsnip'                             
  
  --tree sitter
  use 'nvim-treesitter/nvim-treesitter'

  -- comments
  use 'numToStr/Comment.nvim'

  -- fuzzy finder
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  -- float-term
  use 'voldikss/vim-floaterm'

  -- rust
  use 'simrat39/rust-tools.nvim'

  -- go
  use {'fatih/vim-go', run = ':GoUpdateBinaries'}

end)
