build: main.o Initialisation.o pugixml.o Game.o
	g++ main.o Initialisation.o pugixml.o Game.o -o build -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

main.o: main.cpp
	g++ -c -std=c++0x main.cpp

Initialisation.o: Initialisation.h Initialisation.cpp
	g++ -c -std=c++0x Initialisation.h Initialisation.cpp

pugixml.o: ./data/lib/pugixml/pugixml.cpp ./data/lib/pugixml/pugixml.hpp
	g++ -c -std=c++0x ./data/lib/pugixml/pugixml.cpp ./data/lib/pugixml/pugixml.hpp

Game.o: Game.h Game.cpp
	g++ -c -std=c++0x Game.h Game.cpp

clean:
	rm -f *.o *.gch
#build: main.o pugixml.o Initialisation.o
#	g++ -o game main.o pugixml.o Initialisation.o
#	echo build: done.

#build.o: Initialisation.h Initialisation.cpp ./data/lib/pugixml/pugixml.cpp ./data/lib/pugixml/pugixml.hpp main.cpp
#	g++ -c -std=c++0x ./data/lib/pugixml/pugixml.cpp ./data/lib/pugixml/pugixml.hpp Initialisation.cpp main.cpp
