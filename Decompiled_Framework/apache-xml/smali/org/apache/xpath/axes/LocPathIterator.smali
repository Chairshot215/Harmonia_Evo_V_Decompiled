.class public abstract Lorg/apache/xpath/axes/LocPathIterator;
.super Lorg/apache/xpath/axes/PredicatedNodeTest;
.source "LocPathIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/axes/PathComponent;


# static fields
.field static final serialVersionUID:J = -0x3fdf47dcaa1dfdfaL


# instance fields
.field protected m_allowDetach:Z

.field protected transient m_cdtm:Lorg/apache/xml/dtm/DTM;

.field protected transient m_clones:Lorg/apache/xpath/axes/IteratorPool;

.field protected transient m_context:I

.field protected transient m_currentContextNode:I

.field protected transient m_execContext:Lorg/apache/xpath/XPathContext;

.field private m_isTopLevel:Z

.field public transient m_lastFetched:I

.field protected transient m_length:I

.field protected transient m_pos:I

.field private m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

.field transient m_stackFrame:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    new-instance v0, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    iput-boolean v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    new-instance v0, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    iput-boolean v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    invoke-virtual {p0, p0}, Lorg/apache/xpath/axes/LocPathIterator;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    iput-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    new-instance v0, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    iput-boolean v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    invoke-virtual {p0, p0}, Lorg/apache/xpath/axes/LocPathIterator;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v1, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    return-void
.end method

.method public asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v1}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/axes/LocPathIterator;

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    invoke-virtual {v0, p2, p1}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    return-object v0
.end method

.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v3}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-interface {v1, v0, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v2

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    return v2
.end method

.method public bool(Lorg/apache/xpath/XPathContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->asNode(Lorg/apache/xpath/XPathContext;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1

    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitStep(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/NodeTest;)Z

    invoke-virtual {p0, p2}, Lorg/apache/xpath/axes/LocPathIterator;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v1}, Lorg/apache/xpath/axes/IteratorPool;->getInstanceOrThrow()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    iput-object v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iput-object v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iput v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    iput v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    iput v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    return-object v0
.end method

.method public detach()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_0

    iput-object v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    iput-object v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;->freeInstance(Lorg/apache/xml/dtm/DTMIterator;)V

    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v1}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/axes/LocPathIterator;

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    return-object v0
.end method

.method public executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v4}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/xpath/axes/LocPathIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v2, v3, p2, v4}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    :cond_0
    return-void
.end method

.method public getAnalysisBits()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getAxis()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisBitFromAxes(I)I

    move-result v1

    return v1
.end method

.method public getAxis()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final getContext()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    return v0
.end method

.method public final getCurrentContextNode()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    return v0
.end method

.method public getCurrentNode()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method

.method public final getCurrentPos()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

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

.method public final getFoundLast()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    return v0
.end method

.method public getIsTopLevel()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    return v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getLength()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 9

    const/4 v6, 0x1

    const/4 v7, -0x1

    iget-object v8, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v8}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object v8

    if-ne p0, v8, :cond_1

    move v2, v6

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getPredicateCount()I

    move-result v5

    iget v8, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    if-eq v7, v8, :cond_2

    if-eqz v2, :cond_2

    iget v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v8, v6, :cond_2

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    :cond_0
    :goto_1
    return v4

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v8, :cond_3

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    goto :goto_1

    :cond_3
    iget v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ltz v8, :cond_5

    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getProximityPosition()I

    move-result v4

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v5, :cond_4

    if-eqz v2, :cond_4

    iget v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    iput v8, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    :cond_4
    :goto_3
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    move-result v3

    if-eq v7, v3, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    goto :goto_2

    :catch_0
    move-exception v1

    move v4, v7

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_0

    iget v7, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v7, v6, :cond_0

    iput v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    goto :goto_1
.end method

.method public final getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getExpressionOwner()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/PrefixResolver;

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    return-object v0
.end method

.method public getRoot()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    return v0
.end method

.method public getWhatToShow()I
    .locals 1

    const/16 v0, -0x11

    return v0
.end method

.method public final getXPathContext()Lorg/apache/xpath/XPathContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    return-object v0
.end method

.method public incrementCurrentPos()V
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    return-void
.end method

.method public isDocOrdered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFresh()Z
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

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

    const/4 v0, 0x0

    return v0
.end method

.method public isNodesetExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public item(I)I
    .locals 2

    const/4 v1, 0x0

    const-string v0, "item(int index) not supported by this iterator!"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    return v1
.end method

.method public abstract nextNode()I
.end method

.method public previousNode()I
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_CANNOT_ITERATE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "This iterator can not reset!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method protected returnNextNode(I)I
    .locals 2

    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    :cond_0
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    :cond_1
    return p1
.end method

.method public runTo(I)V
    .locals 3

    const/4 v2, -0x1

    iget-boolean v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-nez v1, :cond_0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getCurrentPos()I

    move-result v1

    if-gt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v2, p1, :cond_2

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    move-result v0

    if-eq v2, v0, :cond_0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    move-result v0

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getCurrentPos()I

    move-result v1

    if-lt v1, p1, :cond_2

    goto :goto_0
.end method

.method public final setCurrentContextNode(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    return-void
.end method

.method public setCurrentPos(I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "setCurrentPos not supported by this iterator!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public setEnvironment(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setIsTopLevel(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    return-void
.end method

.method public setItem(II)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "setItem not supported by this iterator!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method protected setNextPosition(I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "setNextPosition not supported in this iterator!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    move-object v0, p2

    check-cast v0, Lorg/apache/xpath/XPathContext;

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    :cond_0
    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    iput-boolean v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    iput v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    iget-boolean v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v1

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    :cond_1
    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "setShouldCacheNodes not supported by this iterater!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public size()I
    .locals 2

    const/4 v1, 0x0

    const-string v0, "size() not supported by this iterator!"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    return v1
.end method
