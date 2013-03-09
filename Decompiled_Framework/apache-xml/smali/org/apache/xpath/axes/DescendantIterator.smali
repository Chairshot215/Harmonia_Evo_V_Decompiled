.class public Lorg/apache/xpath/axes/DescendantIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "DescendantIterator.java"


# static fields
.field static final serialVersionUID:J = -0x1084eea8350345eaL


# instance fields
.field protected m_axis:I

.field protected m_extendedTypeID:I

.field protected transient m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    const/16 v1, 0x12

    iput v1, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/DescendantIterator;->initNodeTest(I)V

    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v9, 0x2a

    const/4 v3, 0x0

    const/4 v8, -0x1

    invoke-direct {p0, p1, p2, p3, v3}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v5

    if-ne v9, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v1, 0x0

    const/16 v7, 0x30

    if-ne v7, v5, :cond_2

    const/4 v3, 0x1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    invoke-virtual {p1, v2}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p1, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v4

    if-eq v8, v4, :cond_3

    move v0, v2

    goto :goto_1

    :cond_2
    const/16 v7, 0x32

    if-ne v7, v5, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v7

    if-ne v7, v9, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/high16 v7, 0x1

    and-int/2addr v7, p3

    if-eqz v7, :cond_4

    const/4 v3, 0x0

    :cond_4
    if-eqz v1, :cond_7

    if-eqz v3, :cond_6

    const/16 v7, 0x12

    iput v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    :goto_2
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v6

    and-int/lit8 v7, v6, 0x43

    if-eqz v7, :cond_5

    if-ne v6, v8, :cond_9

    :cond_5
    invoke-virtual {p0, v6}, Lorg/apache/xpath/axes/DescendantIterator;->initNodeTest(I)V

    :goto_3
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/axes/DescendantIterator;->initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V

    return-void

    :cond_6
    const/16 v7, 0x11

    iput v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    const/4 v7, 0x5

    iput v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    goto :goto_2

    :cond_8
    const/4 v7, 0x4

    iput v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/xpath/axes/DescendantIterator;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getPredicateCount()I

    move-result v8

    if-lez v8, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->asNode(Lorg/apache/xpath/XPathContext;)I

    move-result v8

    :goto_0
    return v8

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    iget v8, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    invoke-interface {v1, v8}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getNamespace()Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v8, -0x1

    if-eq v8, v7, :cond_1

    const-string v8, "*"

    if-eq v3, v8, :cond_1

    const-string v8, "*"

    if-ne v4, v8, :cond_2

    :cond_1
    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v8

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lorg/apache/xpath/axes/DescendantIterator;->getNodeTypeTest(I)I

    move-result v6

    invoke-interface {v1, v4, v3, v6}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(II)I

    move-result v8

    goto :goto_0
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/DescendantIterator;

    iget-object v1, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iput-object v1, v0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/DescendantIterator;->resetProximityPositions()V

    return-object v0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    check-cast p1, Lorg/apache/xpath/axes/DescendantIterator;

    iget v2, p1, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    :cond_0
    return-void
.end method

.method public getAxis()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    return v0
.end method

.method public nextNode()I
    .locals 9

    const/4 v8, 0x1

    const/4 v3, -0x1

    iget-boolean v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v4, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->resetProximityPositions()V

    :cond_2
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_5

    iget-object v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v1

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    invoke-virtual {v2, v4}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_3
    :goto_1
    :try_start_0
    iget v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    if-nez v4, :cond_7

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v3, v4, :cond_6

    iget-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    :goto_2
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    :goto_3
    if-eq v3, v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/DescendantIterator;->acceptNode(I)S

    move-result v4

    if-ne v8, v4, :cond_9

    :cond_4
    :goto_4
    if-eq v3, v0, :cond_a

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_0

    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    :try_start_1
    iget-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    goto :goto_2

    :cond_7
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v3, v4, :cond_8

    iget-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iget v6, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(II)I

    move-result v0

    :goto_5
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    iget v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(III)I

    move-result v0

    goto :goto_5

    :cond_9
    if-ne v0, v3, :cond_3

    goto :goto_4

    :cond_a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_b

    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_b
    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v4

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v5, :cond_c

    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_c
    throw v4
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    iget-object v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v5, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    invoke-interface {v4, v5}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getNamespace()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v4, -0x1

    if-eq v4, v3, :cond_0

    const-string v4, "*"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "*"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Lorg/apache/xpath/axes/DescendantIterator;->getNodeTypeTest(I)I

    move-result v2

    iget-object v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, v1, v0, v2}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    goto :goto_0
.end method
