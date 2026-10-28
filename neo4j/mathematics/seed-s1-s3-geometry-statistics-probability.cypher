// Hong Kong S1-S3 geometry, statistics, and probability expansion.
// This file extends the first-phase S1-S3 foundation graph with additional concepts.

MERGE (spaceShape:Strand {id: "strand-space-and-shape"})
SET spaceShape.name_zh = "空间与形状",
    spaceShape.name_en = "Space and Shape"

MERGE (dataHandling:Strand {id: "strand-data-handling"})
SET dataHandling.name_zh = "数据处理",
    dataHandling.name_en = "Data Handling"

MERGE (s1:Grade {id: "grade-s1"})
SET s1.name_zh = COALESCE(s1.name_zh, "中一"),
    s1.name_en = COALESCE(s1.name_en, "Secondary 1")

MERGE (s2:Grade {id: "grade-s2"})
SET s2.name_zh = COALESCE(s2.name_zh, "中二"),
    s2.name_en = COALESCE(s2.name_en, "Secondary 2")

MERGE (s3:Grade {id: "grade-s3"})
SET s3.name_zh = COALESCE(s3.name_zh, "中三"),
    s3.name_en = COALESCE(s3.name_en, "Secondary 3")

MERGE (s1GeometryTopic:Topic {id: "topic-s1-geometry-basics"})
SET s1GeometryTopic.name_zh = "中一点线角与周界面积基础",
    s1GeometryTopic.name_en = "S1 Geometry Basics: Points, Lines, Angles, Perimeter and Area"

MERGE (s2StatisticsTopic:Topic {id: "topic-s2-statistics-basics"})
SET s2StatisticsTopic.name_zh = "中二统计基础",
    s2StatisticsTopic.name_en = "S2 Statistics Foundations"

MERGE (s3GeometryProbabilityTopic:Topic {id: "topic-s3-geometry-and-probability-basics"})
SET s3GeometryProbabilityTopic.name_zh = "中三几何关系与概率基础",
    s3GeometryProbabilityTopic.name_en = "S3 Geometry Relations and Probability Foundations"

MERGE (s1)-[:HAS_STRAND]->(spaceShape)
MERGE (s2)-[:HAS_STRAND]->(spaceShape)
MERGE (s2)-[:HAS_STRAND]->(dataHandling)
MERGE (s3)-[:HAS_STRAND]->(spaceShape)
MERGE (s3)-[:HAS_STRAND]->(dataHandling)
MERGE (spaceShape)-[:HAS_TOPIC]->(s1GeometryTopic)
MERGE (dataHandling)-[:HAS_TOPIC]->(s2StatisticsTopic)
MERGE (spaceShape)-[:HAS_TOPIC]->(s3GeometryProbabilityTopic)
MERGE (dataHandling)-[:HAS_TOPIC]->(s3GeometryProbabilityTopic)

MERGE (pointLineAngle:Concept {id: "concept-point-line-angle"})
SET pointLineAngle.name_zh = "点线角基础",
    pointLineAngle.name_en = "Point, Line and Angle Basics",
    pointLineAngle.level = "foundation",
    pointLineAngle.definition_zh = "认识点、线段、射线、直线和角的基本概念及记法。",
    pointLineAngle.search_text = "点 线段 射线 直线 角 记法 中一 几何"

MERGE (triangleProperties:Concept {id: "concept-triangle-basic-properties"})
SET triangleProperties.name_zh = "三角形基本性质",
    triangleProperties.name_en = "Basic Properties of Triangles",
    triangleProperties.level = "foundation",
    triangleProperties.definition_zh = "理解三角形分类、内角和及边角关系的基础性质。",
    triangleProperties.search_text = "三角形 内角和 分类 等腰 直角 三边关系 中二 几何"

MERGE (quadrilateralProperties:Concept {id: "concept-quadrilateral-basic-properties"})
SET quadrilateralProperties.name_zh = "四边形基本性质",
    quadrilateralProperties.name_en = "Basic Properties of Quadrilaterals",
    quadrilateralProperties.level = "foundation",
    quadrilateralProperties.definition_zh = "认识平行四边形、矩形、菱形和梯形等四边形的基本性质。",
    quadrilateralProperties.search_text = "四边形 平行四边形 矩形 菱形 梯形 角 对边 中二 几何"

MERGE (perimeter:Concept {id: "concept-perimeter"})
SET perimeter.name_zh = "周界",
    perimeter.name_en = "Perimeter",
    perimeter.level = "foundation",
    perimeter.definition_zh = "平面图形边界长度的总和。",
    perimeter.search_text = "周界 周长 长度 加法 图形 中一 几何"

MERGE (area:Concept {id: "concept-area"})
SET area.name_zh = "面积",
    area.name_en = "Area",
    area.level = "foundation",
    area.definition_zh = "平面图形所覆盖区域的大小。",
    area.search_text = "面积 平方单位 长方形 三角形 平行四边形 中一 几何"

MERGE (congruenceIntro:Concept {id: "concept-congruence-introduction"})
SET congruenceIntro.name_zh = "全等入门",
    congruenceIntro.name_en = "Introduction to Congruence",
    congruenceIntro.level = "foundation",
    congruenceIntro.definition_zh = "理解两个图形形状和大小都相同的全等概念。",
    congruenceIntro.search_text = "全等 图形对应边 对应角 三角形判定 中三 几何"

MERGE (similarityIntro:Concept {id: "concept-similarity-introduction"})
SET similarityIntro.name_zh = "相似入门",
    similarityIntro.name_en = "Introduction to Similarity",
    similarityIntro.level = "foundation",
    similarityIntro.definition_zh = "理解图形形状相同而大小可不同的相似概念。",
    similarityIntro.search_text = "相似 比例 对应角 对应边 三角形相似 中三 几何"

MERGE (dataType:Concept {id: "concept-data-type"})
SET dataType.name_zh = "数据类型",
    dataType.name_en = "Data Types",
    dataType.level = "foundation",
    dataType.definition_zh = "区分离散数据与连续数据并理解其表示方式。",
    dataType.search_text = "数据类型 离散 连续 分类 统计 中二"

MERGE (frequencyTable:Concept {id: "concept-frequency-table"})
SET frequencyTable.name_zh = "频数表",
    frequencyTable.name_en = "Frequency Table",
    frequencyTable.level = "foundation",
    frequencyTable.definition_zh = "把数据按类别或区间整理并记录出现次数的表格。",
    frequencyTable.search_text = "频数表 数据整理 类别 区间 次数 统计 中二"

MERGE (barChart:Concept {id: "concept-bar-chart"})
SET barChart.name_zh = "柱形图",
    barChart.name_en = "Bar Chart",
    barChart.level = "foundation",
    barChart.definition_zh = "用柱的高度或长度表示各类别频数的统计图。",
    barChart.search_text = "柱形图 条形图 频数 比较 数据展示 统计 中二"

MERGE (lineChart:Concept {id: "concept-line-chart"})
SET lineChart.name_zh = "折线图",
    lineChart.name_en = "Line Chart",
    lineChart.level = "foundation",
    lineChart.definition_zh = "用线段连接数据点以表示数据随时间或顺序变化的统计图。",
    lineChart.search_text = "折线图 数据趋势 变化 统计图 中二"

MERGE (pieChart:Concept {id: "concept-pie-chart"})
SET pieChart.name_zh = "饼图",
    pieChart.name_en = "Pie Chart",
    pieChart.level = "foundation",
    pieChart.definition_zh = "以圆内扇形面积表示各类别占整体比例的统计图。",
    pieChart.search_text = "饼图 扇形 比例 百分比 数据展示 统计 中二"

MERGE (mean:Concept {id: "concept-mean"})
SET mean.name_zh = "平均数",
    mean.name_en = "Mean",
    mean.level = "foundation",
    mean.definition_zh = "把所有数据总和除以数据个数得到的集中趋势量。",
    mean.search_text = "平均数 算术平均 数据总和 个数 统计 中二"

MERGE (median:Concept {id: "concept-median"})
SET median.name_zh = "中位数",
    median.name_en = "Median",
    median.level = "foundation",
    median.definition_zh = "把数据排序后位于中间位置的数值。",
    median.search_text = "中位数 排序 中间值 集中趋势 统计 中二"

MERGE (mode:Concept {id: "concept-mode"})
SET mode.name_zh = "众数",
    mode.name_en = "Mode",
    mode.level = "foundation",
    mode.definition_zh = "在一组数据中出现次数最多的数值或类别。",
    mode.search_text = "众数 最高频 频数 集中趋势 统计 中二"

MERGE (rangeConcept:Concept {id: "concept-range"})
SET rangeConcept.name_zh = "极差",
    rangeConcept.name_en = "Range",
    rangeConcept.level = "foundation",
    rangeConcept.definition_zh = "一组数据中最大值与最小值的差。",
    rangeConcept.search_text = "极差 最大值 最小值 差 离散程度 统计 中二"

MERGE (sampleSpace:Concept {id: "concept-sample-space"})
SET sampleSpace.name_zh = "样本空间",
    sampleSpace.name_en = "Sample Space",
    sampleSpace.level = "foundation",
    sampleSpace.definition_zh = "一次随机试验所有可能结果的集合。",
    sampleSpace.search_text = "样本空间 随机试验 可能结果 集合 概率 中三"

MERGE (eventConcept:Concept {id: "concept-event"})
SET eventConcept.name_zh = "事件",
    eventConcept.name_en = "Event",
    eventConcept.level = "foundation",
    eventConcept.definition_zh = "样本空间中由一个或多个结果组成的集合。",
    eventConcept.search_text = "事件 结果集合 必然事件 不可能事件 概率 中三"

MERGE (probabilityRange:Concept {id: "concept-probability-range"})
SET probabilityRange.name_zh = "概率范围",
    probabilityRange.name_en = "Probability Range",
    probabilityRange.level = "foundation",
    probabilityRange.definition_zh = "任何事件的概率介乎 0 与 1 之间。",
    probabilityRange.search_text = "概率范围 0到1 必然事件 不可能事件 概率 中三"

MERGE (simpleProbability:Concept {id: "concept-simple-probability"})
SET simpleProbability.name_zh = "简单概率",
    simpleProbability.name_en = "Simple Probability",
    simpleProbability.level = "foundation",
    simpleProbability.definition_zh = "在等可能情形下，事件概率等于有利结果数除以总结果数。",
    simpleProbability.search_text = "简单概率 等可能 有利结果 总结果 概率计算 中三"

MERGE (mutuallyExclusiveEvents:Concept {id: "concept-mutually-exclusive-events"})
SET mutuallyExclusiveEvents.name_zh = "互斥事件",
    mutuallyExclusiveEvents.name_en = "Mutually Exclusive Events",
    mutuallyExclusiveEvents.level = "foundation",
    mutuallyExclusiveEvents.definition_zh = "不能同时发生的两个或多个事件。",
    mutuallyExclusiveEvents.search_text = "互斥事件 同时发生 概率加法 中三"

MERGE (s1GeometryTopic)-[:TEACHES]->(pointLineAngle)
MERGE (s1GeometryTopic)-[:TEACHES]->(perimeter)
MERGE (s1GeometryTopic)-[:TEACHES]->(area)
MERGE (s2StatisticsTopic)-[:TEACHES]->(dataType)
MERGE (s2StatisticsTopic)-[:TEACHES]->(frequencyTable)
MERGE (s2StatisticsTopic)-[:TEACHES]->(barChart)
MERGE (s2StatisticsTopic)-[:TEACHES]->(lineChart)
MERGE (s2StatisticsTopic)-[:TEACHES]->(pieChart)
MERGE (s2StatisticsTopic)-[:TEACHES]->(mean)
MERGE (s2StatisticsTopic)-[:TEACHES]->(median)
MERGE (s2StatisticsTopic)-[:TEACHES]->(mode)
MERGE (s2StatisticsTopic)-[:TEACHES]->(rangeConcept)
MERGE (s3GeometryProbabilityTopic)-[:TEACHES]->(triangleProperties)
MERGE (s3GeometryProbabilityTopic)-[:TEACHES]->(quadrilateralProperties)
MERGE (s3GeometryProbabilityTopic)-[:TEACHES]->(congruenceIntro)
MERGE (s3GeometryProbabilityTopic)-[:TEACHES]->(similarityIntro)
MERGE (s3GeometryProbabilityTopic)-[:TEACHES]->(sampleSpace)
MERGE (s3GeometryProbabilityTopic)-[:TEACHES]->(eventConcept)
MERGE (s3GeometryProbabilityTopic)-[:TEACHES]->(probabilityRange)
MERGE (s3GeometryProbabilityTopic)-[:TEACHES]->(simpleProbability)
MERGE (s3GeometryProbabilityTopic)-[:TEACHES]->(mutuallyExclusiveEvents)

MERGE (pointLineAngle)-[:APPEARS_IN]->(s1GeometryTopic)
MERGE (perimeter)-[:APPEARS_IN]->(s1GeometryTopic)
MERGE (area)-[:APPEARS_IN]->(s1GeometryTopic)
MERGE (dataType)-[:APPEARS_IN]->(s2StatisticsTopic)
MERGE (frequencyTable)-[:APPEARS_IN]->(s2StatisticsTopic)
MERGE (barChart)-[:APPEARS_IN]->(s2StatisticsTopic)
MERGE (lineChart)-[:APPEARS_IN]->(s2StatisticsTopic)
MERGE (pieChart)-[:APPEARS_IN]->(s2StatisticsTopic)
MERGE (mean)-[:APPEARS_IN]->(s2StatisticsTopic)
MERGE (median)-[:APPEARS_IN]->(s2StatisticsTopic)
MERGE (mode)-[:APPEARS_IN]->(s2StatisticsTopic)
MERGE (rangeConcept)-[:APPEARS_IN]->(s2StatisticsTopic)
MERGE (triangleProperties)-[:APPEARS_IN]->(s3GeometryProbabilityTopic)
MERGE (quadrilateralProperties)-[:APPEARS_IN]->(s3GeometryProbabilityTopic)
MERGE (congruenceIntro)-[:APPEARS_IN]->(s3GeometryProbabilityTopic)
MERGE (similarityIntro)-[:APPEARS_IN]->(s3GeometryProbabilityTopic)
MERGE (sampleSpace)-[:APPEARS_IN]->(s3GeometryProbabilityTopic)
MERGE (eventConcept)-[:APPEARS_IN]->(s3GeometryProbabilityTopic)
MERGE (probabilityRange)-[:APPEARS_IN]->(s3GeometryProbabilityTopic)
MERGE (simpleProbability)-[:APPEARS_IN]->(s3GeometryProbabilityTopic)
MERGE (mutuallyExclusiveEvents)-[:APPEARS_IN]->(s3GeometryProbabilityTopic)

MERGE (pointLineAngle)-[:PREREQUISITE_OF {strength: 0.85, reason_zh: "点线角基础是三角形性质的前置知识。"}]->(triangleProperties)
MERGE (triangleProperties)-[:PREREQUISITE_OF {strength: 0.80, reason_zh: "四边形可通过分割为三角形理解其性质。"}]->(quadrilateralProperties)
MERGE (triangleProperties)-[:PREREQUISITE_OF {strength: 0.85, reason_zh: "三角形是学习全等判定的核心对象。"}]->(congruenceIntro)
MERGE (congruenceIntro)-[:PREREQUISITE_OF {strength: 0.70, reason_zh: "先理解全等再过渡到相似更清晰。"}]->(similarityIntro)
MERGE (perimeter)-[:RELATED_TO {reason_zh: "周界与面积常在同一测量情境中比较。"}]->(area)
MERGE (quadrilateralProperties)-[:RELATED_TO {reason_zh: "四边形面积常通过分解三角形求得。"}]->(area)
MERGE (dataType)-[:PREREQUISITE_OF {strength: 0.85, reason_zh: "先辨识数据类型，才能正确整理频数。"}]->(frequencyTable)
MERGE (frequencyTable)-[:PREREQUISITE_OF {strength: 0.90, reason_zh: "柱形图需要根据频数表绘制。"}]->(barChart)
MERGE (frequencyTable)-[:PREREQUISITE_OF {strength: 0.90, reason_zh: "折线图需要根据有序数据点绘制。"}]->(lineChart)
MERGE (frequencyTable)-[:PREREQUISITE_OF {strength: 0.90, reason_zh: "饼图需要由频数转换为占比。"}]->(pieChart)
MERGE (frequencyTable)-[:PREREQUISITE_OF {strength: 0.80, reason_zh: "整理数据后才能计算平均数。"}]->(mean)
MERGE (frequencyTable)-[:PREREQUISITE_OF {strength: 0.75, reason_zh: "计算中位数需要先排序并整理数据。"}]->(median)
MERGE (frequencyTable)-[:PREREQUISITE_OF {strength: 0.75, reason_zh: "识别众数依赖频数统计。"}]->(mode)
MERGE (frequencyTable)-[:PREREQUISITE_OF {strength: 0.75, reason_zh: "计算极差前需明确数据范围。"}]->(rangeConcept)
MERGE (sampleSpace)-[:PREREQUISITE_OF {strength: 0.95, reason_zh: "先列出所有可能结果，才能定义事件。"}]->(eventConcept)
MERGE (eventConcept)-[:PREREQUISITE_OF {strength: 0.90, reason_zh: "事件定义是计算简单概率的前提。"}]->(simpleProbability)
MERGE (probabilityRange)-[:PREREQUISITE_OF {strength: 0.85, reason_zh: "理解概率范围有助判断计算结果是否合理。"}]->(simpleProbability)
MERGE (simpleProbability)-[:PREREQUISITE_OF {strength: 0.85, reason_zh: "互斥事件概率计算基于简单概率加法。"}]->(mutuallyExclusiveEvents)
MERGE (simpleProbability)-[:RELATED_TO {reason_zh: "可用频数资料估计实验概率。"}]->(frequencyTable)

MATCH (integer:Concept {id: "concept-integer"})
MERGE (integer)-[:PREREQUISITE_OF {strength: 0.70, reason_zh: "整数运算是处理周界与面积数据的基础。"}]->(perimeter)

MATCH (rationalNumber:Concept {id: "concept-rational-number"})
MERGE (rationalNumber)-[:PREREQUISITE_OF {strength: 0.75, reason_zh: "面积与统计量常涉及有理数运算。"}]->(area)
MERGE (rationalNumber)-[:PREREQUISITE_OF {strength: 0.80, reason_zh: "平均数与概率计算涉及分数和小数。"}]->(mean)

MATCH (basicAngle:Concept {id: "concept-basic-angle-properties"})
MERGE (pointLineAngle)-[:PREREQUISITE_OF {strength: 0.90, reason_zh: "理解角与线关系后更易掌握基本角性质。"}]->(basicAngle)
MERGE (basicAngle)-[:PREREQUISITE_OF {strength: 0.85, reason_zh: "三角形性质建立在角关系与角和概念上。"}]->(triangleProperties)

MATCH (ratio:Concept {id: "concept-ratio"})
MERGE (ratio)-[:PREREQUISITE_OF {strength: 0.85, reason_zh: "相似图形判定与边长比直接相关。"}]->(similarityIntro)

MATCH (fraction:Concept {id: "concept-fraction"})
MERGE (fraction)-[:PREREQUISITE_OF {strength: 0.80, reason_zh: "简单概率以分数形式表达最常见。"}]->(simpleProbability)

MATCH (linearGraph:Concept {id: "concept-linear-graph"})
MERGE (lineChart)-[:RELATED_TO {reason_zh: "折线图与坐标平面上的直线图像都用点与线表示趋势。"}]->(linearGraph)

MATCH (algebraicExpression:Concept {id: "concept-algebraic-expression"})
MERGE (similarityIntro)-[:RELATED_TO {reason_zh: "相似关系常用于比例推理与代数建模。"}]->(algebraicExpression)
