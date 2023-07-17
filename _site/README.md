## stats-resources

This is the repo for our `stats-resources` page. Make changes here and they automatically appear on the website.

### Changing the content of a webpage

All individual pages are stored as `.md` Markdown files, found in the `_docs` folder. The folders represent the structure in the sidebar. At the time of this writing, there was only one folder, named `Sites`, which hosts all pages and another subfolder

If you want to change the content of a webpage, modify the contents in the respective Markdown file and commit it to the repository. 

### Create a new webpage

If you would like to create a new webpage, there are two files you need to modify. First of all, create a new Markdown (`.md`) file from scratch (best to just copy one of the `_docs/Sites` folder). Place it where you would like the webpage to appear within the structure of the sidebar. Make sure to include this header (and modify it):

```
---
title: Current Staff
permalink: staff.html
sidebar: sidebar
product: SIH Statistics Resources
---
``` 

Once you have done that, it is time to modify the sidebar. The sidebar file lies in `_data/sidebar.yml` and each entry is individually specified. So the entry for staff is as follows:

```
  - title: Staff
    jurl: /staff.html
    ref: about-us
```

Make sure to place it in the correct spot so that it appears on the sidebar.

### References

You can refer to webpages with their reference (`ref` in the sidebar) like this `[Reference](about-us)`. Also, if you want to refernce a file, you can do that like so `[Power simulation html](assets/files/Example1-simulation.html)`. No need to get full links...