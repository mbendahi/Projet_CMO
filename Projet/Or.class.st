"
Porte logique OR :

A	B	S 
0	0	0
0	1	1
1	0	1
1	1	1
"
Class {
	#name : 'Or',
	#superclass : 'Porte2Entrees',
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'public access' }
Or >> evaluate [
	^ (in1 evaluate) or: (in2 evaluate)
]

{ #category : 'testing' }
Or >> isOr [ 
	^ true.
]

{ #category : 'accessing - structure variables' }
Or >> state [
	^ in1 state or: in2 state
]
