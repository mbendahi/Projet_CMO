"
Elle est connectée en entrée sur un composant (in)
"
Class {
	#name : 'Vanne',
	#superclass : 'Composant',
	#instVars : [
		'state',
		'in'
	],
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'public access' }
Vanne >> evaluate [
	^ in evaluate
]

{ #category : 'testing' }
Vanne >> isVanne [
	^ true.
]

{ #category : 'as yet unclassified' }
Vanne >> off [
	state:=false
]

{ #category : 'as yet unclassified' }
Vanne >> on [
	state:=true
]

{ #category : 'initialization' }
Vanne >> setIn: comp [
	in := comp.
]

{ #category : 'accessing' }
Vanne >> state [
	^ in state
]
