# cv

> Source for my CV

My personal cv built with LaTex. [See the result](https://jneidel.com/cv.en).

## Build

**To build once:**

```sh
make all

# on their own
make de
make en
```

**To rebuild on change:**

```sh
make watch

# on their own
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
