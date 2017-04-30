﻿# RedditApplicationType Enumerator
## about_RedditApplicationType


# SHORT DESCRIPTION
Describes the RedditApplicationType Enumerator

# LONG DESCRIPTION
The RedditApplicationType enumerator represents the available option for applications registered in Reddit. To register an application go to [https://ssl.reddit.com/prefs/apps](https://ssl.reddit.com/prefs/apps). RedditApplicationType is used by the Type property of the [RedditApplication](https://psraw.readthedocs.io/en/latest/Module/about_RedditApplication) class. 

The RedditApplicationType Enumerator is imported from a nested module located at PSRAW\Enums\RedditApplicationType.psm1. This means you can import the enumerator either from the PSRAW module or directly from the nested module.

# Members

## WebApp
A web based application

## Script
Script for personal use. Will only have access to the developers accounts

## Installed
An app intended for installation, such as on a mobile phone

# EXAMPLES

## WebApp
```powershell
Using module '.PSRAW\Enums\RedditApplicationType.psm1'
$WebApp = [RedditApplicationType]::WebApp
```

## Script
```powershell
Using module PSRAW
$Script = [PSRAW.RedditApplicationType]::Script
```

## installed
```powershell
Using module PSRAW
$Installed= [PSRAW.RedditApplicationType]::Installed
```

# SEE ALSO
[about_RedditApplication](https://psraw.readthedocs.io/en/latest/Module/about_RedditApplication)

[https://ssl.reddit.com/prefs/apps](https://ssl.reddit.com/prefs/apps)

[https://github.com/reddit/reddit/wiki/API](https://github.com/reddit/reddit/wiki/API)

[https://github.com/reddit/reddit/wiki/OAuth2](https://github.com/reddit/reddit/wiki/OAuth2)

[https://www.reddit.com/prefs/apps](https://www.reddit.com/prefs/apps)

[https://www.reddit.com/wiki/api](https://www.reddit.com/wiki/api)