Class {
	#name : 'TestSignal',
	#superclass : 'TestCase',
	#instVars : [
		'signalBas',
		'signalHaut',
		'signalH_H',
		'signalH_B',
		'signalB_H',
		'signalB_B'
	],
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'as yet unclassified' }
TestSignal >> testAndSignal [
	signalH_H := SignalHaut new and: SignalHaut new.
	self assert: signalH_H.
	
	signalH_B := SignalHaut new and: SignalBas new.
	self deny: signalH_B.
	
	signalB_H := SignalBas new and: SignalHaut new.
	self deny: signalB_H.

	signalB_B := SignalBas new and: SignalBas new.
	self deny: signalB_B.

]

{ #category : 'as yet unclassified' }
TestSignal >> testNotValueSignal [
	self deny: SignalHaut new not value.
	self assert: SignalBas new not value.
]

{ #category : 'as yet unclassified' }
TestSignal >> testOrSignal [
	signalH_H := SignalHaut new or: SignalHaut new.
	self assert: signalH_H.
	
	signalH_B := SignalHaut new or: SignalBas new.
	self assert: signalH_B.
	
	signalB_H := SignalBas new or: SignalHaut new.
	self assert: signalB_H.

	signalB_B := SignalBas new or: SignalBas new.
	self deny: signalB_B.

]

{ #category : 'as yet unclassified' }
TestSignal >> testValueSignal [
	self assert: SignalHaut new value.
	self deny: SignalBas new value.
]
