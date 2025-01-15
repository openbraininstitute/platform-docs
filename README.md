# **Open Brain Platform** - Documents

This is a work-in-progress repository containing:

* the [Architecture Documentation](docs/) of the **Open Brain Platform**
* the review documents for the [AWS Well-Architected Framework](waf)

## File format conventions

For convenience:

* the file format utilized for the documentation is [Markdown](https://en.wikipedia.org/wiki/Markdown)
* the file format utilized for the diagrams is either:
    * Scalable Vector Graphics (SVG) made with [Draw.io](https://github.com/jgraph/drawio), for complex diagrams requiring precise control over the layout, styling, and visual elements.
      Examples: Detailed flowcharts, network architectures, or visualizations requiring specific branding or icons.
    * Inline diagrams made with [Mermaid](https://github.com/mermaid-js/mermaid), for simple diagrams that can be defined easily in text.
      Examples: Simple flowcharts, sequence diagrams.

## How to Edit the Documentation and Diagrams

One of the main reasons behind choosing the formats mentioned above, is the convenience of having automatically available VSCode on GitHub for the very same repository. No installations nor complex configurations are required.

**To edit any of the files, including the diagrams, you must simply access the following link to open VSCode:**

[![Edit repository with Visual Studio Code](.vscode/resources/edit_in_vscode.drawio.svg)](https://github.dev/openbraininstitute/platform-docs)

The repository contains a `.vscode` folder with a recommendation to enable the following plugins for VSCode:

* [Draw.io Integration](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio) (see also [Edit diagrams directly in GitHub with draw.io and github.dev](https://www.drawio.com/blog/edit-diagrams-with-github-dev))
* [Markdown Preview Mermaid Support](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid)

Simply click on `Install` when prompted in the bottom-right of your screen, and from now on you will be able to edit any of the Draw.io figures and Mermaid diagrams inside GitHub.

> [!TIP]
> You can also clone the repository locally and utilize your own installation of VSCode. The same plugins are available in both versions.

> [!WARNING]
> Please, use **always** Mermaid or SVG file format while working with new figures. Name the SVG files as `*.drawio.svg` for the plugin to automatically detect the Draw.io files in VSCode.

If using IntelliJ or other JetBrains IDEs based on it, like PyCharm, there are equivalent plugins:

* [Diagrams.​net Integration](https://plugins.jetbrains.com/plugin/15635-diagrams-net-integration)
* [Mermaid](https://plugins.jetbrains.com/plugin/20146-mermaid)


## Acknowledgements

The development of this was supported by funding to the Blue Brain Project, a research center of the École polytechnique fédérale de Lausanne (EPFL), from the Swiss government’s ETH Board of the Swiss Federal Institutes of Technology.

For license see LICENSE.txt.

Copyright (c) 2023-2024 Blue Brain Project/EPFL

Copyright (c) 2025 Open Brain Institute
