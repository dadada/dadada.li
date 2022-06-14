---
title: Gitlab als Archivar
data: 2022-06-14
---

# 📚 Gitlab als Archivar 📔

Eine kleine Spielerei zur Datensicherung.

🦣 @dadada@chaos.social

---

## Ausgangslage

Hochschulpolitik produziert viele Pads
  - Notizen
  - Protokolle
  - Todolisten

Pads verschwinden unerwartet
  - Server tot
  - Niemand erinnert sich mehr an den Link
  - Etherpad kann Löschfristen 🙈

Konsequenz:

---


```
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥DATEN WEG🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
```


---

## Lösung 1: Copy-Paste

- $Person kopiert ab und zu das Pad irgendwo hin
- $Person braucht muss dran denken, ist aber etwas verplant

```
Pad           Wiki
+-------+     +-------+
|- Info |     |- Info |
|  ...  |     |  ...  |
|- Hüte |---->|- Hüte |
|  ...  |     |  ...  |
|- Ideen|     |- Ideen|
|  ...  |     |  ...  |
+-------+     +-------+
```

---

## Lösung 2: Git und Update-Script

- Pad-URLs in Datei
- Pads als Plaintext exportieren
- In Git einchecken

```
+------------------------+     +------+
|- http://pad.url/p/pad  |     | git  |
|- http://pad.url/p/pad1 |---->| \pad |
|           ...          |     | \pad1|
                               |  ... |
```

[Update-Script](https://git.fginfo.tu-bs.de/fginfo/pad-archiver/-/blob/eac632d0cc68c7a9383a334088beadf00b930284/update)

---

## Lösung 3: CI

- Scheduled Task führt Update-Script aus
- Gitlab committet Änderungen automatisch

```
+--------------+            +-----------+
| pad-archiver |-----CI---->| Container |
+--------------+            +-----------+
 |                               |
 |`include: lib/gitlab-ci.yml    |`image: ...
 v                               v
+-----------+             +---------------+
| pads-repo |--Scheduled->| Docker-Runner |
|           |<--Commits---|               |
+-----------+             +---------------+
```

[CI-Config](https://git.fginfo.tu-bs.de/fginfo/pad-archiver/-/tree/eac632d0cc68c7a9383a334088beadf00b930284)
<!-- Frage: andere unkonventionelle Spielereien mit Gitlab -->

---

## Lösung 4: Rewrite in Go

- Empfehlung: go-git - Git nativ in Go
  - versucht kompatibel zu Git's Plumbing und Porcelain zu sein
  - wird unter Anderem von Keybase und Gitea benutzt
- LOC ist jetzt ein bisschen sehr viel mehr ...

```
             ,_---~~~~~----._             +--------------+
       _,,_,*^____      _____``*g*\"*,    | THIS IS FINE |
      / __/ /'     ^.  /      \ ^@q   f   +--------------+                
    [  @f | @))    |  | @))   l  0 _/     //
     \`/   \~____ / __ \_____/    \      //
       |           _l__l_           I    `
       }          [______]           I  
       ]            | | |            |  
       ]             ~ ~             |  
       |                            |   
        |                           |   
```

[Rewritten](https://git.fginfo.tu-bs.de/fginfo/pad-archiver)
