
Range

Block := List clone

Object listOfSize := method(x, init,
	obj := list()
	1 to(x) foreach(v, obj append(init)))

Object dim := method(x, y,
	obj := Block clone
	obj appendSeq listOfSize(y, listOfSize(x, 0)))

Block get := method(x, y,
	self at(x) at(y))

Block set := method(x, y, value,
	self at(x) atPut(y, value))

data := dim(2,2)

data type println

data set(1,1, "blah")

data println
data get(1,1) println

