compile:
	gnatchop -r -w nbody.gnat-2.gnat
	gnatmake -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp -f nbody.adb -o nbody.gnat-2.gnat_run 
	gcc-9 -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp nbody.adb
	gcc-9 -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp nbody_pck.adb
	gcc-9 -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp root.adb
	gcc-9 -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp systems.adb
	gnatbind-9 -x nbody.ali
	gnatlink-9 nbody.ali -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -o nbody.gnat-2.gnat_run

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./nbody.gnat-2.gnat_run 50000000" Ada n-body

run:
	./nbody.gnat-2.gnat_run 50000000
    
mem:
	/usr/bin/time -v ./nbody.gnat-2.gnat_run 50000000

valgrind:
	valgrind --tool=massif --stacks=yes ./nbody.gnat-2.gnat_run 50000000
