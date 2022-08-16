# cd-upwards.fish
A fish shell plugin to cd upwards

## Usage
Assume your current working directory is `~/foo/bar/more/sub/paths/are/always/fantastic/` and you want to go up to `more`.
Type `cd_upwards_search more` or just a substring of `more`, e.g. `cd_upwards_search or`.

## Requirements
Needs fish `v.3.5` or newer because it uses [the new `path` builtin](https://fishshell.com/docs/current/cmds/path.html).

## Installation
### Using fisher:
```
fisher install bagohart/cd-upwards.fish
```

### Manually:
Copy the file `cd_upwards_search.fish` into `$XDG_CONFIG_HOME/fish/functions/` (probably `~/.config/fish/functions`).

### Add an alias:
`cd_upwards_search` is an intentionally long name to prevent clashing with other plugins.
You can add a shorter alias to your `config.fish` to make its usage more convenient. I use:
```
alias up 'cd_upwards_search'
```

## Alternatives
This isn't a new idea. Here are two older plugins that basically do the same job:
1. https://github.com/markcial/upto
2. https://github.com/ianatha/up

(1) has the same features, but a more complicated implementation.
(2) has more features (which I don't use), but introduces Python as a dependency.

## Related
If you want to cd down instead of up, check out [cd-deep-broot.fish](https://github.com/bagohart/cd-deep-broot.fish).
