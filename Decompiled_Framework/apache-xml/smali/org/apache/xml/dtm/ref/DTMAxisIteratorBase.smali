.class public abstract Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;
.super Ljava/lang/Object;
.source "DTMAxisIteratorBase.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTMAxisIterator;


# instance fields
.field protected _includeSelf:Z

.field protected _isRestartable:Z

.field protected _last:I

.field protected _markedNode:I

.field protected _position:I

.field protected _startNode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    return-void
.end method


# virtual methods
.method public cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v2, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getAxis()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getLast()I
    .locals 3

    const/4 v2, -0x1

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    if-ne v1, v2, :cond_1

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->setMark()V

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->reset()Lorg/apache/xml/dtm/DTMAxisIterator;

    :cond_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->next()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->gotoMark()V

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    return v1
.end method

.method public getNodeByPosition(I)I
    .locals 4

    const/4 v2, -0x1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->isReverse()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->getLast()I

    move-result v3

    sub-int/2addr v3, p1

    add-int/lit8 v1, v3, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->next()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->getPosition()I

    move-result v3

    if-ne v1, v3, :cond_0

    :goto_1
    return v0

    :cond_1
    move v1, p1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    goto :goto_0
.end method

.method public getStartNode()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    return v0
.end method

.method public includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    return-object p0
.end method

.method public isDocOrdered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReverse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    return-object p0
.end method

.method protected final resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    return-object p0
.end method

.method protected final returnNode(I)I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_position:I

    return p1
.end method

.method public setRestartable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    return-void
.end method
