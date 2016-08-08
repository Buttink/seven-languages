
actual := Random value
actual := (actual * 100) ceil

prev := 1000

10 repeat(
	guess := File standardInput readLine asNumber
	if(guess == actual,
			File standardOutput write("correct!")
			break,
			if((guess - actual) abs < (prev - actual) abs,
					File standardOutput write("hotter!\n"),
					File standardOutput write("colder!\n")))
	prev := guess)
