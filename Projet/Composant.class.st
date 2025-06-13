"
Classe : Composant
La classe racine de la hiérarchie. Elle est abstraite et fournit une méthode id.
"
Class {
	#name : 'Composant',
	#superclass : 'Object',
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'accessing' }
Composant >> description [
	^ self class name , ' ', self getId 
]

{ #category : 'as yet unclassified' }
Composant >> getId [
	^ self hash asString
]
