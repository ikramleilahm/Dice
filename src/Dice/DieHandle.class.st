Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #arithmetic }
DieHandle >> + aDieHandle [

	| newHandle |
	newHandle := DieHandle new.
	newHandle dice: (self dice copyWithAll: aDieHandle dice).
	^ newHandle
	

]

{ #category : #adding }
DieHandle >> addDie: aDie [
	dice add: aDie


]

{ #category : #accessing }
DieHandle >> dice [

	^ dice
]

{ #category : #accessing }
DieHandle >> dice: anObject [

	dice := anObject
]

{ #category : #'as yet unclassified' }
DieHandle >> diceNumber [
	^ dice size 
]

{ #category : #initialization }
DieHandle >> initialize [ 
	super initialize.
	dice := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
DieHandle >> roll [

	| res |
	res := 0.
	dice do: [ :each | res := res + each roll ].
	^ res
]
