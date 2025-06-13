Class {
	#name : 'TestDescriptionComposant',
	#superclass : 'TestCase',
	#category : 'Projet',
	#package : 'Projet'
}

{ #category : 'tests' }
TestDescriptionComposant >> testDescriptionAnd [
    | i description |
    i := And new.
    description := i description.
    self assert: (description beginsWith: 'And').
]

{ #category : 'tests' }
TestDescriptionComposant >> testDescriptionComposant [
    | i description |
    i := Composant new.
    description := i description.
    self assert: (description beginsWith: 'Composant').
]

{ #category : 'tests' }
TestDescriptionComposant >> testDescriptionInterrupteur [
    | i description |
    i := Interrupteur new.
    description := i description.
    self assert: (description beginsWith: 'Interrupteur').
]

{ #category : 'tests' }
TestDescriptionComposant >> testDescriptionNot [
    | i description |
    i := Not new.
    description := i description.
    self assert: (description beginsWith: 'Not').
]

{ #category : 'tests' }
TestDescriptionComposant >> testDescriptionOr [
    | i description |
    i := Or new.
    description := i description.
    self assert: (description beginsWith: 'Or').
]

{ #category : 'tests' }
TestDescriptionComposant >> testDescriptionPorte [
    | i description |
    i := Porte new.
    description := i description.
    self assert: (description beginsWith: 'Porte').
]

{ #category : 'tests' }
TestDescriptionComposant >> testDescriptionPorte2Entrees [
    | i description |
    i := Porte2Entrees new.
    description := i description.
    self assert: (description beginsWith: 'Porte2Entrees').
]

{ #category : 'tests' }
TestDescriptionComposant >> testDescriptionVanne [
    | i description |
    i := Vanne new.
    description := i description.
    self assert: (description beginsWith: 'Vanne').
]
