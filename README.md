# cv

> My multi-language latex CV

A good-looking multi-language CV built in LaTeX.
You can see the results here:
- [en](https://jneidel.com/about/cv/cv.pdf)
- [de](https://jneidel.de/about/cv/cv.pdf)

## Structure

- [`cv.cls`](cv.cls): shared configuration, reusable components
- [`cv.en.tex`](cv.en.tex): english contents
- [`cv.de.tex`](cv.de.tex): german contents
- [`packages`](packages): local latex packages

## Build

**To build once:**

```sh
make all

# or build an individual version on it's own
make de
make en
```

**To rebuild while watching for changes:**

```sh
make watch

# or on their own
make watch_en
make watch_de
```

**To rerender on change:**

```sh
make render_en
make render_de
```

## Dependencies

```sh
yay -S texlive-full
```

## Git hooks

`pre-commit`
```sh
#!/bin/sh

# set "Updated" to current month
sed -i -E "s/\{\\\\em [A-Za-z]{3} [0-9]{4}\}/\{\\\\em $(date +'%b %Y')\}/g" cv.*.tex

if ! git diff --quiet -- cv.*.tex; then
  exit 1
fi
```
