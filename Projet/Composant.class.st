"
Classe : Composant
La classe racine de la hiérarchie. Elle est abstraite et fournit une méthode id.
"
Class {
	#name : 'Composant',
	#superclass : 'Object',
	#instVars : [
		'blElement',
		'position'
	],
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'accessing' }
Composant >> blElement [
    ^ blElement

]

{ #category : 'accessing' }
Composant >> blElement: aBlElement [
    blElement := aBlElement

]

{ #category : 'accessing' }
Composant >> description [
	^ self class name , ' (', self getId, ')'
]

{ #category : 'drawing' }
Composant >> drawOn: aSpace [
    | rect composant |

    composant := BlElement new.

    rect := BlElement new
			"geometry: BlRectangleGeometry new;"
    	 	width: 5; height: 5;
			position: self position;
    		background: Color green;
			yourself.

"    label := BlTextElement new.
    label text: self class name.
    label constraintsDo: [:c | c frame horizontal alignCenter ].
    label constraintsDo: [:c | c frame vertical alignCenter ]."
"
    composant addChild: rect."
"    composant addChild: label."

	 aSpace root addChild: rect

]

{ #category : 'as yet unclassified' }
Composant >> getId [
	^ self hash asString
]

{ #category : 'testing' }
Composant >> isAnd [
	^ false.
]

{ #category : 'testing' }
Composant >> isInterrupteur [
    ^ false.
]

{ #category : 'testing' }
Composant >> isNot [
	^ false.
]

{ #category : 'testing' }
Composant >> isOr [
	^ false.
]

{ #category : 'testing' }
Composant >> isVanne [
	^ false.
]

{ #category : 'accessing' }
Composant >> position [
	^ position ifNil: [ position := 0@0 ]
]

{ #category : 'accessing' }
Composant >> position: aPoint [
	position := aPoint
]

{ #category : 'accessing - structure variables' }
Composant >> state [
	^ false
]
