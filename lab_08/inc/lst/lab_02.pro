DOMAINS
	surname, phone = symbol
	city = symbol
	street = symbol
	house = integer
	flat = integer
	address = address_struct(city, street, house, flat)
	brand = symbol
	color = symbol
	price, area = integer
	bank = symbol
	car_number = symbol
	number_account = integer
	sum = integer
	type = symbol
	property = car(price, brand, color, car_number);
		   building(price, address);
		   region(price, area);
		   water_transport(price, color)

PREDICATES
	phonebook(surname, phone, address)
	contributor(surname, bank, number_account, sum)
	owner(surname, property)
	is_subject_property(surname, type)
	subject_property_price(surname, type, price)
	property_cost(surname, type, price)
	sum_cost(surname, price)

CLAUSES	
	phonebook("Ivanov", "412314", address_struct("Moscow", "Lenina", 3, 3)).
	phonebook("Ivanova", "124141", address_struct("Moscow","Polyanka", 18, 34)).
	phonebook("Petrov", "12455325", address_struct("Tver","Lenina", 1, 1)).
	phonebook("Hanin", "45346", address_struct("Klin", "Stalina", 40, 3)).
	phonebook("Hanina", "923923", address_struct("Klin", "Rimskaya", 1, 33)).
	phonebook("Mehov", "53124142", address_struct("Zelenograd", "Okrugnaya", 2, 22)).
	phonebook("Danin", "214211", address_struct("Vena", "Freda", 50, 1)).
	
	contributor("Hanin", "SBER", 1, 12312).
	contributor("Mehov", "SBER", 2, 4324234).
	contributor("Danin", "Alpha", 3, 235324).
	contributor("Hanina", "Ros", 4, 23324).
	contributor("Ivanov", "Ros", 5, 23421).
	contributor("Ivanova", "Yandex", 6, 333).

	owner("Danin", car(234124, "Mitsubishi", gray, "A121AA777")).
	owner("Hanina", car(235235, "Lada", cian, "A211AA777")).
	owner("Hanina", car(21341, "Audi", black, "A222AA777")).
	owner("Petrov", car(246426, "Lada", white,"A322AA777")).
	owner("Mehov", car(346342, "Nissan", red,"A232AA777")).
	owner("Mehov", car(2462235, "Lada", red,"A223AA777")).

	owner("Ivanov", building(4214124, address_struct("Tver", "Lenina", 1, 1))).
	owner("Petrov", building(235214, address_struct("Moscow", "Azimova", 12, 13))).
	owner("Hanina", building(3255134, address_struct("Vena", "Igla", 11, 11))).

	owner("Ivanov", region(4325325, 22)).
	owner("Ivanova", region(4325325, 22)).
	owner("Hanina", region(1011010, 44)).

	owner("Danin", water_transport(4232324, yellow)).
	owner("Mehov", water_transport(241321, green)).
	owner("Petrov", water_transport(92832, white)).

	is_subject_property(Surname, Type) :-
		subject_property_price(Surname, Type, _).

	subject_property_price(Surname, region, Price) :-
		owner(Surname, region(Price,_)).
	subject_property_price(Surname, building, Price) :-
		owner(Surname, building(Price, _)).
	subject_property_price(Surname, water_transport, Price) :-
		owner(Surname, water_transport(Price, _)).
	subject_property_price(Surname, car, Price) :-
		owner(Surname, car(Price, _, _, _)).

	property_cost(Surname, car, Cost) :-
		owner(Surname, car(Cost, _, _, _)), !.
	property_cost(Surname, building, Cost) :-
		owner(Surname, building(Cost, _)), !.
	property_cost(Surname, region, Cost) :-
		owner(Surname, region(Cost, _)), !.
	property_cost(Surname, water_transport, Cost) :-
		owner(Surname, water_transport(Cost, _)), !.
	property_cost(_, _, 0).

	sum_cost(Surname,Cost) :- 
		property_cost(Surname, "building", Cost1),
		property_cost(Surname, "land", Cost2),
		property_cost(Surname, "water_transport", Cost3),
		property_cost(Surname, "car", Cost4),
		Cost = Cost1 + Cost2 + Cost3 + Cost4.
goal
	subject_property_price("Ivanov", Type, Price).