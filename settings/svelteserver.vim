augroup vim_lsp_settings_svelteserver
  au!
  LspRegisterServer {
      \ 'name': 'svelteserver',
      \ 'cmd': {server_info->lsp_settings#get('svelteserver', 'cmd', [lsp_settings#exec_path('svelteserver')]+lsp_settings#get('svelteserver', 'args', ['--stdio']))},
      \ 'root_uri':{server_info->lsp_settings#get('svelteserver', 'root_uri', lsp_settings#root_uri('svelteserver'))},
      \ 'initialization_options': lsp_settings#get('svelteserver', 'initialization_options', {}),
      \ 'allowlist': lsp_settings#get('svelteserver', 'allowlist', ['svelte']),
      \ 'blocklist': lsp_settings#get('svelteserver', 'blocklist', []),
      \ 'config': lsp_settings#get('svelteserver', 'config', lsp_settings#server_config('svelteserver')),
      \ 'workspace_config': lsp_settings#get('svelteserver', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('svelteserver', 'semantic_highlight', {}),
      \ }
augroup END
