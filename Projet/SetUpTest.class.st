Class {
	#name : 'SetUpTest',
	#superclass : 'TestCase',
	#instVars : [
		'i1',
		'i2',
		'securite',
		'ou',
		'non',
		'et',
		'vanne',
		'or',
		'not',
		'and'
	],
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'running' }
SetUpTest >> setUp [
    super setUp.

    i1 := Interrupteur new.
    i2 := Interrupteur new.
    securite := Interrupteur new.

    ou := Or new.
    non := Not new.
    et := And new.
    vanne := Vanne new.

    "entrées dans le OR"
    ou setIn1: i1.
    ou setIn2: i2.

	"entrée dans le NOT"
    non setIn: securite.

	"entrées dans le AND"
    et setIn1: ou.
    et setIn2: non.

	"entrée dans la vanne"
    vanne setIn: et.

]

{ #category : 'tests' }
SetUpTest >> testEtatCircuitAvecInterrupteursAllumes [
    i1 on.
    i2 on.
    self assert: ou state.

]

{ #category : 'tests' }
SetUpTest >> testEtatCircuitAvecInterrupteursEteints [
    i1 off.
    i2 off.
    self deny: ou state.

]

{ #category : 'tests' }
SetUpTest >> testEtatCircuitAvecSeulementInterrupteur1Allume [
    i1 off.
    i2 on.
    self assert: ou state.

]

{ #category : 'tests' }
SetUpTest >> testInterrupteur1AllumeEtSecuriteOff [
    i1 on. 
	 i2 off. 
	 securite off.
    self assert: vanne state.

]

{ #category : 'tests' }
SetUpTest >> testInterrupteur1EtSecuriteOn [
    i1 on. i2 off. securite on.
    self deny: vanne state.

]

{ #category : 'tests' }
SetUpTest >> testInterrupteurs1Et2EtSecuriteOn [
    i1 on. i2 on. securite on.
    self deny: vanne state.

]

{ #category : 'tests' }
SetUpTest >> testSecuriteOffBloqueLaVanne [
    i1 on. i2 on. securite off.
    self assert: vanne state.

]

{ #category : 'running' }
SetUpTest >> testSetUp [
    super setUp.

    i1 := Interrupteur new.
    i2 := Interrupteur new.
    securite := Interrupteur new.

    ou := Or new.
    non := Not new.
    et := And new.
    vanne := Vanne new.

    "entrées dans le OR"
    ou setIn1: i1.
    ou setIn2: i2.

	"entrée dans le NOT"
    non setIn: securite.

	"entrées dans le AND"
    et setIn1: or.
    et setIn2: not.

	"entrée dans la vanne"
    vanne setIn: and.

]

{ #category : 'tests' }
SetUpTest >> testToutEteint [
    i1 off. i2 off. securite off.
    self deny: vanne state.

]
