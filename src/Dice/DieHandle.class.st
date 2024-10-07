Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #adding }
DieHandle >> addDie: aDie [
	dice add: aDie


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
