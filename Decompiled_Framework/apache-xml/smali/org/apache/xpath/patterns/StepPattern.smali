.class public Lorg/apache/xpath/patterns/StepPattern;
.super Lorg/apache/xpath/patterns/NodeTest;
.source "StepPattern.java"

# interfaces
.implements Lorg/apache/xpath/axes/SubContextList;
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/patterns/StepPattern$PredOwner;
    }
.end annotation


# static fields
.field private static final DEBUG_MATCHES:Z = false

.field static final serialVersionUID:J = 0x7de50adb02c28e44L


# instance fields
.field protected m_axis:I

.field m_predicates:[Lorg/apache/xpath/Expression;

.field m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

.field m_targetString:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;-><init>(I)V

    iput p2, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/patterns/NodeTest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput p4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    return-void
.end method

.method private final checkProximityPosition(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;II)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v8, 0xc

    :try_start_0
    invoke-interface {p3, v8}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v5

    invoke-virtual {v5, p4}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v8, -0x1

    if-eq v8, v0, :cond_5

    :try_start_1
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    sget-object v8, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    invoke-super {p0, p1, v0}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v9

    if-eq v8, v9, :cond_4

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v8, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v8, v8, v1

    invoke-virtual {v8, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    const/4 v8, 0x2

    :try_start_4
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v9

    if-ne v8, v9, :cond_0

    new-instance v6, Ljava/lang/Error;

    const-string v7, "Why: Should never have been called"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v6

    :try_start_5
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->detach()V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v6

    :try_start_7
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v6

    :try_start_8
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v6
    :try_end_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v4

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    :try_start_9
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v8

    if-nez v8, :cond_3

    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_1
    :try_start_c
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v2, :cond_2

    add-int/lit8 p5, p5, -0x1

    :cond_2
    if-ge p5, v6, :cond_4

    :try_start_d
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_0

    :goto_2
    return v7

    :cond_3
    :try_start_e
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :try_start_10
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {v5, p4, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I
    :try_end_10
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_10} :catch_0

    move-result v0

    goto :goto_0

    :cond_5
    if-ne p5, v6, :cond_6

    :goto_3
    move v7, v6

    goto :goto_2

    :cond_6
    move v6, v7

    goto :goto_3
.end method

.method private final getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I
    .locals 15

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v5

    const/4 v12, 0x3

    :try_start_0
    invoke-interface {v3, v12}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v11

    invoke-virtual {v11, v5}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/4 v12, -0x1

    if-eq v12, v1, :cond_5

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    sget-object v12, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    move-object/from16 v0, p1

    invoke-super {p0, v0, v1}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    if-eq v12, v13, :cond_4

    const/4 v6, 0x1

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    const/4 v4, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v12, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v12, v12, v4

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v9

    const/4 v12, 0x2

    :try_start_4
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v13

    if-ne v12, v13, :cond_2

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->numWithSideEffects()D
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-wide v13

    double-to-int v13, v13

    if-eq v12, v13, :cond_3

    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_0
    :goto_2
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    if-nez p3, :cond_4

    if-ne v1, v2, :cond_4

    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_0

    move v8, v7

    :goto_3
    return v8

    :cond_2
    :try_start_9
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v12

    if-nez v12, :cond_3

    const/4 v6, 0x0

    :try_start_a
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v12

    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v12

    :try_start_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v12
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
    move-exception v10

    new-instance v12, Ljava/lang/RuntimeException;

    invoke-virtual {v10}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_3
    :try_start_e
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_2
    move-exception v12

    :try_start_10
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V

    throw v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_3
    move-exception v12

    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    throw v12
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_4
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {v11, v5, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I
    :try_end_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_12 .. :try_end_12} :catch_0

    move-result v1

    goto/16 :goto_0

    :cond_5
    move v8, v7

    goto :goto_3
.end method


# virtual methods
.method public calcScore()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lorg/apache/xpath/patterns/StepPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    :goto_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcTargetString()V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    goto :goto_0
.end method

.method public calcTargetString()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getWhatToShow()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v1, "*"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    :goto_0
    return-void

    :sswitch_0
    const-string v1, "#comment"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    const-string v1, "#text"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const-string v1, "*"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const-string v1, "/"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    const-string v1, "*"

    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    const-string v1, "*"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x1 -> :sswitch_4
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0xc -> :sswitch_1
        0x80 -> :sswitch_0
        0x100 -> :sswitch_3
        0x500 -> :sswitch_3
    .end sparse-switch
.end method

.method protected callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 4

    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v1, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    new-instance v2, Lorg/apache/xpath/patterns/StepPattern$PredOwner;

    invoke-direct {v2, p0, v0}, Lorg/apache/xpath/patterns/StepPattern$PredOwner;-><init>(Lorg/apache/xpath/patterns/StepPattern;I)V

    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lorg/apache/xpath/XPathVisitor;->visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v3, p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_2
    return-void
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1

    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitMatchPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/StepPattern;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xpath/patterns/StepPattern;->callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicate(I)Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/xpath/patterns/StepPattern;

    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v1, v4

    iget-object v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v4, v4

    if-ne v4, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v0

    iget-object v5, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-nez v4, :cond_0

    :cond_3
    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    iget-object v5, v2, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/patterns/StepPattern;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v4, :cond_4

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(I)I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-ne v0, v1, :cond_3

    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/xpath/patterns/StepPattern;->executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v1, p1, p3, p2}, Lorg/apache/xpath/patterns/StepPattern;->executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected final executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v6

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v8

    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    double-to-int v5, v0

    if-eqz v7, :cond_2

    if-ne v5, v10, :cond_1

    move v9, v10

    :goto_1
    :try_start_3
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_2
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    :try_start_5
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;->checkProximityPosition(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;II)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    const/4 v9, 0x0

    :try_start_6
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    throw v0

    :cond_3
    :try_start_8
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    const/4 v9, 0x0

    :try_start_9
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :cond_4
    :try_start_b
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_d
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_e
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
.end method

.method protected final executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    move v0, p3

    iget v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    invoke-interface {p2, v4}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v1

    :goto_0
    const/4 v4, -0x1

    if-eq v4, v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {v3, v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v4
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->fixupVariables(Ljava/util/Vector;I)V

    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    return-void
.end method

.method public getAxis()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    return v0
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    return-object v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getPredicatePos()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I

    move-result v0

    return v0
.end method

.method public getMatchScore(Lorg/apache/xpath/XPathContext;I)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    throw v1
.end method

.method public getPredicate(I)Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getPredicateCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v0, v0

    goto :goto_0
.end method

.method public getPredicates()[Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getProximityPosition(Lorg/apache/xpath/XPathContext;)I
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getPredicatePos()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I

    move-result v0

    return v0
.end method

.method public getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    return-object v0
.end method

.method public getTargetString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    return-object v0
.end method

.method public setAxis(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    return-void
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    check-cast p1, Lorg/apache/xpath/patterns/StepPattern;

    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    return-void
.end method

.method public setPredicates([Lorg/apache/xpath/Expression;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcScore()V

    return-void
.end method

.method public setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p1, p0}, Lorg/apache/xpath/patterns/StepPattern;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcScore()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_e

    if-eq v2, p0, :cond_0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    invoke-static {v3}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "::"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x5000

    iget v4, v2, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    if-ne v3, v4, :cond_1

    const-string v3, "doc()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v3, :cond_d

    const/4 v1, 0x0

    :goto_2
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v3, v3

    if-ge v1, v3, :cond_d

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/high16 v3, 0x1

    iget v4, v2, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    if-ne v3, v4, :cond_2

    const-string v3, "function()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    iget v4, v2, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    if-ne v3, v4, :cond_3

    const-string v3, "node()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    iget v4, v2, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    if-ne v3, v4, :cond_4

    const-string v3, "text()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const/16 v3, 0x40

    iget v4, v2, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    if-ne v3, v4, :cond_6

    const-string v3, "processing-instruction("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    const/16 v3, 0x80

    iget v4, v2, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    if-ne v3, v4, :cond_7

    const-string v3, "comment()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    iget-object v3, v2, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget v3, v2, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    if-ne v5, v3, :cond_8

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    iget-object v3, v2, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v3, :cond_9

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    iget-object v3, v2, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_a
    iget v3, v2, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    if-ne v5, v3, :cond_b

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_b
    const/16 v3, 0x500

    iget v4, v2, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    if-ne v3, v4, :cond_c

    const-string v3, "doc-root()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_d
    iget-object v2, v2, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
