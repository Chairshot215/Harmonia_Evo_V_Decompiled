.class public Lorg/apache/xalan/transformer/NodeSorter;
.super Ljava/lang/Object;
.source "NodeSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    }
.end annotation


# instance fields
.field m_execContext:Lorg/apache/xpath/XPathContext;

.field m_keys:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/XPathContext;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    return-void
.end method


# virtual methods
.method compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xalan/transformer/NodeSortKey;

    iget-boolean v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    if-nez p3, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    :goto_0
    cmpl-double v20, v9, v12

    if-nez v20, :cond_5

    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v17

    :cond_0
    :goto_1
    if-nez v17, :cond_1

    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v17

    :cond_1
    if-nez v17, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v7, v0, v1}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v20

    if-eqz v20, :cond_12

    const/16 v17, -0x1

    :cond_2
    :goto_2
    return v17

    :cond_3
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    goto/16 :goto_0

    :cond_4
    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v15

    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v16

    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v9

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v12

    goto/16 :goto_0

    :cond_5
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_6

    const-wide/16 v5, 0x0

    :goto_3
    const-wide/16 v20, 0x0

    cmpg-double v20, v5, v20

    if-gez v20, :cond_a

    iget-boolean v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    const/16 v17, 0x1

    :goto_4
    goto/16 :goto_1

    :cond_6
    const-wide/high16 v5, -0x4010

    goto :goto_3

    :cond_7
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_8

    const-wide/high16 v5, 0x3ff0

    goto :goto_3

    :cond_8
    sub-double v5, v9, v12

    goto :goto_3

    :cond_9
    const/16 v17, -0x1

    goto :goto_4

    :cond_a
    const-wide/16 v20, 0x0

    cmpl-double v20, v5, v20

    if-lez v20, :cond_c

    iget-boolean v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    const/16 v17, -0x1

    goto :goto_4

    :cond_b
    const/16 v17, 0x1

    goto :goto_4

    :cond_c
    const/16 v17, 0x0

    goto :goto_4

    :cond_d
    if-nez p3, :cond_f

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v11, Ljava/text/CollationKey;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v14, Ljava/text/CollationKey;

    :goto_5
    invoke-virtual {v11, v14}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v17

    iget-boolean v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_caseOrderUpper:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    invoke-virtual {v11}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v14}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    if-nez v17, :cond_11

    const/16 v17, 0x0

    :cond_e
    :goto_6
    iget-boolean v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_1

    :cond_f
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v11, Ljava/text/CollationKey;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v14, Ljava/text/CollationKey;

    goto :goto_5

    :cond_10
    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v15

    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v16

    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v11

    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v14

    goto/16 :goto_5

    :cond_11
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    goto :goto_6

    :cond_12
    const/16 v17, 0x1

    goto/16 :goto_2
.end method

.method mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sub-int v2, p4, p3

    if-lez v2, :cond_7

    add-int v2, p4, p3

    div-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    add-int/lit8 v10, v6, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    move v14, v6

    :goto_0
    move/from16 v0, p3

    if-lt v14, v0, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v14, v2, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    move/from16 v14, p3

    add-int/lit8 v15, v6, 0x1

    :goto_2
    move/from16 v0, p4

    if-gt v15, v0, :cond_3

    add-int v2, p4, v6

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, v15

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    add-int v3, p4, v6

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v3, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    add-int v3, p4, v6

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v3, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_3

    :cond_3
    move/from16 v15, p4

    move/from16 v16, p3

    :goto_4
    move/from16 v0, v16

    move/from16 v1, p4

    if-gt v0, v1, :cond_7

    if-ne v14, v15, :cond_5

    const/4 v13, -0x1

    :goto_5
    if-gez v13, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v14, v14, 0x1

    :cond_4
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v13

    goto :goto_5

    :cond_6
    if-lez v13, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method public sort(Lorg/apache/xml/dtm/DTMIterator;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v3, 0x0

    iput-object p2, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v8

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    new-instance v6, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    invoke-interface {p1, v7}, Lorg/apache/xml/dtm/DTMIterator;->item(I)I

    move-result v0

    invoke-direct {v6, p0, v0}, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;-><init>(Lorg/apache/xalan/transformer/NodeSorter;I)V

    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    add-int/lit8 v4, v8, -0x1

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    invoke-interface {p1, v0, v7}, Lorg/apache/xml/dtm/DTMIterator;->setItem(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v3}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V

    return-void
.end method
