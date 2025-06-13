"
Elle est connectée en entrée sur un composant (in)
"
Class {
	#name : 'Vanne',
	#superclass : 'Composant',
	#instVars : [
		'state'
	],
	#category : 'Projet',
	#package : 'Projet'
}

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
]

{ #category : 'accessing' }
Vanne >> state [
	^ state
]
