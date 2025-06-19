Class {
	#name : 'CircuitTest',
	#superclass : 'TestCase',
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'tests' }
CircuitTest >> testInterrupteursEtVannes [

	| i1 i2 securite ou non et vanne composants circuit interrupteurs vannes |
	
	"On crée tous les composants nécéssaires"
	i1 := Interrupteur new.
	i2 := Interrupteur new.
	securite := Interrupteur new.

	ou := Or new.
	non := Not new.
	et := And new.
	vanne := Vanne new.

	"Connexion des composants selon le schéma"
	ou setIn1: i1.
	ou setIn2: i2.

	non setIn: securite.

	et setIn1: ou.
	et setIn2: non.

	vanne setIn: et.

	composants := {i1. i2. securite. ou. non. et. vanne }.

	circuit := Circuit nom: 'TestCircuit' composants: composants.

	interrupteurs := circuit getIns.
	vannes := circuit getOuts.
	
	self assert: interrupteurs size equals: 3.
	self assert: (interrupteurs includes: i1).
	self assert: (interrupteurs includes: i2).
	self assert: (interrupteurs includes: securite).
	self assert: vannes size equals: 1.
	self assert: (vannes includes: vanne)
]
