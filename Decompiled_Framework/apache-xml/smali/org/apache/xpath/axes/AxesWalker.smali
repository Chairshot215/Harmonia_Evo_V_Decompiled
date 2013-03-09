.class public Lorg/apache/xpath/axes/AxesWalker;
.super Lorg/apache/xpath/axes/PredicatedNodeTest;
.source "AxesWalker.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xpath/axes/PathComponent;
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final serialVersionUID:J = -0x292976585216b31fL


# instance fields
.field protected m_axis:I

.field private transient m_currentNode:I

.field private m_dtm:Lorg/apache/xml/dtm/DTM;

.field transient m_isFresh:Z

.field protected m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

.field m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

.field transient m_root:I

.field protected m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/axes/LocPathIterator;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>(Lorg/apache/xpath/axes/LocPathIterator;)V

    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    iput p2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    return-void
.end method

.method static findClone(Lorg/apache/xpath/axes/AxesWalker;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/axes/AxesWalker;

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private returnNextNode(I)I
    .locals 0

    return p1
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1

    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitStep(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/NodeTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->findClone(Lorg/apache/xpath/axes/AxesWalker;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-ne v2, p0, :cond_2

    iput-object v0, p1, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    :cond_2
    iget-object v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    :cond_3
    if-eqz p2, :cond_5

    iget-object v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    :cond_4
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    iput-object v0, v2, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    goto :goto_1
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/axes/AxesWalker;

    iget v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    iget v3, v0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public detach()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    iput-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    iput-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    iput v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    return-void
.end method

.method public getAnalysisBits()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getAxis()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisBitFromAxes(I)I

    move-result v1

    return v1
.end method

.method public getAxis()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    return v0
.end method

.method public final getCurrentNode()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/axes/WalkingIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getProximityPosition()I

    move-result v3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xpath/axes/AxesWalker;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget v7, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {v5, v7}, Lorg/apache/xpath/axes/AxesWalker;->setPredicateCount(I)V

    invoke-virtual {v5, v8}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    invoke-virtual {v5, v8}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v4

    :try_start_1
    invoke-virtual {v1, v5}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    :goto_0
    invoke-virtual {v5}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eq v6, v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    return v6

    :cond_0
    invoke-virtual {v1, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    move v6, v3

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-virtual {v1, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    throw v6
.end method

.method protected getNextNode()I
    .locals 4

    const/4 v0, -0x1

    iget-boolean v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v1

    iput v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    :cond_1
    :goto_1
    iget v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    :cond_2
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    iget v3, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v1

    iput v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    goto :goto_1
.end method

.method public getNextWalker()Lorg/apache/xpath/axes/AxesWalker;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method public getPrevWalker()Lorg/apache/xpath/axes/AxesWalker;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method public getRoot()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    return v0
.end method

.method public init(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V

    return-void
.end method

.method public isDocOrdered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextNode()I
    .locals 5

    const/4 v0, -0x1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v2}, Lorg/apache/xpath/axes/AxesWalker;->getNextNode()I

    move-result v0

    const/4 v3, -0x1

    if-ne v3, v0, :cond_2

    iget-object v2, v2, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Lorg/apache/xpath/axes/AxesWalker;->acceptNode(I)S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    iget-object v2, v2, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v2, v0}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    iput-object v1, v2, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    goto :goto_0
.end method

.method public setDefaultDTM(Lorg/apache/xml/dtm/DTM;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    return-void
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    check-cast p1, Lorg/apache/xpath/axes/AxesWalker;

    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-void
.end method

.method public setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-void
.end method

.method public setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-void
.end method

.method public setRoot(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/axes/WalkingIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    iget-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    iput p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    iput p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    const/4 v1, -0x1

    if-ne v1, p1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_SETTING_WALKER_ROOT_TO_NULL"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->resetProximityPositions()V

    return-void
.end method

.method public final wi()Lorg/apache/xpath/axes/WalkingIterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    return-object v0
.end method
