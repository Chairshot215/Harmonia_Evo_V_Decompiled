.class public Lorg/apache/xpath/axes/ChildIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "ChildIterator.java"


# static fields
.field static final serialVersionUID:J = -0x603f9708c7e3feafL


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/ChildIterator;->initNodeTest(I)V

    return-void
.end method


# virtual methods
.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v2

    return v2
.end method

.method public getAxis()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public nextNode()I
    .locals 4

    const/4 v1, -0x1

    iget-boolean v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    move v0, v1

    goto :goto_0
.end method
