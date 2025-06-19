"
• Un Circuit est composé d’instances de Composant au travers du rôle composants. Les composants seront stockés dans une collection.
• Un circuit comporte, en sus de sa description UML, une collection d’interrupteurs et une collection de sorties de circuit (e.g., des vannes).
• Une méthode de classe de Circuit permet d’instancier un circuit en lui passant une collection de composants connectés (formé comme précédemment.):
– Vous devez ajouter les composants dans la liste composants du nouveau circuit,
– trier les composants par identifiant,
– trier les interrupteurs et les sorties et les ajouter respectivement aux collections d’interrupteurs et de vannes.
"
Class {
	#name : 'Circuit',
	#superclass : 'Object',
	#instVars : [
		'composants',
		'interrupteurs',
		'sorties',
		'nom'
	],
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'as yet unclassified' }
Circuit class >> nom: unNom composants: uneCollection [
    | circuit |
    circuit := self new.
    circuit initializeNom: unNom composants: uneCollection.
    ^ circuit

]

{ #category : 'accessing' }
Circuit >> description [
    ^ 'Circuit: ', nom , ' avec ', composants size printString, ' composants.'
]

{ #category : 'drawing' }
Circuit >> drawOn: aSpace [
    composants do: [:c |
        c drawOn: aSpace.
    ].

]

{ #category : 'as yet unclassified' }
Circuit >> getIns [
    ^composants select: [:c | c isInterrupteur ].
]

{ #category : 'as yet unclassified' }
Circuit >> getOuts [
    ^ composants select: [:c | c isVanne ]
]

{ #category : 'initialization' }
Circuit >> initializeNom: unNom composants: uneCollection [
    nom := unNom.
    composants := uneCollection asSortedCollection: [:a :b | a getId < b getId ].
    interrupteurs := composants select: [:c | c isInterrupteur ].
    sorties := composants select: [:c | c isVanne ].
]

{ #category : 'as yet unclassified' }
Circuit >> nomenclature [
    ^ composants collect: [:c | c description , ' ' ].

]

{ #category : 'as yet unclassified' }
Circuit >> traceEtat [
    composants do: [:c |
        Transcript
            nextPutAll: c description;
            nextPutAll: ' : ';
            nextPutAll: c state printString;
            cr.
    ].



]
