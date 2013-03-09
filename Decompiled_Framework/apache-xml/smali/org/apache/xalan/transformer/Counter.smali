.class public Lorg/apache/xalan/transformer/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# static fields
.field static final MAXCOUNTNODES:I = 0x1f4


# instance fields
.field m_countNodes:Lorg/apache/xpath/NodeSetDTM;

.field m_countNodesStartCount:I

.field m_countResult:I

.field m_fromNode:I

.field m_numberElem:Lorg/apache/xalan/templates/ElemNumber;


# direct methods
.method constructor <init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/apache/xpath/NodeSetDTM;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodesStartCount:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/transformer/Counter;->m_fromNode:I

    iput-object p2, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    iput-object p1, p0, Lorg/apache/xalan/transformer/Counter;->m_numberElem:Lorg/apache/xalan/templates/ElemNumber;

    return-void
.end method


# virtual methods
.method getLast()I
    .locals 3

    iget-object v1, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v1}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getPreviouslyCounted(Lorg/apache/xpath/XPathContext;I)I
    .locals 6

    iget-object v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v4}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v3

    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countResult:I

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v4, v2}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v0

    if-ne p2, v0, :cond_1

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodesStartCount:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countResult:I

    :cond_0
    iget v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countResult:I

    return v4

    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
