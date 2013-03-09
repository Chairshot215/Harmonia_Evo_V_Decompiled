.class public Lorg/apache/xpath/NodeSetDTM;
.super Lorg/apache/xml/utils/NodeVector;
.source "NodeSetDTM.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = 0x6aabdcf4e04f714eL


# instance fields
.field protected transient m_cacheNodes:Z

.field private transient m_last:I

.field m_manager:Lorg/apache/xml/dtm/DTMManager;

.field protected transient m_mutable:Z

.field protected transient m_next:I

.field protected m_root:I


# direct methods
.method public constructor <init>(IILorg/apache/xml/dtm/DTMManager;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/NodeVector;-><init>(I)V

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    iput-object p3, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    return-void
.end method

.method public constructor <init>(ILorg/apache/xml/dtm/DTMManager;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    iput-object p2, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodes(Lorg/apache/xml/dtm/DTMIterator;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    iput-object p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/NodeSetDTM;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    invoke-virtual {p1}, Lorg/apache/xpath/NodeSetDTM;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p1}, Lorg/apache/xpath/NodeSetDTM;->getRoot()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodes(Lorg/apache/xml/dtm/DTMIterator;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput v5, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    iput-boolean v4, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    iput-boolean v4, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    iput v5, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    iput-boolean v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    iput-boolean v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    iput v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addElement(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    return-void
.end method

.method public addNode(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    return-void
.end method

.method public addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(IZLorg/apache/xpath/XPathContext;)I

    move-result v0

    return v0
.end method

.method public addNodeInDocOrder(IZLorg/apache/xpath/XPathContext;)I
    .locals 9

    iget-boolean v6, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/4 v4, -0x1

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {p0, v3}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v0

    if-ne v0, p1, :cond_3

    const/4 v3, -0x2

    :cond_1
    const/4 v6, -0x2

    if-eq v3, v6, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, p1, v4}, Lorg/apache/xpath/NodeSetDTM;->insertElementAt(II)V

    :cond_2
    :goto_1
    return v4

    :cond_3
    invoke-virtual {p3, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    if-ne v3, p1, :cond_6

    const/4 v2, 0x1

    :cond_5
    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public addNodes(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 4

    iget-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    const/4 v1, -0x1

    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addNodesInDocOrder(Lorg/apache/xml/dtm/DTMIterator;Lorg/apache/xpath/XPathContext;)V
    .locals 4

    iget-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public allowDetachToRelease(Z)V
    .locals 0

    return-void
.end method

.method public appendNodes(Lorg/apache/xml/utils/NodeVector;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->appendNodes(Lorg/apache/xml/utils/NodeVector;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/xml/utils/NodeVector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    return-object v0
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v0}, Lorg/apache/xpath/NodeSetDTM;->reset()V

    return-object v0
.end method

.method public contains(I)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->contains(I)Z

    move-result v0

    return v0
.end method

.method public detach()V
    .locals 0

    return-void
.end method

.method public elementAt(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public getAxis()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentNode()I
    .locals 5

    iget-boolean v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "This NodeSetDTM can not do indexing or counting functions!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    iget v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    if-lez v3, :cond_1

    iget v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    add-int/lit8 v0, v3, -0x1

    :goto_0
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v1

    :goto_1
    iput v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    return v1

    :cond_1
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getCurrentPos()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getFilter()Lorg/apache/xml/dtm/DTMFilter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLast()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    return v0
.end method

.method public getLength()I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v0

    return v0
.end method

.method public getRoot()I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->item(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    goto :goto_0
.end method

.method public getShouldCacheNodes()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    return v0
.end method

.method public getWhatToShow()I
    .locals 1

    const/16 v0, -0x11

    return v0
.end method

.method public indexOf(I)I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public indexOf(II)I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public insertElementAt(II)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    return-void
.end method

.method public insertNode(II)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;->insertElementAt(II)V

    return-void
.end method

.method public isDocOrdered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFresh()Z
    .locals 1

    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMutable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    return v0
.end method

.method public item(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public nextNode()I
    .locals 3

    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    invoke-virtual {p0, v1}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v0

    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public previousNode()I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_CANNOT_ITERATE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public removeAllElements()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Lorg/apache/xml/utils/NodeVector;->removeAllElements()V

    return-void
.end method

.method public removeElement(I)Z
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->removeElement(I)Z

    move-result v0

    return v0
.end method

.method public removeElementAt(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->removeElementAt(I)V

    return-void
.end method

.method public removeNode(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->removeElement(I)Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    return-void
.end method

.method public runTo(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_CANNOT_INDEX"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    goto :goto_0
.end method

.method public setCurrentPos(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_CANNOT_INDEX"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    return-void
.end method

.method public setElementAt(II)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    return-void
.end method

.method public setEnvironment(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setItem(II)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    return-void
.end method

.method public setLast(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->isFresh()Z

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
    iput-boolean p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    return-void
.end method

.method public size()I
    .locals 1

    invoke-super {p0}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v0

    return v0
.end method
