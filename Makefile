CXXFLAGS = -Wall -O3
LDLIBS = -lSDL2

.PHONY: all clean

sequential: sequential.cpp window.o
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDLIBS)

window.o: window.cpp window.h
	$(CXX) $(CXXFLAGS) -c $<

clean:
	rm -f sequential *.o

