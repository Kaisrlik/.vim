syn region markdownStrikeX matchgroup=markdownDelimiterX start="\^\^\S\@=" end="\S\@<=\^\^\|^$" contains=markdownLineStart,@Spell concealends

hi markdownStrikeX cterm=bold ctermfg=2
hi def link markdownDelimiterX markdownStrikeX
