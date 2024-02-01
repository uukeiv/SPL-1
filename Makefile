
all:link

link:compile
	g++ -o bin/warehouse bin/Customer.o bin/Volunteer.o bin/Warehouse.o bin/Order.o bin/Action.o bin/main.o

compile: src/Customer.cpp src/Volunteer.cpp src/Warehouse.cpp src/Order.cpp src/Action.cpp src/main.cpp
	g++ -g -Wall -Weffc++ -std=c++11 -c -Iinclude -o bin/Customer.o src/Customer.cpp
	g++ -g -Wall -Weffc++ -std=c++11 -c -Iinclude -o bin/Volunteer.o src/Volunteer.cpp
	g++ -g -Wall -Weffc++ -std=c++11 -c -Iinclude -o bin/Warehouse.o src/Warehouse.cpp
	g++ -g -Wall -Weffc++ -std=c++11 -c -Iinclude -o bin/Order.o src/Order.cpp
	g++ -g -Wall -Weffc++ -std=c++11 -c -Iinclude -o bin/Action.o src/Action.cpp
	g++ -g -Wall -Weffc++ -std=c++11 -c -Iinclude -o bin/main.o src/main.cpp

clean:
	rm -f bin/*
