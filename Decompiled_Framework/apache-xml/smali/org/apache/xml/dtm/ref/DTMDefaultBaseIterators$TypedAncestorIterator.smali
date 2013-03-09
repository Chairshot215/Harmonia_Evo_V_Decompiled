.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedAncestorIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 7

    const/16 v6, 0xe

    const/4 v3, -0x1

    if-nez p1, :cond_0

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getDocument()I

    move-result p1

    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_realStartNode:I

    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    move-result v1

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->_nodeType:I

    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    if-nez v4, :cond_1

    if-eq p1, v3, :cond_1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    move-result v1

    :cond_1
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    if-lt v2, v6, :cond_3

    :goto_0
    if-eq v1, v3, :cond_7

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    move-result v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eq v1, v3, :cond_7

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v0

    if-lt v0, v6, :cond_4

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    if-eq v4, v2, :cond_5

    :cond_4
    if-ge v0, v6, :cond_6

    if-ne v0, v2, :cond_6

    :cond_5
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    :cond_6
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    move-result v1

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v4}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    if-ltz v4, :cond_8

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestors:Lorg/apache/xml/utils/NodeVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->m_ancestorsPos:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v3

    :cond_8
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_9
    return-object p0
.end method
