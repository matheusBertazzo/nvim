local map = function(keys, func, description, mode)
	mode = mode or 'n'
	vim.keymap.set(mode, keys, func, { desc = 'Mini.Comment ' .. description })
end
require('mini.comment').setup({
	mappings = {
		comment = '<leader>cc',
		comment_line = '<leader>cl',
		comment_visual = '<leader>cc',
		text_object = '<leader>cc'
	}
})
--local mini = require('mini.comment')
--local operator_rhs = function() return mini.operator() end
--vim.keymap.set('n', '<leader>cc', operator_rhs, { expr = true, desc = 'Some desc' })
-- map('<leader>cc', operator_rhs, '[C]omment [C]ode')
