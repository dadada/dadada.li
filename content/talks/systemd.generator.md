---
title: systemd.generator(7)
author: dadada
width: 1920
height: 1080
date: 2019-03-14
---

[Recording](https://www.youtube.com/watch?v=X88zHJjodFw)

# Dynamische Systeme sind schwierig

- ➤ Devices, Mountpoints, Services, Timer möglichst als Unit
- Transitionstechnologie für `/etc/fstab` und SysV init-Skripte
- Hooks für den Bootprozess (System-Update, Resume, Debug ...)
- Umgebungsvariablen setzen
- ➤ Generatoren generieren beim Boot dynamisch Units

# Calling convention

`# /path/to/generator normal-dir early-dir late-dir`

- Generatoren sind in 
  - `/run/systemd/{system,user}-generators/*`
  - `/etc/systemd/{system,user}-generators/*`
  - `/usr/lib/systemd/{system,user}-generators/*`
  - `/usr/local/lib/systemd/{system,user}-generators/*`


# Generierte Units

- neu generieren mit `systemctl daemon-reload`
- generierte Units landen in 
  - `normal-dir` ➤ `/run/systemd/generator`
  - `early-dir` ➤ `/run/systemd/generator.early`
  - `late-dir` ➤ `/run/systemd/generator.late`

# Templating

- generierte Units dürfen auch sein
  - Templates
  - Instanzen von Templates (`getty@tty1.service`)
- Generatoren können auch Symlinks in `.wants/`, `.target` und `.requires/` erstellen

# Abhängigkeiten vermeiden
- kein syslog oder journal benutzen
- keine Units starten
- keine nicht essentiellen Dateisysteme verwenden (aber /proc, /usr, /sys und /dev)
- Generatoren werden parallel ausgeführt

# Performance

kann Boot verlangsamen ➤ Nicht mit bash implementieren, lieber C

# Debugging

```
dir=$(mktemp -d)
SYSTEMD_LOG_LEVEL=debug /usr/lib/systemd/system-generators/systemd-fstab-generator "$dir" "$dir" "$dir"
find $dir
```

- syslog(3) ist nicht vefügbar
- keine Magie versuchen

# Nicht geeignet für

- Ersatz von init-Skripten
  ➤ systemd-sysv-generator(8)
- dynamische Konfigurationsdateien
  ➤ `ExecStartPre=` oder Service mit `Before=`

# Beispiele

- systemd-fstab-generator(8)

- systemd-debug-generator(8)

- systemd-getty-generator(8)

- systemd-sysv-generator(8)

- systemd.environment-generator(7)

# Source

- `man 7 systemd.generator`
