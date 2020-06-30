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

A basic LaTeX installation probably won't contain the following 
packages. Use `tlmgr` to install them manually.

- `titlesec`
- `hyphenat`
- `enumitem`
- `xstring`

If you want to use `latexmk` to setup a watch and build process, you will
probably need to install it using `tlmgr` too.

The command to build the PDF of the résumé is as follows.

```bash
$ xelatex -output-directory=./docs -jobname=<jobname> main.tex
```

The job name is the name of the output PDF.
| Job name           | Job portfolio      | Cover letter | Résumé |
|--------------------|--------------------|--------------|--------|
| `developer`        | Software developer | ✅ Yes       | ✅ Yes |
| `developer_cover`  | Software developer | ✅ Yes       | ❌ No  |
| `developer_resume` | Software developer | ❌ No        | ✅ Yes |
| `writer`           | Technical writer   | ✅ Yes       | ✅ Yes |
| `writer_cover`     | Technical writer   | ✅ Yes       | ❌ No  |
| `writer_resume`    | Technical writer   | ❌ No        | ✅ Yes |
 
### Related repos

- [Portfolio](https://github.com/dhruvkb/portfolio/)
- [Serverless APIs](https://github.com/dhruvkb/portfolio-api/)
- [Blog posts](https://github.com/dhruvkb/portfolio-blog/)
