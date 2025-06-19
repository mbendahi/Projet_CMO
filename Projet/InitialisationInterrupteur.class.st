Class {
	#name : 'InitialisationInterrupteur',
	#superclass : 'TestCase',
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'as yet unclassified' }
InitialisationInterrupteur >> testInterrupteurInitialize [
    | interrupteur |
    interrupteur := Interrupteur new.
    self deny: interrupteur state.
]
