# telluric

Display slides from gh-pages:

* [lightning-talk](https://amitaronovitch.github.io/telluric-talks/lightning-talk/)
* [pycon-il](https://amitaronovitch.github.io/telluric-talks/pycon-il/)

Press the button to launch a cloud Jupyter notebook with the talk.

[![Binder](http://mybinder.org/badge.svg)](http://mybinder.org/v2/gh/Juanlu001/telluric-lightning-talk/master?filepath=Talk.ipynb)

To generate slides locally, ready to be served statically:

```
# Remove --reveal-prefix after nbconvert 5.4.0 is out, see
# https://github.com/jupyter/nbconvert/pull/732
jupyter nbconvert Talk.ipynb --to slides --reveal-prefix "https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.6.0"
```

And then `python -m http.server & xdg-open http://0.0.0.0:8000/Talk.slides.html`.
