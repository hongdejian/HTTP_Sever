httpserver:http_conn.o main.o
	g++  http_conn.o main.o -o httpserver -lpthread
main.o:main.cpp locker.h http_conn.h threadpool.h 
	g++ -c main.cpp  -o main.o -lpthread
http_conn.o:http_conn.cpp locker.h http_conn.h 
	g++ -c http_conn.cpp  -o http_conn.o

clean:
	rm -rf *.o httpserver