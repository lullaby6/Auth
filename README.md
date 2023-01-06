<div align="center">

# Auth

Login and Register Authorization

</div>

## Installation (Windows)

[Download](https://github.com/LucianoBrumer/GitPush/releases/download/v1.0.0/gitpush.exe)

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