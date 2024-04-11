# PRJ2 retake - Airline Information System

The airline information system provides a java application with a database for aviation ticket selling. Depending on the user group (in this case employee positions), users can either sell tickets, conduct new flights or lookup the recent activities.

## Content

- [Case Description](#Case-Description)
- [Documentation](#Documentation)
- [Diagrams](#Diagrams)
- [Structure](#Structure)

## Case Description
<a name='Case-Description'/>

**[Source](https://canvas.fontys.nl/courses/11010/files/859140?module_item_id=246109)**<br>
Within this project you are going to work for an airline company. In a nutshell, you need to build an application to support the sales of flight tickets.
 
First, a sales officer needs to be able to register upcoming flights and start the sales process for registered flights. Additionally, it must be possible to enable temporary price reductions. Discounts can be static (e.g. 10% price reduction for a limited period of time), as well as dynamic (e.g. based on the number of sun hours at the destination, on the day before the booking is made – this needs to be retrieved from an external API, feel free to choose one). 

Second, your future application needs to allow sales employees to lookup available flights and create bookings for one or more persons for a specific flight. A booking can have (paid) options concerning extra legroom, food, luggage and seats chosen. Prices need to be calculated by the software and depend on the chosen options, class, availability of seats in that class, applicable discounts and the number of days left before the flight departs. You can assume another application is used for the payment process. Please note that the airline company works with multiple sales employees. Hence, the application needs to cope with concurrent users, potentially trying to book limited seats for the same flight. 
 
Finally, sales managers are only going to love your work if you include a management dashboard.  The dashboard needs to present important management key performance indicators. For example, for each route sales managers want to view total revenue numbers, number of tickets sold in each class, and statistics on all options sold. **

## Documentation
<a name='Documentation'/>

Github documentation is part of the communication grade for project 2 (PRJ23). Therefore it is important to make sure to write proper documentation and to write that in a format that can be rendered by Github.
Github supports a multitude of languages for this [purpose](https://github.com/github/markup), however you are only allowed to use:

- [Markdown](https://www.markdownguide.org/) - Have a look at the [Github flavored markdown](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
- [AsciiDoc](https://asciidoc-py.github.io/index.html) - Have a look at the [AsciiDoctor cheatsheet](https://docs.asciidoctor.org/asciidoc/latest/syntax-quick-reference/)

## Diagrams
<a name='Diagrams'/>

In the AADE course you will learn how to develop diagrams with the use of [Visual Paradigm](https://www.visual-paradigm.com/). You are free to use this program also for the diagrams for project 2.

**However** Visual Paradigm creates `binary` files which don't play nice with version control systems (VCS) such as Git. We therefore also recommend to have a look at the following ways of creating diagrams, based on text files (which is what VCSs excel at).

- [PlantUML](https://plantuml.com/) - PlantUml let's you easily create unified modeling languages (UML) diagrams in a text based manner. There is a [VSCode extension available](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml) for live previews and exporting of diagrams.
- [Diagrams.net](https://app.diagrams.net/) - Drag and drop editor that works in the browser. There is also a [VSCode extension available](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio). Have a look at [this guide](https://github.com/philip-gai/github-drawio-demo) on how to make sure your images are always up-to-date.

Examples of these diagrams can be found in the [design](/design) directory.

> :warning: **Make sure there is always an image available of all diagrams** (preferably as SVG)

## Structure
<a name='Structure'/>

- [Project Management](/project-management) - For all project management related artefacts, e.g. meetings outcomes, retrospectives, screenshots, minutes, planning.
- [Analysis](/analysis) - For all analysis artefacts
- [Design](/design) - For all design artefacts
- [Implementation](/implementation) - For the implementation of the Airline Information System

