compile:
	cp nbody.python3 nbody.py
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/bin/python3 -OO nbody.py 50000000" Python n-body

run:
	/usr/bin/python3 -OO nbody.py 50

mem:
	/usr/bin/time -v /usr/bin/python3 -OO nbody.py 50
