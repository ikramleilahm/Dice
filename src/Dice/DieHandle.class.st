Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #arithmetic }
DieHandle >> + aDiecable [
^ aDiecable sumWithHandle: self
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

{ #category : #accessing }
DieHandle >> faces [

	| totalfaces |
	totalfaces := 0.
	dice do: [ :each | totalfaces := totalfaces + each faces ].
	^ totalfaces
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

{ #category : #'as yet unclassified' }
DieHandle >> sumWithDie: aDie [
 | handle |
 handle := self class new.
 self dice do: [ :each | handle addDie: each ].
 handle addDie: aDie.
 ^ handle
]

{ #category : #arithmetic }
DieHandle >> sumWithHandle: aDieHandle [
	"Returns a new handle that represents the addition of the receiver and the argument."

	| handle |
	handle := self class new.
	self dice do: [ :each | handle addDie: each ].
	aDieHandle dice do: [ :each | handle addDie: each ].
	^ handle
]
