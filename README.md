# browsing_facade

[![Gem Version](http://img.shields.io/gem/v/browsing_facade.svg)](https://rubygems.org/gems/browsing_facade)
[![Build Status](https://github.com/wulffeld/browsing_facade/workflows/CI/badge.svg?branch=main)](https://github.com/wulffeld/browsing_facade/actions?query=workflow%3ACI)
[![Gem Downloads](https://img.shields.io/gem/dt/browsing_facade.svg)](https://rubygems.org/gems/browsing_facade)
[![Maintainability](https://api.codeclimate.com/v1/badges/7b3c646f87ca2d6d691c/maintainability)](https://codeclimate.com/github/wulffeld/browsing_facade)

## Installation

Include the gem in your Gemfile:

```ruby
gem "browsing_facade"
```

## Usage

```ruby
browse = BrowsingFacade.instance
browse.visit(url: "http://www.example.com")
puts browse.code
```

## Support

Submit suggestions or feature requests as a GitHub Issue or Pull
Request (preferred). If you send a pull request, remember to update the
corresponding unit tests.  In fact, I prefer new features to be submitted in the
form of new unit tests.

## Versioning

Semantic Versioning 2.0 as defined at <http://semver.org>.
