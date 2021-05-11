There is not a common CPP library that contains pure DBSCAN method. 
So, I built this project in order to cluster and plot
data points using DBSCAN here.
Here, we will need filesystem library(C++17 support), dlib library,
and gnuplot here.

## References ##
1: https://github.com/james-yoo/DBSCAN
(LICENSE file is included in this directory.)

## Requirements ##
dlib lib.
gnuplot.

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
