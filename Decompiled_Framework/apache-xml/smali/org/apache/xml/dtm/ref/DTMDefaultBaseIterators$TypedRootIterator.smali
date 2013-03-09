.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedRootIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 7

    const/16 v6, 0xe

    const/4 v3, -0x1

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->_nodeType:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getExpandedTypeID(I)I

    move-result v0

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-lt v2, v6, :cond_2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->returnNode(I)I

    move-result v3

    goto :goto_0

    :cond_2
    if-ge v0, v6, :cond_3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->returnNode(I)I

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;->returnNode(I)I

    move-result v3

    goto :goto_0
.end method
