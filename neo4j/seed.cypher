// 创建章节
MERGE (chapter:Chapter {
  name: "Polynomial and Factor Theorem",
  name_zh: "多项式与因式定理",
  level: "Hong Kong Secondary 4"
})

// 创建核心概念
MERGE (polynomial:Concept {
  name: "Polynomial",
  name_zh: "多项式"
})

MERGE (term:Concept {
  name: "Term",
  name_zh: "项"
})

MERGE (coefficient:Concept {
  name: "Coefficient",
  name_zh: "系数"
})

MERGE (degree:Concept {
  name: "Degree",
  name_zh: "次数"
})

MERGE (factor:Concept {
  name: "Factor",
  name_zh: "因式"
})

MERGE (root:Concept {
  name: "Root",
  name_zh: "根"
})

MERGE (remainder:Concept {
  name: "Remainder",
  name_zh: "余式"
})

MERGE (quotient:Concept {
  name: "Quotient",
  name_zh: "商"
})

MERGE (polynomialDivision:Concept {
  name: "Polynomial Division",
  name_zh: "多项式除法"
})

MERGE (factorisation:Concept {
  name: "Factorisation",
  name_zh: "因式分解"
})

MERGE (polynomialEquation:Concept {
  name: "Polynomial Equation",
  name_zh: "多项式方程"
})

// 创建定理
MERGE (factorTheorem:Theorem {
  name: "Factor Theorem",
  name_zh: "因式定理"
})

MERGE (remainderTheorem:Theorem {
  name: "Remainder Theorem",
  name_zh: "余式定理"
})

// 创建公式
MERGE (factorFormula:Formula {
  name: "P(a) = 0",
  meaning: "x - a is a factor of P(x)"
})

MERGE (remainderFormula:Formula {
  name: "Remainder of P(x) divided by x - a is P(a)"
})

// 创建例题
MERGE (exampleRemainder:Example {
  name: "Find the remainder using the Remainder Theorem",
  name_zh: "使用余式定理求余式",
  polynomial: "P(x) = x^3 - 2x + 1",
  divisor: "x - 2",
  answer: "5"
})

MERGE (exampleFactor:Example {
  name: "Test whether x - 2 is a factor",
  name_zh: "判断 x - 2 是否为因式",
  polynomial: "P(x) = x^3 - 2x + 1",
  candidate: "x - 2",
  answer: "不是因式"
})

MERGE (exampleRoots:Example {
  name: "Factorise a cubic polynomial",
  name_zh: "利用根进行三次多项式因式分解",
  polynomial: "P(x) = x^3 - 6x^2 + 11x - 6",
  factorisation: "(x - 1)(x - 2)(x - 3)",
  roots: "1, 2, 3"
})

// 建立章节与概念的关系
MERGE (chapter)-[:CONTAINS]->(polynomial)
MERGE (chapter)-[:CONTAINS]->(factor)
MERGE (chapter)-[:CONTAINS]->(root)
MERGE (chapter)-[:CONTAINS]->(polynomialDivision)
MERGE (chapter)-[:CONTAINS]->(factorisation)
MERGE (chapter)-[:CONTAINS]->(polynomialEquation)
MERGE (chapter)-[:CONTAINS]->(factorTheorem)
MERGE (chapter)-[:CONTAINS]->(remainderTheorem)

// 建立多项式的组成关系
MERGE (polynomial)-[:HAS_PART]->(term)
MERGE (polynomial)-[:HAS_PROPERTY]->(coefficient)
MERGE (polynomial)-[:HAS_PROPERTY]->(degree)

// 建立多项式除法关系
MERGE (polynomialDivision)-[:PRODUCES]->(quotient)
MERGE (polynomialDivision)-[:PRODUCES]->(remainder)
MERGE (polynomial)-[:CAN_USE]->(polynomialDivision)

// 建立余式定理关系
MERGE (remainderTheorem)-[:EXPLAINS]->(remainder)
MERGE (remainderTheorem)-[:USES]->(remainderFormula)
MERGE (remainderTheorem)-[:APPLIES_TO]->(polynomial)

// 建立因式定理关系
MERGE (factorTheorem)-[:EXPLAINS]->(factor)
MERGE (factorTheorem)-[:USES]->(factorFormula)
MERGE (factorTheorem)-[:APPLIES_TO]->(polynomial)

// 建立根与因式的关系
MERGE (root)-[:CORRESPONDS_TO]->(factor)
MERGE (factorTheorem)-[:IDENTIFIES]->(root)
MERGE (factor)-[:HELPS_SOLVE]->(polynomialEquation)
MERGE (factorisation)-[:HELPS_SOLVE]->(polynomialEquation)

// 建立例题关系
MERGE (exampleRemainder)-[:DEMONSTRATES]->(remainderTheorem)
MERGE (exampleFactor)-[:DEMONSTRATES]->(factorTheorem)
MERGE (exampleRoots)-[:DEMONSTRATES]->(factorisation)
MERGE (exampleRoots)-[:FINDS]->(root);
