Class {
	#name : 'TestEvaluate',
	#superclass : 'TestCase',
	#instVars : [
		'securite',
		'non',
		'i1',
		'i2',
		'et',
		'ou'
	],
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'tests' }
TestEvaluate >> testEvaluateAnd [
	i1 := Interrupteur new.
	i2 := Interrupteur new.
	et := And new.
	
	et setIn1: i1.
	et setIn2: i2.
	
	i1 off.
	i2 off.
	self deny: et evaluate.
	
	i1 on.
	i2 off.
	self deny: et evaluate.
	
	i1 off.
	i2 on.
	self deny: et evaluate.
	
	i1 on.
	i2 on.
	self assert: et evaluate.
]

{ #category : 'tests' }
TestEvaluate >> testEvaluateNot [
	securite := Interrupteur new.
	non := Not new.
	
	non setIn: securite.
	
	self assert: non evaluate
	
]

{ #category : 'tests' }
TestEvaluate >> testEvaluateOr [
	i1 := Interrupteur new.
	i2 := Interrupteur new.
	ou := Or new.
	
	ou setIn1: i1.
	ou setIn2: i2.
	
	i1 off.
	i2 off.
	self deny: ou evaluate.
	
	i1 on.
	i2 off.
	self assert: ou evaluate.
	
	i1 off.
	i2 on.
	self assert: ou evaluate.
	
	i1 on.
	i2 on.
	self assert: ou evaluate.
]

{ #category : 'tests' }
TestEvaluate >> testEvaluateValue [
	i1 := Interrupteur new.
	
	i1 off.
	self deny: i1 evaluate.
	
	i1 on.
	self assert: i1 evaluate.
]
