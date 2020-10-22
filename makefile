target: freelancer server1 client server2 out clean

freelancer:
	gcc -c -Iinclude src/freelancer.c
server1:
	gcc -Iinclude freelancer.o -o freelancer.out
client:
	gcc -c -Iinclude src/client.c
server2:
	gcc -Iinclude client.o -o client.out
clean:
	rm -rf *.o *.out
freelancer_run:
	./freelancer.out
client_run:
	./client.out
