.class public Lorg/apache/xpath/patterns/ContextMatchStepPattern;
.super Lorg/apache/xpath/patterns/StepPattern;
.source "ContextMatchStepPattern.java"


# static fields
.field static final serialVersionUID:J = -0x1a33da6115f1aa26L


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getIteratorRoot()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0
.end method

.method public executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/objects/XObject;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v12, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v10

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    invoke-static {v4}, Lorg/apache/xpath/axes/WalkerFactory;->isDownwardAxisOfMany(I)Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getIteratorRoot()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    const/4 v8, 0x1

    :goto_0
    const/16 v16, 0xb

    move/from16 v0, v16

    if-ne v0, v4, :cond_0

    if-eqz v8, :cond_0

    const/16 v4, 0xf

    :cond_0
    invoke-interface {v6, v4}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v14

    invoke-virtual {v14, v5}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v11

    :goto_1
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v0, v11, :cond_7

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v12

    sget-object v16, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v5}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    move-object v13, v12

    :goto_2
    return-object v13

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v12, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    :cond_3
    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    const/16 v16, 0x1

    invoke-interface {v6, v11}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    const/4 v15, 0x2

    const/4 v7, 0x0

    :goto_3
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v7, v0, :cond_6

    invoke-interface {v6, v15}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    :goto_4
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_5

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v12

    sget-object v16, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_4

    sget-object v16, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_4

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    move-object v13, v12

    goto :goto_2

    :cond_4
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {v3, v11, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v2

    goto :goto_4

    :catchall_0
    move-exception v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v16

    :cond_5
    const/16 v15, 0x9

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {v14, v5, v11}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v11

    goto/16 :goto_1

    :cond_7
    move-object v13, v12

    goto :goto_2
.end method
