# 香港中四数学：多项式与因式定理

## 1. 章节范围

根据香港教育局高中数学课程资料，本单元主要学习：

- 多项式除法
- 余式定理
- 因式定理
- 较复杂的多项式因式分解
- 多项式的最大公因式和最小公倍式
- 有理式的基本运算

本知识图谱主要聚焦于「多项式、余式定理、因式定理、根和因式分解」之间的关系。

## 2. 学习目标

完成本章后，学生应该能够：

1. 认识多项式的项、系数、常数项和次数。
2. 进行多项式的加法、减法和乘法。
3. 使用多项式除法。
4. 应用余式定理求余式。
5. 应用因式定理判断一个一次式是否为多项式的因式。
6. 通过已知因式寻找多项式的根。
7. 使用因式分解解决多项式方程。
8. 检查因式分解和计算结果是否正确。

## 3. 核心概念

### 3.1 多项式

多项式是由常数、变量和非负整数次幂组成的代数式，例如：

`P(x) = 2x^3 - 3x^2 + x - 5`

其中：

- `2x^3`、`-3x^2`、`x` 和 `-5` 是各项
- `2`、`-3`、`1` 是对应项的系数
- `-5` 是常数项
- 多项式的次数是 `3`

### 3.2 因式

如果两个多项式 `A(x)` 和 `B(x)` 满足：

`P(x) = A(x)B(x)`

那么 `A(x)` 和 `B(x)` 都是 `P(x)` 的因式。

### 3.3 根

如果：

`P(a) = 0`

那么 `a` 是多项式方程：

`P(x) = 0`

的一个根。

### 3.4 多项式除法

若：

`P(x) = D(x)Q(x) + R(x)`

其中 `R(x)` 的次数低于 `D(x)` 的次数，则：

- `P(x)` 是被除式
- `D(x)` 是除式
- `Q(x)` 是商
- `R(x)` 是余式

## 4. 重要定理

### 4.1 余式定理

若多项式 `P(x)` 除以 `x - a`，所得余式为：

`P(a)`

也就是说，不需要完整进行多项式除法，只要将 `x = a` 代入 `P(x)`，便可以求出余式。

### 4.2 因式定理

`x - a` 是 `P(x)` 的因式，当且仅当：

`P(a) = 0`

因此：

- 如果 `P(a) = 0`，则 `x - a` 是 `P(x)` 的因式。
- 如果 `P(a) != 0`，则 `x - a` 不是 `P(x)` 的因式。

### 4.3 根与因式的关系

以下三个说法是等价的：

1. `a` 是 `P(x) = 0` 的根。
2. `P(a) = 0`。
3. `x - a` 是 `P(x)` 的因式。

## 5. 知识关系

| 起点 | 关系 | 终点 |
|---|---|---|
| Polynomial | HAS_TERM | Term |
| Polynomial | HAS_DEGREE | Degree |
| Polynomial | CAN_BE_DIVIDED_BY | Polynomial |
| Remainder Theorem | CALCULATES | Remainder |
| Factor Theorem | CHECKS | Factor |
| Factor Theorem | USES | Polynomial Evaluation |
| `P(a) = 0` | IMPLIES | `x - a` is a factor |
| `P(a) = 0` | IMPLIES | `a` is a root |
| Root | CORRESPONDS_TO | Linear Factor |
| Factorisation | HELPS_SOLVE | Polynomial Equation |
| Polynomial Division | PRODUCES | Quotient |
| Polynomial Division | PRODUCES | Remainder |

## 6. 典型例题

### 例题一：使用余式定理

设：

`P(x) = x^3 - 2x + 1`

求 `P(x)` 除以 `x - 2` 的余式。

根据余式定理：

`P(2) = 2^3 - 2(2) + 1`

`P(2) = 8 - 4 + 1 = 5`

因此余式是：

`5`

### 例题二：使用因式定理

判断 `x - 2` 是否为：

`P(x) = x^3 - 2x + 1`

的因式。

计算：

`P(2) = 5`

因为：

`P(2) != 0`

所以 `x - 2` 不是 `P(x)` 的因式。

### 例题三：已知因式求未知数

设：

`P(x) = x^3 + kx^2 - 4x + 4`

已知 `x - 1` 是 `P(x)` 的因式，求 `k`。

由于 `x - 1` 是因式，根据因式定理：

`P(1) = 0`

代入：

`1 + k - 4 + 4 = 0`

`k + 1 = 0`

所以：

`k = -1`

### 例题四：利用根进行因式分解

设：

`P(x) = x^3 - 6x^2 + 11x - 6`

测试 `x = 1`：

`P(1) = 1 - 6 + 11 - 6 = 0`

因此 `x - 1` 是因式。

继续分解：

`P(x) = (x - 1)(x^2 - 5x + 6)`

`P(x) = (x - 1)(x - 2)(x - 3)`

因此多项式的根是：

`1、2、3`

## 7. 常见错误

- 把 `x - a` 错写成 `x + a`。
- 判断 `x - a` 时计算成 `P(-a)`。
- 把余式定理和因式定理混淆。
- 看到 `P(a) != 0` 仍然判断 `x - a` 是因式。
- 因式分解后没有乘回去验证。
- 忘记余式的次数必须低于除式的次数。
- 只找到一个根，却没有继续进行因式分解。
- 忽略多项式的次数和最高次项。

## 8. 知识图谱节点类型

- `Chapter`：章节
- `Concept`：概念
- `Definition`：定义
- `Theorem`：定理
- `Formula`：公式
- `Polynomial`：多项式
- `Factor`：因式
- `Root`：根
- `Remainder`：余式
- `Example`：例题
- `Skill`：技能
- `CommonMistake`：常见错误

## 9. Neo4j 初步数据模型

示例节点：

```text
(:Chapter {name: "Polynomial and Factor Theorem"})
(:Concept {name: "Polynomial"})
(:Theorem {name: "Factor Theorem"})
(:Theorem {name: "Remainder Theorem"})
(:Concept {name: "Root"})
(:Concept {name: "Factor"})
(:Concept {name: "Remainder"})
```

示例关系：

```text
(:Chapter)-[:CONTAINS]->(:Concept)
(:Chapter)-[:CONTAINS]->(:Theorem)
(:Theorem)-[:EXPLAINS]->(:Concept)
(:Theorem)-[:USES]->(:Formula)
(:Root)-[:CORRESPONDS_TO]->(:Factor)
(:Factor)-[:HELPS_SOLVE]->(:PolynomialEquation)
```

## 10. 参考资料

- Hong Kong Education Bureau, Mathematics Education Curriculum Documents
- Learning Unit: More about Polynomials
- Topics: Polynomial Division, Remainder Theorem and Factor Theorem
