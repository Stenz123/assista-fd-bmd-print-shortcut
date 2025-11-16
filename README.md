# assista-fd-bmd-print-shortcut
A shortcut script for Assista

## Docu
### Zum Windows Autostart hinzufügen
1. `windows+r` drücken
2. `shell:startup` ok
3. .exe `fd_drucken_shortcut_vx_x.exe` datei in den Ordner ziehen.

### Code zu exe Datei compilieren
1. [Autohotkey](https://www.autohotkey.com/) herunterladen
2. Unter `Compile` die Source datei angeben und compilen.

### Maus Positionen etc. ändern
Wenn sich auf grund von BMD updates positionen geändert haben können diese geupdated werden.

Um die neuen Koordinaten der Buttons auszulesen, muss die function von zeile 53-60 auskommentiert werden (`/*` und `*/` löschen). Nun kann man mittels shift+print diese funktion starten und die Mausposition auslesen. Anschließend einfach die Koordinaten im Programm anpassen.
