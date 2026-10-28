// Verification queries for the S1-S3 geometry, statistics, and probability expansion.

// Count nodes by label.
MATCH (n)
RETURN labels(n) AS node_type, count(n) AS total
ORDER BY node_type;

// Count relationships by type.
MATCH ()-[r]->()
RETURN type(r) AS relationship_type, count(r) AS total
ORDER BY relationship_type;

// Check duplicate IDs across all labelled nodes.
MATCH (n)
WITH labels(n) AS node_type, n.id AS entity_id, count(*) AS total
WHERE entity_id IS NOT NULL AND total > 1
RETURN node_type, entity_id, total
ORDER BY node_type, entity_id;

// Geometry representative prerequisite path.
MATCH path = (start:Concept {id: "concept-point-line-angle"})
  -[:PREREQUISITE_OF*1..6]->
  (target:Concept {id: "concept-similarity-introduction"})
RETURN path;

// Statistics representative prerequisite path.
MATCH path = (start:Concept {id: "concept-data-type"})
  -[:PREREQUISITE_OF*1..4]->
  (target:Concept {id: "concept-mean"})
RETURN path;

// Probability representative prerequisite path.
MATCH path = (start:Concept {id: "concept-sample-space"})
  -[:PREREQUISITE_OF*1..4]->
  (target:Concept {id: "concept-mutually-exclusive-events"})
RETURN path;

// Existing path should remain reachable.
MATCH path = (start:Concept {id: "concept-integer"})
  -[:PREREQUISITE_OF*1..10]->
  (target:Concept {id: "concept-polynomial"})
RETURN path;

// Check that new topics are linked to strands and grades.
MATCH (g:Grade)-[:HAS_STRAND]->(s:Strand)-[:HAS_TOPIC]->(t:Topic)
WHERE t.id IN [
  "topic-s1-geometry-basics",
  "topic-s2-statistics-basics",
  "topic-s3-geometry-and-probability-basics"
]
RETURN g.id AS grade_id, s.id AS strand_id, t.id AS topic_id
ORDER BY grade_id, strand_id, topic_id;
