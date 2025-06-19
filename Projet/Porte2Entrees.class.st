"
Elle est abstraite et factorise les portes logiques à 2 entrées (And, Or, ...) connectées
en entrée sur 2 composants (in1 et in2)
"
Class {
	#name : 'Porte2Entrees',
	#superclass : 'Porte',
	#instVars : [
		'in1',
		'in2'
	],
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'initialization' }
Porte2Entrees >> setIn1: comp [
	in1 := comp
]

{ #category : 'initialization' }
Porte2Entrees >> setIn2: comp [
	in2 := comp
]
