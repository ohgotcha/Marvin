tests
testDelegationChain

	| parentOfParent parent2 |

	parentOfParent := MarvinPrototype new.
	parent2 := MarvinPrototype new.
	parent AddReadWriteParentSlot: #parentOfParent value: parentOfParent.

	self assert: object parentOfParent equals: parentOfParent.
	self assert: (object parentOfParent: parent2) equals: object.
	self assert: object parentOfParent equals: parent2.