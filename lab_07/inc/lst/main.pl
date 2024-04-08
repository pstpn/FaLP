DOMAINS
	surname, phone, city, street = symbol
	house, flat = integer
	address = addr(city, street, house, flat)

	mark, color, car_number = symbol
	cost = integer

PREDICATES
	book(surname, phone, address)
	car(surname, mark, color, cost, car_number)
	car_with_book(surname, phone, city, mark, color)

CLAUSES
	book("Pasnov", "1234321", addr("Moscow", "Vernadskiy", 13, 1)).
	book("Jukov", "4232134", addr("Sochi", "Svoboda", 1, 32)).
	book("Drozd", "8172910", addr("Moscow", "Zeleniy prospekt", 2, 133)).
	book("Granin", "984938", addr("Tver", "Bikov", 3, 41)).
	book("Hunov", "7373732", addr("Gorsk", "Stalin", 2, 11)).

	car("Pasnov", "Xiaomi", "white", 2039201, "K213YE777").
	car("Jukov", "Range rover", "gray", 4542543, "K777KK555").
  	car("Drozd", "Audi", "red", 3232421, "P546AA678").
  	car("Hunov", "BMW", "red", 7382923, "M555CM739").
  	car("Hunov", "Bugatti", "black", 474932789, "A111AA11").

	car_with_book(Surname, Phone, City, Mark, Color) :-
    		car(Surname, Mark, Color, _, _),
    		book(Surname, Phone, addr(City, _, _, _)).