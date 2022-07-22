<a href="https://dhruvkb.github.io">
    <img src="readme_assets/cover.jpg" width="100%"/>
</a>

<h1 align="center">
    Dhruv Bhanushali
</h1>

## Résumés

Hello! I am [Dhruv Bhanushali](https://dhruvkb.github.io/), an engineering
graduate from the Indian Institute of Technology, Roorkee. I am a software
developer and technical writer among many other things, based on the time of day
and the phase of the moon.

These here are my cover-letter and résumés and the
<img src="readme_assets/latex.png" height="16">
files that I use to generate them.

# Requirements

- BasicTeX (provides many useful packages and `tlmgr` for adding more)
- `latexmk` (can be installed using `tlmgr`)
- the following LaTeX pacakges

## LaTeX packges

- enumitem
- hyphenat
- titlesec
- xstring

To build the final PDF, run the `build` command.

```bash
$ just build <jobname>
```

During development, run the `dev` command to watch the source code and
automatically update the PDF when the code is changed.

```bash
$ just dev <jobname>
```

The job name is the name of the output PDF.
| Job name | Output       |
|----------|--------------|
| `cover`  | Cover letter |
| `resume` | Résumé       |
| `both`   | Both         |
