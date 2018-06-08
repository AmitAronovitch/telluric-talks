all: lightning-talk/index.html pycon-il/index.html
.PHONY : all

lightning-talk/index.html: lightning-talk/Talk.ipynb lightning-talk/img/*.png
	jupyter nbconvert lightning-talk/Talk.ipynb --to slides --reveal-prefix "https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.6.0"
	mv lightning-talk/Talk.slides.html lightning-talk/index.html

pycon-il/index.html: pycon-il/Talk.ipynb pycon-il/img/*.png
	jupyter nbconvert pycon-il/Talk.ipynb --to slides --reveal-prefix "https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.6.0"
	mv pycon-il/Talk.slides.html pycon-il/index.html
