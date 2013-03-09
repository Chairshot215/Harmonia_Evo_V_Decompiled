.class public Lorg/apache/xpath/axes/SelfIteratorNoPredicate;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "SelfIteratorNoPredicate.java"


# static fields
.field static final serialVersionUID:J = -0x3aa8ec27a3992a39L


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    return-void
.end method


# virtual methods
.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    return v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextNode()I
    .locals 3

    const/4 v1, -0x1

    iget-boolean v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, v2, :cond_1

    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    :goto_1
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    goto :goto_0
.end method
