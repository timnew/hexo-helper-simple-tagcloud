hexo-helper-simple-tagcloud [![NPM version][npm-image]][npm-url] [![Dependency Status][depstat-image]][depstat-url]
================

> A forked [Hexo] Tag Cloud generator, but with improvements and fixes.

## Install

Install using [npm][npm-url].

    $ npm install hexo-helper-simple-tagcloud --save

## Why Simple Tag Cloud?

Original [Hexo] `tagcloud` generator has some issues or unless feature in it. I'm not sure whether all Hexo users have the same feeling as I do. So I decided to create independent plugin instead of send out pull request.

## What changed

1. Removed the color feature (Not that useful and being disabled by default)
2. Escaped the space in tag text ([Issue #810])
3. Pick displayed tags with wisdom ([Issue #811])

## Usage

Install and enjoy. It just work as original `tagcloud` generator, but with the improvements.

**HINT** For Windows user, if your git complains `filename too long` issue, please execute `git config --global core.longpaths true` to fix the issue. Thanks [@heartnn](https://github.com/heartnn) for the issue and solution.

## License
MIT

[![NPM downloads][npm-downloads]][npm-url]

[homepage]: https://github.com/timnew/hexo-helper-simple-tagcloud

[npm-url]: https://npmjs.org/package/hexo-helper-simple-tagcloud
[npm-image]: http://img.shields.io/npm/v/hexo-helper-simple-tagcloud.svg?style=flat
[npm-downloads]: http://img.shields.io/npm/dm/hexo-helper-simple-tagcloud.svg?style=flat

[depstat-url]: https://gemnasium.com/timnew/hexo-helper-simple-tagcloud
[depstat-image]: http://img.shields.io/gemnasium/timnew/hexo-helper-simple-tagcloud.svg?style=flat

[Hexo]: http://hexo.io/

[Issue #810]: https://github.com/hexojs/hexo/issues/810
[Issue #811]: https://github.com/hexojs/hexo/issues/811
