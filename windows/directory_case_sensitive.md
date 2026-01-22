# directory case sensitive

```bash
gsudo

fsutil.exe file setCaseSensitiveInfo "c:\_workspace" enable
fsutil.exe file setCaseSensitiveInfo "c:\temp" enable
fsutil.exe file setCaseSensitiveInfo "D:\" enable
```