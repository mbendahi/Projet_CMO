"
Elle n'a pas d'entrée
"
Class {
	#name : 'Interrupteur',
	#superclass : 'Composant',
	#instVars : [
		'state'
	],
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'initialization' }
Interrupteur >> initialize [
 	self off
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
