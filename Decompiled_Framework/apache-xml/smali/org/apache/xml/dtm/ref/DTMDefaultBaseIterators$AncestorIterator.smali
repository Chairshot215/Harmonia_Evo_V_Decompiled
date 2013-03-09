.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AncestorIterator"
.end annotation


# instance fields
.field m_ancestors:Lorg/apache/xml/utils/NodeVector;

.field m_ancestorsPos:I

.field m_markedPos:I

.field m_realStartNode:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

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

    check-cast v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

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

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_realStartNode:I

    return v0
.end method

.method public gotoMark()V
    .locals 2

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_markedPos:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v0

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

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v2

    :goto_0
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->returnNode(I)I

    move-result v2

    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setMark()V
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_markedPos:I

    return-void
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 3

    const/4 v1, -0x1

    if-nez p1, :cond_0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    move-result p1

    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_realStartNode:I

    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    move-result v0

    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    if-nez v2, :cond_1

    if-eq p1, v1, :cond_1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    move-result v0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result p1

    :cond_1
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    :goto_0
    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    move-result v0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz v2, :cond_3

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v1

    :cond_3
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_4
    return-object p0
.end method
