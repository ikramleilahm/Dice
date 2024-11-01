Extension { #name : #Integer }

{ #category : #'*Dice' }
Integer >> D10 [

	^ self D: 10
]

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

{ #category : #'*Dice' }
Integer >> D4 [
^ self D: 4
]

{ #category : #'*Dice' }
Integer >> D6 [

	^ self D: 6
]

{ #category : #'*Dice' }
Integer >> D: anInteger [

	| hdl |
	"Create a new DieHandle with the specified number of 20-sided dice"
	hdl := DieHandle new.
	1 to: self do: [ :i | hdl addDie: (Die withFaces: anInteger ) ].
	^ hdl
	
]
