
List myAverage := method(
	average := 0
	self foreach(v,
		if(v hasProto(Number),
			average = average + v,
			Exception raise("List must contain Numeric values"))
	average / (self size)))

list(1,2,3,4) myAverage println
