return {
	{
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  config = function()
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/Org/OrgFiles/**/*',
      org_default_notes_file = '~/Org/OrgFiles/refile.org',
      org_capture_templates = {
        b = {
            description = "Blank",
            target = "~/Org/OrgFiles/blank.org",
         },
	a = {
	    description = "Next Item",
	    target = "~/Org/OrgFiles/next.org",
	    template = "* TODO %?\n  %u\n  %t"
	  }
       }
    })
  end,
  }
}
