TALKS = lightning-talk pybcn pycon-il siglibre
TALK_HTMLS = $(foreach talk,$(TALKS),$(talk)/index.html)

all: $(TALK_HTMLS)

clean:; rm $(TALK_HTMLS)

.PHONY : all clean

%/index.html: %/Talk.ipynb %/img/*.png
	jupyter nbconvert $< --to slides --reveal-prefix "https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.6.0"
	mv $*/Talk.slides.html $@
