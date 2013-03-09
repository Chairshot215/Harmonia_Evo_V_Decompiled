.class public Lorg/apache/xpath/axes/ReverseAxesWalker;
.super Lorg/apache/xpath/axes/AxesWalker;
.source "ReverseAxesWalker.java"


# static fields
.field static final serialVersionUID:J = 0x27829a5f21e481adL


# instance fields
.field protected m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;


# direct methods
.method constructor <init>(Lorg/apache/xpath/axes/LocPathIterator;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    return-void
.end method


# virtual methods
.method protected countProximityPosition(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-super {p0}, Lorg/apache/xpath/axes/AxesWalker;->detach()V

    return-void
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->getRoot()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setRoot(I)V

    iget v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {v0, v4}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setPredicateCount(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    :goto_0
    const/4 v4, -0x1

    invoke-virtual {v0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->nextNode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v4, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    :goto_1
    return v1

    :catch_0
    move-exception v4

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    throw v4
.end method

.method protected getNextNode()I
    .locals 3

    const/4 v1, -0x1

    iget-boolean v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v0

    iget-boolean v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    :cond_2
    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    goto :goto_0
.end method

.method protected getProximityPosition(I)I
    .locals 6

    const/4 v4, -0x1

    if-gez p1, :cond_1

    move v1, v4

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v5, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v1, v5, p1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->getRoot()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setRoot(I)V

    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setPredicateCount(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    add-int/lit8 v1, v1, 0x1

    :goto_1
    invoke-virtual {v0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->nextNode()I

    move-result v2

    if-eq v4, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aput v1, v4, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    throw v4
.end method

.method public isDocOrdered()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReverseAxes()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setRoot(I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/ReverseAxesWalker;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    iget-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    return-void
.end method
