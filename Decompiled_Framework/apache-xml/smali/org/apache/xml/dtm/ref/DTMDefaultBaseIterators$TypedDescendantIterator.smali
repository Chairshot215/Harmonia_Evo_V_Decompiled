.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedDescendantIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    const/4 v2, -0x1

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_type(I)S

    move-result v1

    if-eq v2, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->isDescendant(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iput v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_nodeType:I

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->_nodeType:I

    if-ne v3, v4, :cond_1

    :cond_4
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->returnNode(I)I

    move-result v2

    goto :goto_0
.end method
