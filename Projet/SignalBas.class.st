"
Les instances de la classe SignalBas correspondent à la valeur logique 0 (booléen false).
"
Class {
	#name : 'SignalBas',
	#superclass : 'Object',
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'controlling' }
SignalBas >> and: aSignalLogique [
	 ^ self
]

{ #category : 'logical operations' }
SignalBas >> not [
	^ SignalHaut
]

{ #category : 'controlling' }
SignalBas >> or: aSignalLogique [
	^ aSignalLogique.
]

{ #category : 'evaluating' }
SignalBas >> value [
	^ self class
]
