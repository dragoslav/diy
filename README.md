# DIY Bio 

**DIY Bio** is a personal project documentation and blog web site.

Site generation is based on [Jekyll Now](https://github.com/jekyll/jekyll) and the main theme on [Lanyon](http://lanyon.getpoole.com).

### Project structure

2 branches:

  - **master** documentation & blog - full content.
  - **clean** Jekyll Now + theme + additional features with minimal examples. Suitable for starting a new documentation & blog site.
  
### Additional features & changes

#### Sidebar

Feature based on [Lanyon](http://lanyon.getpoole.com) implementation.
In addition page needs to have `sidebar: n`, where n (e.g. integer number) is used for sorting of all page links in the sidebar.

#### Listing GitHub Issues

In order to get a listing of GitHub issues at the bottom of the page:

  - page needs to have `layout: page` (not a blog)
  - label needs to be defined in the page (e.g. `label: enhancement`)
  - only open issues and issues labeled with the given page label will be displayed.
  
Common use case is **1 page - 1 DIY project**. 

All ideas, improvements and issues can be listed at the bottom.

This has advantage over comments, because project is dynamic and can be changed (improved) any time and comments sooner or later become irrelevant for the current version.

