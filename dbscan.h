#ifndef DBSCAN_H
#define DBSCAN_H

#include <vector>
#include <cmath>

#define UNCLASSIFIED -1
#define CORE_POINT 1
#define BORDER_POINT 2
#define NOISE -2
#define SUCCESS 0
#define FAILURE -3

using namespace std;


struct Point
{
  Point(float x_, float y_, int clusterID_ ): x(x_), y(y_), clusterID(clusterID_)
  {

  }
    float x; float y;  // X, Y position
    int clusterID;  // clustered ID
};

class DBSCAN {
public:    
    DBSCAN(const unsigned int minPts, const float eps, const vector<Point>& points):
    m_points(points), m_pointSize(points.size()), m_minPoints(minPts), m_epsilon(eps)
    {}

    ~DBSCAN() = default;

    void run() ;
    const vector<int> calculateCluster(const Point& point) const;
    int expandCluster(Point point, const int clusterID);
    inline double calculateDistance(const Point& pointCore, const Point& pointTarget) const;

    int getTotalPointSize() const {return m_pointSize;}
    int getMinimumClusterSize() const {return m_minPoints;}
    int getEpsilonSize() const {return m_epsilon;}
    vector<Point> m_points;
private:
    const unsigned int m_pointSize;
    const unsigned int m_minPoints;
    const float m_epsilon;
};

#endif // DBSCAN_H
