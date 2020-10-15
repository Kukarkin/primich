////////////////////////////////////////////////////////////////////////////////
/// \file
/// \brief      Contains implementations of some algorithms for undirected graph.
/// \author     Sergey Shershakov
/// \version    0.1.0
/// \date       21.09.2020
/// \copyright  © Sergey Shershakov 2020.
///             This code is for educational purposes of the course "Algorithms
///             and Data Structures" provided by the Faculty of Computer Science
///             at the Higher School of Economics.
///
/// When altering code, a copyright line must be preserved.
///
////////////////////////////////////////////////////////////////////////////////


#ifndef UGRAPH_ALGOS_HPP
#define UGRAPH_ALGOS_HPP

#include <set>
#include <map>
#include "ugraph.hpp"
#include "lbl_ugraph.hpp"

template<typename Vertex, typename EdgeLbl>
struct priorityQueue{
    std::map<Vertex, int> container;
    std::set<std::pair<int, Vertex>> Weight;

    void insert(Vertex ver, int value)
    {
        Weight.insert({value, ver});
        container.insert(ver, value);
    }

    Vertex getMin()
    {
        return container.begin()->first;
    }

    void set(Vertex cur, int value)
    {
        auto it = container.find(cur);
        if (it != container.end())
        {
            Weight.erase({it->second, cur});
            container.erase(it);
        }
        container.insert(cur, value);
        Weight.insert(make_pair(value, cur));
    }

    void remove(Vertex cur)
    {
        auto it = container.find(cur);
        if (it != container.end())
        {
            Weight.erase({it->second, cur});
            container.erase(it);
        }
    }

    EdgeLbl getCost(Vertex ver)
    {
        return container[ver];
    }

    bool isEmpty()
    {
        return container.empty();
    }

};

template<typename Vertex, typename EdgeLbl>
std::set<typename EdgeLblUGraph<Vertex, EdgeLbl>::Edge>
findMSTPrim(const EdgeLblUGraph<Vertex, EdgeLbl>& g)
{
    typedef std::multimap<Vertex, Vertex> AdjList;
    typedef typename AdjList::const_iterator AdjListCIter;
    typedef std::pair<AdjListCIter, AdjListCIter> AdjListCIterPair;
    typedef std::set<Vertex> VerticesSet;
    typedef typename VerticesSet::iterator VertexIter;
    typedef std::pair<VertexIter, VertexIter> VertexIterPair;
    typedef std::pair<Vertex, Vertex> Edge;

    std::set<typename EdgeLblUGraph<Vertex, EdgeLbl>::Edge> res;
    std::multiset<Vertex> unvisitd;
    std::multiset<Vertex> visited;
    priorityQueue<Vertex, int> priority;
    VertexIterPair pairVertIter = g.getVertices();
    EdgeLbl tmp;

    for(VertexIter it = pairVertIter.first; it != pairVertIter.second; it++)
        unvisitd.insert(*it);

    Vertex start = *unvisitd.begin();
    visited.insert(start);
    unvisitd.erase(start);
    Vertex secondVertex;
    Vertex currentVertex = start;

    while(!unvisitd.empty())
    {
        AdjListCIterPair adjEdgesIterPair = g.getAdjEdges(currentVertex);
        for(AdjListCIter i = adjEdgesIterPair.first; i!= adjEdgesIterPair.second; i++)
        {
            if(unvisitd.find(secondVertex) != unvisitd.end()) {
                g.getLabel(currentVertex, secondVertex, tmp);
                priority.set(secondVertex, tmp);

            }
        }

        secondVertex = priority.getMin();
        res.insert(std::make_pair(start, secondVertex));

        Vertex valadd = priority.getMin();

        priority.remove(valadd);
        visited.insert(valadd);
        unvisitd.erase(valadd);
        start = valadd;
    }
    return res;
}

/// Finds a MST for the given graph \a g using Kruskal's algorithm.
template<typename Vertex, typename EdgeLbl>
std::set<typename EdgeLblUGraph<Vertex, EdgeLbl>::Edge>
findMSTKruskal(const EdgeLblUGraph<Vertex, EdgeLbl>& g)
{
    // TODO: implement this!

    std::set<typename EdgeLblUGraph<Vertex, EdgeLbl>::Edge> res;
    return res;
}


#endif // UGRAPH_ALGOS_HPP
