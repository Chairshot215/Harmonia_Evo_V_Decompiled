.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AncestorIterator"
.end annotation


# static fields
.field private static final m_blocksize:I = 0x20


# instance fields
.field m_ancestors:[I

.field m_ancestorsPos:I

.field m_markedPos:I

.field m_realStartNode:I

.field m_size:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    return-void
.end method


# virtual methods
.method public cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 5

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput v2, v0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/apache/xml/dtm/DTMException;

    const-string v3, "ER_ITERATOR_CLONE_NOT_SUPPORTED"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getStartNode()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_realStartNode:I

    return v0
.end method

.method public gotoMark()V
    .locals 2

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_markedPos:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    aget v0, v0, v1

    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final isReverse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()I
    .locals 4

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    aget v2, v2, v3

    :goto_0
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->returnNode(I)I

    move-result v2

    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    aget v0, v0, v1

    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setMark()V
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_markedPos:I

    return-void
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_0

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    move-result p1

    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_realStartNode:I

    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    iput v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    if-ne v1, v2, :cond_2

    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iput v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result p1

    :cond_3
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    :goto_1
    if-eq v1, v2, :cond_5

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    array-length v4, v4

    if-lt v3, v4, :cond_4

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    array-length v4, v4

    invoke-static {v3, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    :cond_4
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    aput p1, v3, v4

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result p1

    goto :goto_1

    :cond_5
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    if-ltz v3, :cond_6

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    aget v2, v2, v3

    :cond_6
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    goto :goto_0
.end method
