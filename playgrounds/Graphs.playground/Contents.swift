// Graphs
// Source: 

// Basic vertex data structure
public class Vertex {
    var key: String?
    
    // Adjacency lists
    var neighbors: Array<Edge>
    
    init(){
        self.neighbors = Array<Edge>()
    }
    
}

// Edge data structure
public class Edge {
    var neighbor: Vertex
    var weight: Int
    
    init() {
        weight = 0
        self.neighbor = Vertex()
    }
}

// A default Directed Graph Canvas
public class SwiftGraph {
    private var canvas: Array<Vertex>
    public var isDirected: Bool
    
    init() {
        canvas = Array<Vertex>()
        isDirected = true
    }
    
    // Create a new vertex
    func addVertex(key:String) -> Vertex {
    
        // Set the key
        var childVertex: Vertex = Vertex()
        childVertex.key = key
        
        // Add the vertex to the graph canvas
        canvas.append(childVertex)
        
        return childVertex
    }
    
    // Add an edge to source vertex
    func addEdge(source: Vertex, neightbor: Vertex, weight: Int) {
        
        // Create a new edge
        var newEdge = Edge()
        
        // Establish the default properties
        newEdge.neighbor = neightbor
        newEdge.weight = weight
        source.neighbors.append(newEdge)
        
        // Check for undirected graph
        if (isDirected == false) {
            // Create a new reversed edge
            var reverseEdge = Edge()
            
            // Establish the reversed properties
            reverseEdge.neighbor = source
            reverseEdge.weight = weight
            neightbor.neighbors.append(reverseEdge)
        }
    }
}

// Dijkstra's shortest path
class Path {
    
    var total: Int!
    var destination: Vertex
    var previous: Path!
    
    // Object initialization
    init() {
        destination = Vertex()
    }
}

// Process Dijkstra's shortest path algorithm
func processDijkstra(source: Vertex, destination: Vertex) -> Path? {
    
    var frontier: Array = Array<Path>()
    var finalPaths: Array = Array<Path>()
    
    // Use source edges to create the frontier
    for e in source.neighbors {
        
        var newPath: Path = Path()
        
        newPath.destination = e.neighbor
        newPath.previous = nil
        newPath.total = e.weight
        
        // Add the new path to the frontier
        frontier.append(newPath)
    }
}




