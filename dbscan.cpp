#include "dbscan.h"
#include <stdexcept>
int DBSCAN::run()
{
    int clusterID = 1;
    for(auto iter = m_points.cbegin(); iter != m_points.cend(); ++iter)
    {
        if ( iter->clusterID == UNCLASSIFIED )
        {
            if ( expandCluster(*iter, clusterID) != FAILURE )
            {
                clusterID += 1;
            }
        }
    }

    return 0;
}

int DBSCAN::expandCluster(Point point, int clusterID)
{    
    vector<int> clusterSeeds = calculateCluster(point);

    if ( clusterSeeds.size() < m_minPoints )
    {
        point.clusterID = NOISE;
        return FAILURE;
    }
    else
    {
        int index = 0, indexCorePoint = 0;
        vector<int>::iterator iterSeeds;
        for(auto iterSeeds = clusterSeeds.cbegin(); iterSeeds != clusterSeeds.cend(); ++iterSeeds)
        {
            m_points[*iterSeeds].clusterID = clusterID;
            if (m_points[*iterSeeds].x == point.x && m_points[*iterSeeds].y == point.y  )
            {
                indexCorePoint = index;
            }
            ++index;
        }
        clusterSeeds.erase(clusterSeeds.begin()+indexCorePoint);

        for( vector<int>::size_type i = 0, n = clusterSeeds.size(); i < n; ++i )
        {
            vector<int> clusterNeighors = calculateCluster(m_points[clusterSeeds[i]]);

            if ( clusterNeighors.size() >= m_minPoints )
            {

                for (auto iterNeighors = clusterNeighors.cbegin(); iterNeighors != clusterNeighors.cend(); ++iterNeighors )
                {
                    if(clusterID > 10)
                     throw std::invalid_argument("Too many clusters! Stop here!\n");
                    if ( m_points[*iterNeighors].clusterID == UNCLASSIFIED || m_points[*iterNeighors].clusterID == NOISE )
                    {
                        if ( m_points[*iterNeighors].clusterID == UNCLASSIFIED )
                        {
                            clusterSeeds.push_back(*iterNeighors);
                            n = clusterSeeds.size();
                        }
                        m_points[*iterNeighors].clusterID = clusterID;
                    }
                }
            }
        }

        return SUCCESS;
    }
}

vector<int> DBSCAN::calculateCluster(const Point& point)
{
    int index = 0;
    vector<int> clusterIndex;
    for(auto iter = m_points.cbegin(); iter != m_points.cend(); ++iter)
    {
        if ( calculateDistance(point, *iter) <= m_epsilon )
        {
            clusterIndex.push_back(index);
        }
        index++;
    }
    return clusterIndex;
}

inline double DBSCAN::calculateDistance(const Point& pointCore,const Point& pointTarget )
{
    return pow(pointCore.x - pointTarget.x,2) + pow(pointCore.y - pointTarget.y,2);
}


