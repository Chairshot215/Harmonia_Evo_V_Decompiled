.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedDescendantIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 8

    const/16 v7, 0xe

    const/4 v6, 0x1

    const/4 v4, -0x1

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    if-ne v5, v4, :cond_0

    :goto_0
    return v4

    :cond_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->_nodeType:I

    if-eq v2, v6, :cond_4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    if-eq v4, v0, :cond_2

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v5

    if-ge v5, v3, :cond_3

    if-eq v3, v1, :cond_3

    :cond_2
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_1

    :goto_1
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->returnNode(I)I

    move-result v4

    goto :goto_0

    :cond_4
    if-nez v3, :cond_7

    :cond_5
    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    if-ne v4, v0, :cond_6

    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    goto :goto_0

    :cond_6
    if-lt v0, v7, :cond_5

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v5

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    if-eq v4, v0, :cond_8

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v5

    if-ge v5, v3, :cond_9

    if-eq v3, v1, :cond_9

    :cond_8
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    goto :goto_0

    :cond_9
    if-lt v0, v7, :cond_7

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v5

    if-ne v5, v6, :cond_7

    goto :goto_1
.end method
