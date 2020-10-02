!classDefinition: #AlejandroElEncargado category: 'PrimerClase'!
DenotativeObject subclass: #AlejandroElEncargado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AlejandroElEncargado class' category: 'PrimerClase'!
AlejandroElEncargado class
	instanceVariableNames: ''!

!AlejandroElEncargado class methodsFor: 'as yet unclassified' stamp: 'SF 10/1/2020 21:28:46'!
saludoCon: unSaludo

	^unSaludo, ' Sergio'! !


!classDefinition: #GuardiaDeSkyrim category: 'PrimerClase'!
DenotativeObject subclass: #GuardiaDeSkyrim
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GuardiaDeSkyrim class' category: 'PrimerClase'!
GuardiaDeSkyrim class
	instanceVariableNames: 'conversacionesTenidas respuestasPosibles'!

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'FL 10/2/2020 20:00:43'!
conseguirRespuesta
	^respuestasPosibles at: (conversacionesTenidas min: (respuestasPosibles size))! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'FL 10/2/2020 19:59:48'!
conversar
	self recordarConversacion.
	^self conseguirRespuesta.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'FL 10/2/2020 20:03:19'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	conversacionesTenidas := 0.
	respuestasPosibles := #('Hola!!' 'Todo bien?' 'Algun problema?' '...' ).! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'FL 10/2/2020 19:59:35'!
recordarConversacion
	conversacionesTenidas := conversacionesTenidas + 1.
! !

GuardiaDeSkyrim initializeAfterFileIn!
