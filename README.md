# cd-upwards.fish
A fish shell plugin to cd upwards

## Usage
Assume your current working directory is `~/foo/bar/more/sub/paths/are/always/fantastic/` and you want to go up to `more`.
Type `cd_upwards_search more` or just a substring of `more`, i.e. `cd_upwards_search or`.

## Requirements
Needs fish `v.3.5` or newer because it uses the new `path` builtin.

## Installation
### Using fisher:
```
fisher install bagohart/cd-upwards.fish
```

### Manual:
Copy the file `cd_upwards_search.fish` into `$XDG_CONFIG_HOME/fish/functions/`.

### Add an alias:
`cd_upwards_search` is intentionally a long name to ensure it won't clash with other plugins. You can add a shorter alias to your `config.fish`, e.g.:
```
alias up 'cd_upwards_search'
```

## Alternatives
This isn't a new idea. Here are two older plugins that basically do the same job:
https://github.com/markcial/upto
https://github.com/ianatha/up
The first one has the same features, but a more complicated implementation.
The second one has more features (which I don't use), but uses Python.
