# M.B.2 Exercise Book

This repo contains the code to render the "Übungsheft" of the course M.B.2 I teach at the University of Kaiserslautern-Landau. Feel free to open an issue or create a pull request if something is off. Thanks!

## Technical Notes for Contributors

The website is rendered locally in the docs folder and hosted via GitHub pages. I chose not to render via GitHub actions because the project is heavily dependent on the R-package \`teachIRT\`, which is only hosted on my GitHub, but not on CRAN.

The exercise sections are contained in individual .qmd files in the folder sections. If you'd like to make corrections or add content, this can probably achieved by writing into the respective .qmd file.

The FAQ section of the webpage is located in the upper layer file index.qmd.

Last, if you'd like to add a complete section, create a new subdirectory containing a .qmd file in the sections folder and link to it in the YAML \_quarto.yml. Note that the YAML is sensitive to indents.
