VIM := nvim
DICT := en.utf-8.add

$(DICT).spl: $(DICT)
	nvim --headless -c 'mkspell! $<' -c q

clean:
	rm $(DICT).spl

