We choose to apply our applicatons only on the first data file.
There is not a common CPP library that contains pure DBSCAN method. So, we need 
some extra refrences here.

References:
1: https://github.com/james-yoo/DBSCAN
(LICENSE file is included in this directory.)

###
```
#Ubuntu terminal:
git clone https://github.com/mukoedo1993/DBSCAN_algorithm
cd DBSCAN_algorithm
mkdir build && cd build && cmake ..; cmake --build . --config Release
#Wait for a few minutes for the make command to finish.
#Run:
./dbscan_cluster ../data <epsilon> <minimum_points> #LINE 7
#e.g.: epsilon = 0.1 minimum_points = 10
# Then, just follow the instructions.
```
