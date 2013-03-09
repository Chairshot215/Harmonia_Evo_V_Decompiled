.class public Lorg/apache/xpath/NodeSet;
.super Ljava/lang/Object;
.source "NodeSet.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;
.implements Lorg/w3c/dom/traversal/NodeIterator;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xpath/axes/ContextNodeList;


# instance fields
.field private m_blocksize:I

.field protected transient m_cacheNodes:Z

.field protected m_firstFree:I

.field private transient m_last:I

.field m_map:[Lorg/w3c/dom/Node;

.field private m_mapSize:I

.field protected transient m_mutable:Z

.field protected transient m_next:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    iput-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    iput-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/NodeSet;)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/traversal/NodeIterator;)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    return-void
.end method

.method private addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)Z
    .locals 11

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v9, 0x0

    invoke-interface {p4, p3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    move v2, p2

    :goto_0
    if-lt v2, p1, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v7

    if-ne v7, v10, :cond_3

    const/4 v2, -0x2

    :cond_1
    :goto_1
    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v10, v0}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    :cond_2
    return v9

    :cond_3
    invoke-static {v10, v7}, Lorg/apache/xml/utils/DOM2Helper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v10, v0}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_1

    const/4 v1, 0x0

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/NodeSet;->addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/NodeSet;->addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)Z

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addElement(Lorg/w3c/dom/Node;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESET_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v1, v1, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aput-object p1, v1, v2

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return-void

    :cond_2
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    new-array v0, v1, [Lorg/w3c/dom/Node;

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public addNode(Lorg/w3c/dom/Node;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public addNodeInDocOrder(Lorg/w3c/dom/Node;Lorg/apache/xpath/XPathContext;)I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xpath/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;ZLorg/apache/xpath/XPathContext;)I

    move-result v0

    return v0
.end method

.method public addNodeInDocOrder(Lorg/w3c/dom/Node;ZLorg/apache/xpath/XPathContext;)I
    .locals 8

    iget-boolean v5, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "ER_NODESET_NOT_MUTABLE"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v3, -0x1

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-ne v0, p1, :cond_3

    const/4 v2, -0x2

    :cond_1
    const/4 v5, -0x2

    if-eq v2, v5, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    :cond_2
    :goto_1
    return v3

    :cond_3
    invoke-static {p1, v0}, Lorg/apache/xml/utils/DOM2Helper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x1

    :cond_5
    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public addNodes(Lorg/apache/xpath/NodeSet;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    return-void
.end method

.method public addNodes(Lorg/w3c/dom/NodeList;)V
    .locals 6

    iget-boolean v3, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_NODESET_NOT_MUTABLE"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V
    .locals 4

    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESET_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addNodesInDocOrder(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V
    .locals 6

    iget-boolean v3, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_NODESET_NOT_MUTABLE"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2, p2}, Lorg/apache/xpath/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;Lorg/apache/xpath/XPathContext;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addNodesInDocOrder(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V
    .locals 4

    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESET_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;Lorg/apache/xpath/XPathContext;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public appendNodes(Lorg/apache/xpath/NodeSet;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v0

    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v2, :cond_1

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    new-array v2, v2, [Lorg/w3c/dom/Node;

    iput-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    :cond_0
    :goto_0
    iget-object v2, p1, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v4, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    invoke-static {v2, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return-void

    :cond_1
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    new-array v1, v2, [Lorg/w3c/dom/Node;

    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/2addr v3, v0

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/NodeSet;

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v2, v0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    array-length v1, v1

    new-array v1, v1, [Lorg/w3c/dom/Node;

    iput-object v1, v0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v2, v0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public cloneWithReset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/NodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/NodeSet;->reset()V

    return-object v0
.end method

.method public contains(Lorg/w3c/dom/Node;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v1, v3, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public detach()V
    .locals 0

    return-void
.end method

.method public elementAt(I)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v2, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ER_NODESET_CANNOT_INDEX"

    invoke-static {v3, v0}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_1
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    return-object v0
.end method

.method public getCurrentPos()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    return v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLast()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    return v0
.end method

.method public getLength()I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v0

    return v0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShouldCacheNodes()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    return v0
.end method

.method public getWhatToShow()I
    .locals 1

    const/16 v0, -0x11

    return v0
.end method

.method public indexOf(Lorg/w3c/dom/Node;)I
    .locals 4

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v3, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v1, v3, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public indexOf(Lorg/w3c/dom/Node;I)I
    .locals 4

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v3, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, p2

    :goto_1
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v1, v3, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public insertElementAt(Lorg/w3c/dom/Node;I)V
    .locals 5

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESET_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_3

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v1, v1, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_2

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    add-int/lit8 v3, p2, 0x1

    iget v4, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object p1, v1, p2

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return-void

    :cond_3
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    new-array v0, v1, [Lorg/w3c/dom/Node;

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public insertNode(Lorg/w3c/dom/Node;I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    return-void
.end method

.method public isFresh()Z
    .locals 1

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    invoke-virtual {p0, v1}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final peepOrNull()Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final peepTail()Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final peepTailSub1()Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final pop()Lorg/w3c/dom/Node;
    .locals 4

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aget-object v0, v1, v2

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    return-object v0
.end method

.method public final popAndTop()Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aput-object v0, v1, v2

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final popPair()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    aput-object v2, v0, v1

    return-void
.end method

.method public final popQuick()V
    .locals 3

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESET_CANNOT_ITERATE"

    invoke-static {v2, v0}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_1

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final push(Lorg/w3c/dom/Node;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v2, :cond_1

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v2, v2, [Lorg/w3c/dom/Node;

    iput-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return-void

    :cond_1
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    new-array v1, v2, [Lorg/w3c/dom/Node;

    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public final pushPair(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v1, v1, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aput-object p1, v1, v2

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v1, v2

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return-void

    :cond_1
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    new-array v0, v1, [Lorg/w3c/dom/Node;

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public removeAllElements()V
    .locals 3

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    goto :goto_0
.end method

.method public removeElement(Lorg/w3c/dom/Node;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-boolean v3, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ER_NODESET_NOT_MUTABLE"

    invoke-static {v3, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v1, v3, v0

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v5, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aput-object v6, v2, v3

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeElementAt(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p1, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public removeNode(Lorg/w3c/dom/Node;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->removeElement(Lorg/w3c/dom/Node;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    return-void
.end method

.method public runTo(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_CANNOT_INDEX"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v1, :cond_1

    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    goto :goto_0
.end method

.method public setCurrentPos(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_CANNOT_INDEX"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    return-void
.end method

.method public setElementAt(Lorg/w3c/dom/Node;I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v0, v0, [Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object p1, v0, p2

    return-void
.end method

.method public setLast(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->isFresh()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_CANNOT_CALL_SETSHOULDCACHENODE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    return-void
.end method

.method public final setTail(Lorg/w3c/dom/Node;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public final setTailSub1(Lorg/w3c/dom/Node;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, -0x2

    aput-object p1, v0, v1

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return v0
.end method
