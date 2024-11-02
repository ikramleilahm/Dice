Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieTest >> testAddADieAndHandle [
	| hd |
	hd := (Die withFaces: 6)
	+
	(DieHandle new 
	addDie: (Die withFaces: 10);
	yourself).
	
	self assert: hd diceNumber equals: 2
	
]

{ #category : #tests }
DieTest >> testAddTwoDice [
	| hd |
	hd := (Die withFaces: 6) + (Die withFaces: 6).
	self assert: hd diceNumber equals: 2.
	
	
]

{ #category : #tests }
DieTest >> testCreationIsOk [ 
self assert: (Die withFaces: 20) faces equals: 20

]

{ #category : #tests }
DieTest >> testInitializeIsOk [
self assert: Die new faces equals: 6
]

{ #category : #tests }
DieTest >> testRolling [
	| d |
	d := Die new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6 ) ]

]
