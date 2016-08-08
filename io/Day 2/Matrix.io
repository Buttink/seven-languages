
Range

Number upTo := method(x,
	to(x-1))

Matrix := List clone

Object listOfSize := method(x, init,
	obj := list()
	1 to(x) foreach(v, obj append(init clone)))

Object matrix := method(x, y,
	obj := Matrix clone
	obj := obj appendSeq(listOfSize(y, listOfSize(x, 0))))

Matrix get := method(x, y,
	self at(x) at(y))

Matrix set := method(x, y, value,
	self at(x) atPut(y, value))

Matrix transpose := method(
	// I feel like this is awful io code....
	sizeX := self size
	sizeY := self at(0) size
	new := matrix(sizeX, sizeY)
	0 upTo(sizeX) foreach(x,
		0 upTo(sizeY) foreach(y,
			new at(x) atPut(y, self at(y) at(x))))
	return new)
