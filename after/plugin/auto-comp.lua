local cmp = require('cmp')
local ap = require('nvim-autopairs')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
ap.setup()
local cmp_select_opts = {behaviour = cmp.SelectBehavior.Select}
local luasnip = require('luasnip')

cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
        {name = 'buffer'},
    },
    mapping = {
        ['<C-y>'] = cmp.mapping.confirm({select = true}),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select_opts),
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select_opts),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<Tab>'] = cmp.mapping(function (fallback)
            if luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, {'i', 's'}),
        ['<S-Tab>'] = cmp.mapping(function (fallback)
            if luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {'i', 's'}),
    },
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        documentation = {
            max_height = 15,
            max_width = 60,
        }
    },
    formatting = {
        fields = {'abbr', 'menu', 'kind'},
        format = function(entry, item)
            local short_name = {
                nvim_lsp = 'LSP',
                nvim_lua = 'nvim'
            }

            local menu_name = short_name[entry.source.name] or entry.source.name
            
            item.menu = string.format('[%s]', menu_name)
            return item
        end,
    },
})

cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)
