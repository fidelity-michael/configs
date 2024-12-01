-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
return {
    'numToStr/Comment.nvim',
    config = function ()
        require('Comment').setup({
         pre_hook = function(ctx)
            -- Use `ts_context_commentstring` to handle tsx/jsx file comments
            local U = require('Comment.utils')

            -- Determine the location where the comment is being inserted
            local location = nil
            if ctx.ctype == U.ctype.block then
                location = require('ts_context_commentstring.utils').get_cursor_location()
            elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
                location = require('ts_context_commentstring.utils').get_visual_start_location()
            end

            return require('ts_context_commentstring.internal').calculate_commentstring({
                key = ctx.ctype == U.ctype.line and '__default' or '__multiline',
                location = location,
            })
        end,
        });
    end,
}
