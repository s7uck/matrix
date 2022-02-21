<h2 align='center'>
	
| matrixㅤㅤㅤㅤㅤㅤ🗕 🗖 ❌ |
| :-------------: |

</h2>

## Running without installing
#### [NEW!]()
matrix is now online! You can run matrix on any computer **without downloading or
installing matrix** by running this command in PowerShell:
```powershell
iwr rentry.co/runmatrix/raw | iex
```

## Settings
| Argument | Type | Default | Description |
| :------: | :--: | ------- | ----------- |
| `-salt` | `array` | `(" ", "0", "1")` | The list of characters that will be randomized. |
| `-colors` | `array` | `("Green", "Red", "Yellow")` | The list of possible text colors that will be randomized. |
| `-length` | `int` | `104000` | The amount of random characters that will be displayed, aka how long the matrix should be. |

> #### ![Warning](https://img.icons8.com/fluent/28/general-warning-sign.png)
>
> **Note**: If you run `matrix` locally and have it placed in a folder that is _not_
> in your `$env:path`, you will have to type `./matrix.ps1` (the `./` is important)
> in the path where you have downloaded it.
