"
Elle n'a pas d'entrée
"
Class {
	#name : 'Interrupteur',
	#superclass : 'Composant',
	#instVars : [
		'state',
		'BlElement'
	],
	#classInstVars : [
		'blElement'
	],
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'public access' }
Interrupteur >> evaluate [
	| signal |
	signal := state
		          ifTrue: [ SignalHaut new ]
		          ifFalse: [ SignalBas new ].
	^ signal
]

{ #category : 'initialization' }
Interrupteur >> initialize [
 	self off
]

{ #category : 'testing' }
Interrupteur >> isInterrupteur [
    ^ true.
]

{ #category : 'as yet unclassified' }
Interrupteur >> off [
	state := false
]

{ #category : 'as yet unclassified' }
Interrupteur >> on [
	state := true
]

{ #category : 'as yet unclassified' }
Interrupteur >> state [
	^ state
]
