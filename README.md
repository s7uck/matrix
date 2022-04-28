## Running without installing
you can run matrix on any computer without downloading any files by running
this command in PS:
```powershell
iwr rentry.co/runmatrix/raw | iex
```

## Settings
| Argument | Type | Default | Description |
| :------: | :--: | ------- | ----------- |
| `-salt` | `array` | `(" ", "0", "1")` | The list of characters that will be randomized. |
| `-colors` | `array` | `("Green", "Red", "Yellow")` | The list of possible text colors that will be randomized. |
| `-length` | `int` | `104000` | The amount of random characters that will be displayed, aka how long the matrix should be. |
