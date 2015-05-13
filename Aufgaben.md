Zu 2. :
```
    // int koeffizient = { 33, 2, 7 }
    00: 21 00 00 00
    04: 02 00 00 00
    08: 07 00 00 00
```

Zu 4. : Bei der Berechnung des gegebenen quadratischen Polynoms braucht man 2
Multiplikationen. Allgemein: Mit dem Horner-Schema braucht man n
Multiplikationen, während es bei der naiven Herangehensweise O(n²)
Multiplikationen sind.

Zu 5. : Die Berechnung eines Polynoms nach dem Horner-Schema ist allgemein auch
in einer Schleife durchführbar. Dazu wird in einem Register das aktuelle
Zwischenergebnis akkumuliert, das in jedem Schritt mit x multipliziert und auf
das der entsprechende Koeffizient addiert wird (abgesehen vom ersten und letzten
Koeffizienten). Dazu müssen die Koeffizienten in einem Feld abgelegt sein,
dessen Größe ebenfalls bekannt ist.
