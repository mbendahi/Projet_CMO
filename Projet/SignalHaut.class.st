"
Les instances de la classe SignalHaut correspondent à la valeur logique 1 (booléen true)
"
Class {
	#name : 'SignalHaut',
	#superclass : 'Object',
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'controlling' }
SignalHaut >> and: aSignalLogique [
	^ aSignalLogique value.
]

{ #category : 'logical operations' }
SignalHaut >> not [
	^ SignalBas
]

{ #category : 'controlling' }
SignalHaut >> or: aSignalLogique [
	^ self class
]

{ #category : 'evaluating' }
SignalHaut >> value [
	^ self class
]
