# Freenet Whitepaper

Source for *Freenet: A Peer-to-Peer Platform for Real-Time Decentralized
Applications*, an architectural whitepaper covering the contract model
(idempotent commutative monoids / join-semilattices on application state),
summary/delta synchronization, accept-only-at-terminus small-world routing,
adaptive routing via per-neighbor isotonic regression, and the delegate
model for private state.

## Read it

- **Latest build (auto-rebuilt on every push to `main`):**
  <https://github.com/freenet/paper-1/releases/latest/download/freenet-whitepaper.pdf>
- **Landing page:** <https://freenet.org/whitepaper/>

## Build locally

```
make
```

Requires `pdflatex` and `bibtex` (TeX Live). The Makefile runs `pdflatex →
bibtex → pdflatex → pdflatex` and produces `main.pdf`.

## Layout

- `main.tex` — document preamble and section includes
- `sections/` — one `.tex` file per section
- `refs.bib` — bibliography
- `.github/workflows/build.yml` — CI build that publishes the
  `latest` release with the PDF attached

## License

[Creative Commons Attribution 4.0 International](LICENSE) (CC-BY 4.0). You may
copy, redistribute, and adapt the material with attribution. See `LICENSE` for
the full text.

## Contributing

Pull requests welcome. The workflow runs `pdflatex` on every PR, so a green
check means the LaTeX still compiles. For substantive design changes,
opening an issue first is appreciated so the direction can be discussed
before the prose is written.
