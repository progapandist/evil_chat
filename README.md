# Evil Chat

Code for a chat application from __"Modern Front-end in Rails"__ three-part tutorial from [Evil Martians](https://evilmartians.com/). Read it here:

* [Part 1](https://evilmartians.com/chronicles/evil-front-part-1)
* [Part 2](https://evilmartians.com/chronicles/evil-front-part-2)
* [Part 3](https://evilmartians.com/chronicles/evil-front-part-3)

> An opinionated guide to modern, modular, component-based approach to handling your presentation logic in Rails that does not depend on any front-end framework. Follow our three-part tutorial to learn the bare minimum of up-to-date front-end techniques by example and finally make sense of it all.

The `master` branch contains the final code for the demo application with some light modifications that add SVG icons to demonstrate `postcss-inline-svg` plugin.

If you are looking for code that reflects application at the end of [Part 2]((https://evilmartians.com/chronicles/evil-front-part-2)), take a look at [this branch](https://github.com/progapandist/evil_chat/tree/tutorial/part-2).

# Installation

```bash
$ cp config/database.yml.example config/database.yml
$ cp config/secrets.yml.example config/secrets.yml

$ bundle install
$ rails db:migrate
$ yarn install
$ brew install hivemind
$ hivemind Procfile.dev
```
