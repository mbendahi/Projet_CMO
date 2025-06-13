Class {
	#name : 'InitialisationInterrupteur',
	#superclass : 'TestCase',
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'as yet unclassified' }
InitialisationInterrupteur >> interrupteurInitialize [
    | interrupteur state |
    interrupteur := Interrupteur new.
    interrupteur off.
    self deny: interrupteur state.
]
