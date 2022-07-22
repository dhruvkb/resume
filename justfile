# Show all available recipes
default:
  @just --list --unsorted

# Build the PDF and rebuild files when changed
dev jobname="resume_cover":
  just build {{ jobname }} "-pvc"

# Build the final versions of the PDF file
build jobname="resume_cover" args="":
  #!/usr/bin/env bash
  latexmk \
    -xelatex \
    -jobname={{ jobname }} \
    -output-directory=./dist \
    -aux-directory=./aux \
    -emulate-aux-dir \
    {{ args }} \
    main.tex

# Clean up auxiliary files
cleanup:
  rm -rf aux/

# Clean up compiled and auxiliary files
reset:
  rm -rf dist/
  just cleanup
