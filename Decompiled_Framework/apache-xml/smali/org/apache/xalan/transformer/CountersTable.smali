.class public Lorg/apache/xalan/transformer/CountersTable;
.super Ljava/util/Hashtable;
.source "CountersTable.java"


# static fields
.field static final serialVersionUID:J = 0x1df6aab6353531a3L


# instance fields
.field transient m_countersMade:I

.field private transient m_newFound:Lorg/apache/xpath/NodeSetDTM;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xalan/transformer/CountersTable;->m_countersMade:I

    return-void
.end method


# virtual methods
.method appendBtoFList(Lorg/apache/xpath/NodeSetDTM;Lorg/apache/xpath/NodeSetDTM;)V
    .locals 3

    invoke-virtual {p2}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p2, v0}, Lorg/apache/xpath/NodeSetDTM;->item(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v10, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/CountersTable;->getCounters(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {p2, p1, p3}, Lorg/apache/xalan/templates/ElemNumber;->getTargetNode(Lorg/apache/xpath/XPathContext;I)I

    move-result v7

    if-eq v10, v7, :cond_7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/Counter;

    invoke-virtual {v3, p1, v7}, Lorg/apache/xalan/transformer/Counter;->getPreviouslyCounted(Lorg/apache/xpath/XPathContext;I)I

    move-result v1

    if-lez v1, :cond_0

    move v2, v1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iget-object v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    if-nez v8, :cond_2

    new-instance v8, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    iput-object v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    :cond_2
    :goto_2
    if-eq v10, v7, :cond_6

    if-eqz v1, :cond_5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/Counter;

    iget-object v8, v3, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v8}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v8, v3, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v8

    if-ne v8, v7, :cond_4

    iget v8, v3, Lorg/apache/xalan/transformer/Counter;->m_countNodesStartCount:I

    add-int/2addr v8, v0

    add-int/2addr v1, v8

    if-lez v0, :cond_3

    iget-object v8, v3, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    iget-object v9, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0, v8, v9}, Lorg/apache/xalan/transformer/CountersTable;->appendBtoFList(Lorg/apache/xpath/NodeSetDTM;Lorg/apache/xpath/NodeSetDTM;)V

    :cond_3
    iget-object v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v8}, Lorg/apache/xpath/NodeSetDTM;->removeAllElements()V

    move v2, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v8, v7}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, p1, v7}, Lorg/apache/xalan/templates/ElemNumber;->getPreviousNode(Lorg/apache/xpath/XPathContext;I)I

    move-result v7

    goto :goto_2

    :cond_6
    new-instance v3, Lorg/apache/xalan/transformer/Counter;

    new-instance v8, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    invoke-direct {v3, p2, v8}, Lorg/apache/xalan/transformer/Counter;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/apache/xpath/NodeSetDTM;)V

    iget v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_countersMade:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_countersMade:I

    iget-object v8, v3, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    iget-object v9, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0, v8, v9}, Lorg/apache/xalan/transformer/CountersTable;->appendBtoFList(Lorg/apache/xpath/NodeSetDTM;Lorg/apache/xpath/NodeSetDTM;)V

    iget-object v8, p0, Lorg/apache/xalan/transformer/CountersTable;->m_newFound:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v8}, Lorg/apache/xpath/NodeSetDTM;->removeAllElements()V

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    move v2, v1

    goto :goto_1
.end method

.method getCounters(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/CountersTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/CountersTable;->putElemNumber(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method putElemNumber(Lorg/apache/xalan/templates/ElemNumber;)Ljava/util/Vector;
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/transformer/CountersTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
