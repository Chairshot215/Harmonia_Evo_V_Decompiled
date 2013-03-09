.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedPrecedingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 7

    const/16 v6, 0xe

    const/4 v3, -0x1

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_nodeType:I

    if-lt v2, v6, :cond_3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    if-gez v4, :cond_1

    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-ne v1, v3, :cond_7

    :goto_1
    return v3

    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    aget v4, v4, v5

    if-lt v1, v4, :cond_2

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    if-gez v4, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v4

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    if-gez v4, :cond_4

    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_stack:[I

    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    aget v4, v4, v5

    if-lt v1, v4, :cond_5

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;->_sp:I

    if-gez v4, :cond_3

    const/4 v1, -0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v0

    if-ge v0, v6, :cond_6

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v4, v4, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    if-ne v4, v2, :cond_3

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->returnNode(I)I

    move-result v3

    goto :goto_1
.end method
