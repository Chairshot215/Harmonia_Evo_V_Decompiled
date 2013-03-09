.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedAncestorIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public getLast()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    return v0
.end method

.method public getNodeByPosition(I)I
    .locals 2

    if-lez p1, :cond_0

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 10

    const/16 v9, 0xe

    const/4 v4, -0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    move-result p1

    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_realStartNode:I

    iget-boolean v5, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v2

    iput v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    if-ne v2, v4, :cond_2

    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iput v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->_nodeType:I

    iget-boolean v5, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v2

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result p1

    :cond_3
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    if-lt v3, v9, :cond_6

    :goto_1
    if-eq v2, v4, :cond_b

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    if-ne v0, v3, :cond_5

    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4

    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [I

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    array-length v6, v6

    invoke-static {v5, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    :cond_4
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v7, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v7

    aput v7, v5, v6

    :cond_5
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v2

    goto :goto_1

    :cond_6
    :goto_2
    if-eq v2, v4, :cond_b

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    if-ge v0, v9, :cond_7

    if-eq v0, v3, :cond_8

    :cond_7
    if-lt v0, v9, :cond_a

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v5

    if-ne v5, v3, :cond_a

    :cond_8
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    array-length v6, v6

    if-lt v5, v6, :cond_9

    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [I

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    array-length v6, v6

    invoke-static {v5, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    :cond_9
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v7, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v7

    aput v7, v5, v6

    :cond_a
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v2

    goto :goto_2

    :cond_b
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    if-ltz v5, :cond_c

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestors:[I

    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;->m_ancestorsPos:I

    aget v4, v4, v5

    :cond_c
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    goto/16 :goto_0
.end method
