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

### Note

A basic LaTeX installation probably won't contain the all the packages required
to compile this document. Use `tlmgr` to install them manually. If you want to
use `latexmk` to setup a watch and build process, you will probably need to
install it using `tlmgr` too.

- latexmk
- xetex
- enumitem
- extsizes
- fontspec
- geometry
- hyperref
- hyphenat
- multicol
- pgf
- tabularx
- titlesec
- xstring
- xcolor

The command to build the PDF of the cover letter and résumé is as follows.

```bash
$ xelatex -output-directory=./dist -jobname=<jobname> main.tex
```

Flags `-interaction=nonstopmode` and `-halt-on-error` are added in CI/CD
environments to prevent TeX from entering interactive mode when encountering
errors.

The job name is the name of the output PDF.
| Job name | Output       |
|----------|--------------|
| `cover`  | Cover letter |
| `resume` | Résumé       |
| `both`   | Both         |

### Related repos

- [Portfolio](https://github.com/dhruvkb/portfolio/)
- [Serverless APIs](https://github.com/dhruvkb/portfolio-api/)
- [Blog posts](https://github.com/dhruvkb/portfolio-blog/)
