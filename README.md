# SixArm » Emacs » Dot files for configuration

This repo has our typical emacs.d files.

Startup:

* enable-all-commands: turn on powerful commands for experienced users.
* enable-all-commands-in-one-fell-swoop: fast setup for experienced users.
* inhibit-startup-message: skip the intro "For information about GNU Emacs".
* package-list: use good package manager archives.
* initial-scratch-message-off

Display:

* highlight-selection
* linum-format-uses-right-justify-six-digit-bar-pad: for readable line numbers.
* menu-bar-off: omit the graphical menu bar at the top of the screen.
* tool-bar-off: omit the tool bar.
* scroll-bar-off: omit the scroll bar.
* tooltip-off: omit tooltip info.
* set-default-font: we like using Inconsolata 14.
* show-paren: show parenthesis and use delay 0 for immediate feedback.
* show-line-number-and-column-number: add this info to the mode line.
* yes-or-no-prompts-show-y-or-n: change prompts from "yes/no" to "y/n".


Personal:

* user: set user name and address.

Colors:

* global-font-lock-mode-without-syntax-color-highlight: we prefer plain text.
* global-hl-line-mode-off: we prefer plain lines.
* cursor-color-white: we prefer a bright white cursor. [unusued]
* green-on-black-colors: we like the look of a classic display. [unused]

Editing:

* indent-tabs-mode-off: indent lines with spaces, not tabs.
* meta-space-does-hippie-expand: quick way to autocomplete words.
* search-uses-regexp: kbd search with C-s and C-r uses regular expressions.
* select-window-with-alt-arrow: faster navigation.
* sentence-end-single-space: sentences end with 1 space, not 2.
* soft-tabs: backward delete whitespace to column.

Completion:

* icomplete-mode-on: incremental MiniBuffer completion preview.
* file-name-shadow-adjuster: when selecting a file to visit, adjust paths.

Files:

* auto-save-off: turn off auto save of file buffers.
* backup-inhibited: disable automatic backups of file buffers.
* before-save-hook-to-delete-trailing-whitespace: clean up typical chaff.

Tools:

* ido-everywhere: turn on the ido manager.
* prelude-guru-off: because we want to be able to use arrow keys.

Modes:

* closure-mode-on: require closure programming major mode.
* javascript/js2: use JS2 mode.
* json/json-uses-js: "*.json" et. al. use js-mode.
* ruby/rake-uses-ruby: "*.rake" et. al. use ruby-mode.


## Thanks & Links

<ul>

<li>
<cite>
<div itemscope itemtype="http://schema.org/Code">
  <meta itemprop="name" content="Sacha's .emacs file" />
  <meta itemprop="keywords" content="emacs, dotfiles" />
  <meta itemprop="url" content="https://dl.dropboxusercontent.com/u/3968124/sacha-emacs.org" />
  <h1><a href="https://dl.dropboxusercontent.com/u/3968124/sacha-emacs.org">Sacha's .emacs dotfile</a></h1>
  <div itemprop="author" itemscope itemtype="http://schema.org/Person">
    <meta itemprop="name" content="Sacha Chua" />
    <meta itemprop="keywords" content="emacs, dotfiles" />
    <meta itemprop="url" content="http://sachachua.com/" />
    <meta itemprop="email" content="" />
    <link href="http://sachachua.com/" />
    <link href="https://twitter.com/sachac" />
    <link href="https://www.linkedin.com/in/sachac" />
    <link href="http://experivis.com/" />
    <link href="https://www.facebook.com/sachac" />
    <link href="http://www.slideshare.net/sachac" />
    <link href="https://www.flickr.com/photos/sachac/" />
    <a rel="author" href="http://sachachua.com/" />Sacha Chua</a>
  </div>
</div>
</cite>
</li>

<li>
<div class="citation">
<div itemscope itemtype="http://schema.org/Code">
  <meta itemprop="name" content=".emacs file" />
  <meta itemprop="keywords" content="emacs, dotfiles" />
  <meta itemprop="url" content="https://github.com/avar/dotemacs/" />
  <h1><a href="https://github.com/avar/dotemacs/">.emacs file</a></h1>
  <div itemprop="author" itemscope itemtype="http://schema.org/Person">
    <meta itemprop="name" content="Arnfjörð Bjarmason" />
    <meta itemprop="keywords" content="emacs, dotfiles" />
    <meta itemprop="url" content="https://github.com/avar/" />
    <meta itemprop="email" content="avarab@gmail.com" />
    <link href="https://github.com/avar/" />
    <link href="http://xn--var-xla.net/" />
    <a rel="author" href="https://github.com/avar/" />Ævar Arnfjörð Bjarmason</a>
  </div>
</div>
</div>
</li>

<li>
<div class="citation">
<div itemscope itemtype="http://schema.org/Code">
  <meta itemprop="name" content="Rod's .emacs.org" />
  <meta itemprop="url" content="https://github.com/rodw/.dotfiles/tree/master/emacs" />
  <meta itemprop="keywords" content="emacs, dotfiles" />
  <h1><a href="https://github.com/rodw/.dotfiles/tree/master/emacs">Rod's .emacs.org</a></h1>
  <div itemprop="author" itemscope itemtype="http://schema.org/Person">
    <meta itemprop="name" content="Rod Waldhoff />
    <meta itemprop="email" content="" />
    <link href="https://github.com/rodw" />
    <link href="http://heyrod.com/" />
    <a rel="author" href="http://heyrod.com/" />Rod Waldhoff</a>
  </div>
</div>
</div>
</li>

<li>
<div class="citation">
<div itemscope itemtype="http://schema.org/BlogPosting">
  <meta itemprop="name" content="Effective .emacs" />
  <meta itemprop="url" content="http://a-nickels-worth.blogspot.com/2007/11/effective-emacs.html" />
  <meta itemprop="keywords" content="emacs, dotfiles" />
  <h1><a href="http://a-nickels-worth.blogspot.com/2007/11/effective-emacs.html">Effective .emacs</a></h1>
  <div itemprop="author" itemscope itemtype="http://schema.org/Person">
    <meta itemprop="name" content="Jacob Gabrielson" />
    <meta itemprop="email" content="??" />
    <link href="https://www.linkedin.com/in/jacobgabrielson" />
    <link href="https://github.com/JacobGabrielson" />
    <a href=https://www.linkedin.com/in/jacobgabrielson">Jacob Gabrielson</a>
  </div>
  <div itemprop="isPartOf" itemscope itemtype="http://schema.org/Blog">
    <meta itemprop="name" content="A Nickel's Worth" />
    <meta itemprop="url" content="http://a-nickels-worth.blogspot.com" />
  </div>
</div>
</div>
</li>

</ul>
