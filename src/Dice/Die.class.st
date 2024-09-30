Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: aNumber [
	"this is a class method !! that creates and initializes a new die with 	aNumber faces"
	| instance |
	instance := self new.
	instance faces: aNumber.
	^ instance 
	
	
	
	
]

{ #category : #accessing }
Die >> faces [ 
^ faces 
]

{ #category : #accessing }
Die >> faces: anInteger [
	faces:= anInteger 
	
]

{ #category : #accessing }
Die >> initialize [ 
	super initialize.
	faces := 6
]

{ #category : #'as yet unclassified' }
Die >> roll [ 
" use atRandom method that returns a nb betw one and the receiver"
	^ faces atRandom 
]
