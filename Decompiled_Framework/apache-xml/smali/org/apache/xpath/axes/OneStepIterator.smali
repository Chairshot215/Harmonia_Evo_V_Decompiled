.class public Lorg/apache/xpath/axes/OneStepIterator;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "OneStepIterator.java"


# static fields
.field static final serialVersionUID:J = 0x402ab874e6139f8bL


# instance fields
.field protected m_axis:I

.field protected m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    iput-object p1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    iput p2, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/OneStepIterator;->initNodeTest(I)V

    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/xpath/axes/WalkerFactory;->getAxisFromStep(Lorg/apache/xpath/compiler/Compiler;I)I

    move-result v1

    iput v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    iget-object v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    :cond_0
    return-object v0
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    iget-object v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    iput-object v1, v0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    return-object v0
.end method

.method protected countProximityPosition(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->isReverseAxes()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/ChildTestIterator;->countProximityPosition(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    goto :goto_0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/ChildTestIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    check-cast p1, Lorg/apache/xpath/axes/OneStepIterator;

    iget v2, p1, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public detach()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    :cond_0
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->detach()V

    :cond_1
    return-void
.end method

.method public getAxis()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    return v0
.end method

.method public getLength()I
    .locals 10

    const/4 v9, -0x1

    const/4 v7, 0x1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->isReverseAxes()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->getLength()I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v8, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v8}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object v8

    if-ne p0, v8, :cond_2

    move v2, v7

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getPredicateCount()I

    move-result v4

    iget v8, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    if-eq v9, v8, :cond_3

    if-eqz v2, :cond_3

    iget v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v8, v7, :cond_3

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v6

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getRoot()I

    move-result v5

    invoke-virtual {v6, v5}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {v0, v5, v6}, Lorg/apache/xpath/axes/OneStepIterator;->setRoot(ILjava/lang/Object;)V

    iget v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    iput v8, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    :goto_2
    invoke-virtual {v0}, Lorg/apache/xpath/axes/OneStepIterator;->nextNode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v9, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    :goto_3
    if-eqz v2, :cond_0

    iget v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v8, v7, :cond_0

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    goto :goto_3

    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v7
.end method

.method protected getNextNode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method

.method protected getProximityPosition(I)I
    .locals 7

    const/4 v5, -0x1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->isReverseAxes()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/ChildTestIterator;->getProximityPosition(I)I

    move-result v5

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-ltz p1, :cond_0

    iget-object v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v6, v6, p1

    if-gtz v6, :cond_3

    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getRoot()I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {v0, v3, v4}, Lorg/apache/xpath/axes/OneStepIterator;->setRoot(ILjava/lang/Object;)V

    iput p1, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0}, Lorg/apache/xpath/axes/OneStepIterator;->nextNode()I

    move-result v2

    if-eq v5, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v6, v5, p1

    add-int/2addr v6, v1

    aput v6, v5, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    :cond_3
    :goto_2
    iget-object v5, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v5, v5, p1

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v5
.end method

.method public isReverseAxes()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->isReverse()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->reset()V

    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->reset()Lorg/apache/xml/dtm/DTMAxisIterator;

    :cond_0
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/ChildTestIterator;->setRoot(ILjava/lang/Object;)V

    iget v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    return-void
.end method
