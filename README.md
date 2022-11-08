# PowerShell
Collection of useful PowerShell scripts

## Start-Monitor

Runs the code block at the specified interval until the break value is returned.

__Usage__
```
Start-Monitor.ps1** [[-BreakValue] <Object>] [[-Delay] <int>] [[-CodeBlock] <Object>]
```

__Parameters__
```
BreakValue:  The value you are monitoring for
Delay:       The number of seconds between invocation of the script block
ScriptBlock: A code block that returns a single value for matching against the break value
```

__Example__
```
Start-Monitor -BreakValue 1 -Delay 5 -CodeBlock { (Get-MpPreference).PUAProtection }
```
