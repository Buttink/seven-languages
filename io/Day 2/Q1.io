fib := method(value,
	if(value <= 1,
		1,
		fib(value-1) + fib(value-2)))

fibLoop := method(value,
	if(value <= 1,
		1,
		i := 0;
		for(i, 0, value,
			fib(i-1) + fib(i-2))))

fib(10) println
fibLoop(10) println
