.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedRootIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 6

    const/16 v5, 0xe

    const/4 v2, -0x1

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    if-lt v3, v5, :cond_2

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->returnNode(I)I

    move-result v2

    goto :goto_0

    :cond_2
    if-ge v0, v5, :cond_3

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->returnNode(I)I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v3, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->_nodeType:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;->returnNode(I)I

    move-result v2

    goto :goto_0
.end method
