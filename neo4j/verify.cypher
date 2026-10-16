// Run these read-only checks after constraints.cypher and seed.cypher.

// List schema constraints.
SHOW CONSTRAINTS;

// Count all nodes.
MATCH (n)
RETURN count(n) AS total_nodes;

// Count nodes by label.
MATCH (n)
RETURN labels(n) AS node_type, count(n) AS total
ORDER BY node_type;

// Count relationships by type.
MATCH ()-[r]->()
RETURN type(r) AS relationship_type, count(r) AS total
ORDER BY relationship_type;

// Check duplicate names within the same label.
MATCH (n)
WITH labels(n) AS node_type, n.name AS node_name, count(*) AS total
WHERE node_name IS NOT NULL AND total > 1
RETURN node_type, node_name, total
ORDER BY node_type, node_name;

// Inspect the Polynomial and Factor Theorem subgraph.
MATCH path = (chapter:Chapter {name: "Polynomial and Factor Theorem"})-[*1..3]-(connected)
RETURN path;
