.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedPrecedingSiblingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public getLast()I
    .locals 7

    const/4 v6, -0x1

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    if-eq v4, v6, :cond_0

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->setMark()V

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_nodeType:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_startNodeID:I

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    :goto_1
    if-eq v1, v6, :cond_4

    if-eq v1, v3, :cond_4

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v1

    goto :goto_1

    :cond_2
    :goto_2
    if-eq v1, v6, :cond_4

    if-eq v1, v3, :cond_4

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->gotoMark()V

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_last:I

    goto :goto_0
.end method

.method public next()I
    .locals 6

    const/4 v3, -0x1

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->_nodeType:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;->_startNodeID:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    :goto_0
    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v4

    if-eq v4, v1, :cond_1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    goto :goto_0

    :cond_0
    :goto_1
    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v4

    const/16 v5, 0xe

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    goto :goto_1

    :cond_1
    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    :goto_2
    return v3

    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v3

    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;->returnNode(I)I

    move-result v3

    goto :goto_2
.end method
