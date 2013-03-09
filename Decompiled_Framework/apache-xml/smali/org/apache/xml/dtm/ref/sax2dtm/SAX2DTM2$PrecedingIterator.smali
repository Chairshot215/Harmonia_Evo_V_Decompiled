.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrecedingIterator"
.end annotation


# instance fields
.field protected _markedDescendant:I

.field protected _markedNode:I

.field protected _markedsp:I

.field private final _maxAncestors:I

.field protected _oldsp:I

.field protected _sp:I

.field protected _stack:[I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 1

    const/16 v0, 0x8

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_maxAncestors:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    return-void
.end method


# virtual methods
.method public cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 7

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    array-length v3, v3

    new-array v2, v3, [I

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    array-length v6, v6

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v3, Lorg/apache/xml/dtm/DTMException;

    const-string v4, "ER_ITERATOR_CLONE_NOT_SUPPORTED"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public gotoMark()V
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedsp:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedNode:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return-void
.end method

.method public isReverse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()I
    .locals 4

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    :goto_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    if-ltz v1, :cond_2

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->returnNode(I)I

    move-result v1

    :goto_1
    return v1

    :cond_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_oldsp:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    return-object v0
.end method

.method public setMark()V
    .locals 2

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedsp:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedNode:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedDescendant:I

    return-void
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    move-result p1

    :cond_0
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result p1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result p1

    :cond_1
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    const/4 v0, 0x0

    aput p1, v3, v0

    move v1, p1

    :goto_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    array-length v3, v3

    if-ne v0, v3, :cond_2

    mul-int/lit8 v3, v0, 0x2

    new-array v2, v3, [I

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    invoke-static {v3, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    aput v1, v3, v0

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    aget v3, v3, v0

    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_oldsp:I

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_5
    return-object p0
.end method
