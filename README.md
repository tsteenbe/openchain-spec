# The OpenChain ​Specification

[![Build Status](https://travis-ci.org/tsteenbe/openchain-spec.svg?branch=master)](https://travis-ci.org/tsteenbe/openchain-spec)

The OpenChain Project helps to identify and share the core components of a high quality Free and Open Source Software (FOSS) compliance program. OpenChain builds trust in Open Source by making things simpler, more efficient and more consistent. It is the industry-standard for managing Open Source compliance across the supply chain.

The OpenChain Specification defines a core set of requirements a FOSS compliance program should meet. This creates trust that an organization provides the artifacts required for FOSS license compliance in software it shares with others. Compliance artifacts consist of: source code, build scripts, license copies, attribution notices, modification notices and other materials open source licenses governing a software deliverable may require.

This repository holds under active development version of the specification as:

* [MarkDown](https://github.com/tsteenbe/openchain-spec/tree/master/chapters) (master branch)
* [HTML](https://tsteenbe.github.io/openchain-spec/) (gh-pages branch, build on every commit to master branch)

For additional information please also see the [OpenChain project website](https://www.openchainproject.org/).

# Building the specification

## Prerequisites

You have to [Node.js](https://nodejs.org) installed on your machine. If you don't have it yet installed please follow these [installation instrucions](https://nodejs.org/en/download/package-manager/).

The OpenChain specification is written in MarkDown and HTML, PDF, ePUB, Mobipocket versions can be generated using [Gulp](https://gulpjs.com) and [GitBook](https://www.gitbook.com/). Note in order to generate PDF, ePUB, Mobipocket you have to install Callibre using these [instructions](https://toolchain.gitbook.com/ebook.html).

    # Install via npm document build toochain 
    $ npm install -g gitbook-cli gulp
    
    # Install all dependencies (GitBook + plugins, build tools, etc)
    $ npm install

## Building HTML, PDF, ePUB, Mobipocket

    # Commands to build or publish the specification
    $ gulp
    
    Usage
      gulp [TASK] [OPTIONS...]

    Available tasks
      all        Generate all documument versions.
      epub       Generate ePUB in ./build/
      help       Display this help text.
      html       Generate HTML website in ./build/
      mobi       Generate Mobipocket in ./build/
      pdf        Generate PDF in ./build/
      publish    Publish HTML to GitHub pages.
      webserver  Open a web browser to webserver and will rebuild HTML on file change.
