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
	"this is a class method !! that creates and initializes a new die with aNumber faces"
	| instance |
	instance := self new.
	instance faces: aNumber.
	^ instance 
	
	
	
	
]

{ #category : #arithmetic }
Die >> + aDiecable [
^ aDiecable sumWithDie: self


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

{ #category : #printing }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: '(' ;
		print: faces ;
		nextPutAll: ')'
]

{ #category : #'as yet unclassified' }
Die >> roll [ 
" use atRandom method that returns a nb betw one and the receiver"
	^ faces atRandom 
]

{ #category : #'as yet unclassified' }
Die >> sumWithDie: aDie [
^ DieHandle new
addDie: self;
addDie: aDie; yourself
]

{ #category : #arithmetic }
Die >> sumWithHandle: aDieHandle [
 | hd |
hd := DieHandle new.
aDieHandle dice
 do: [ :each | hd addDie: each ].
hd addDie: self.
^ hd

]
