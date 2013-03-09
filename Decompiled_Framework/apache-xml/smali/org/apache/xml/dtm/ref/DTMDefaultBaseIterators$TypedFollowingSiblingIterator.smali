.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedFollowingSiblingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 6

    const/16 v5, 0xe

    const/4 v3, -0x1

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-ne v4, v3, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->_nodeType:I

    if-lt v2, v5, :cond_4

    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    :cond_3
    :goto_1
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-eq v4, v3, :cond_0

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->returnNode(I)I

    move-result v3

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v0

    if-ge v0, v5, :cond_5

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    if-ne v4, v2, :cond_4

    goto :goto_1
.end method
