"
Une connection en entrée sur un composant (in)
"
Class {
	#name : 'Not',
	#superclass : 'Porte',
	#instVars : [
		'in'
	],
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'public access' }
Not >> evaluate [ 
	^ in evaluate not 
]

{ #category : 'testing' }
Not >> isNot [
	^ true.
]

{ #category : 'initialization' }
Not >> setIn: comp [
	in := comp
]

{ #category : 'accessing - structure variables' }
Not >> state [
   ^ (in state) not
]
