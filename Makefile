target: server1 server2 freelancer client out clean

server1:
	gcc -Iinclude freelancer.o -o freelancer.out
server2:
	gcc -Iinclude client.o -o client.out
freelancer:
	gcc -c -Iinclude src/freelancer.c
client:
	gcc -c -Iinclude src/client.c
clean:
	rm -rf *.o *.out
freelancer_run:
	./freelancer.out
client_run:
	./client.out
