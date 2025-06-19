"
Porte logique ET :

A	B	S 
0	0	0
0	1	0
1	0	0
1	1	1
"
Class {
	#name : 'And',
	#superclass : 'Porte2Entrees',
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'public access' }
And >> evaluate [ 
	^ (in1 evaluate) and: (in2 evaluate)
]

{ #category : 'testing' }
And >> isAnd [
	^ true.
]

{ #category : 'accessing - structure variables' }
And >> state [
	^ in1 state and: in2 state
]
