<div align="center">

# Auth

Login and Register Authorization

</div>

## Installation


After [Download](https://github.com/LucianoBrumer/Auth/releases/download/release/Auth.zip) the datapack, move it into the folder "datapacks" in your world folder.


## Usage
Register with:

```
/trigger register set <password>
```

Login with:

```
/trigger login set <your password>
```

Change password with (you need to be logged):

```
/trigger changepassword set <new password>
```

### Configuration
To see te settigs menu use te command:
```
/function auth:settings
```

### Auth Bypass
To give a bypass to a player use te command:
```
/tag <player> add auth.bypass
```

and to remove it, use:
```
/tag <player> remove auth.bypass
```