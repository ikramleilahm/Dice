Extension { #name : #Integer }

{ #category : #'*Dice' }
Integer >> D20 [
    | hd1 |
    "Create a new DieHandle with the specified number of 20-sided dice"
    hd1 := DieHandle new.
    1 to: self do: [ :i |
        hd1 addDie: (Die withFaces: 20).
    ].
    ^ hd1 

]
