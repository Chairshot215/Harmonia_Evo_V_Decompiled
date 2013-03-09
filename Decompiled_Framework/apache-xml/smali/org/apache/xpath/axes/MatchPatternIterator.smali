.class public Lorg/apache/xpath/axes/MatchPatternIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "MatchPatternIterator.java"


# static fields
.field private static final DEBUG:Z = false

.field static final serialVersionUID:J = -0x482e35cb67d7471aL


# instance fields
.field protected m_pattern:Lorg/apache/xpath/patterns/StepPattern;

.field protected m_superAxis:I

.field protected m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v7, 0x10

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3, v6}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    const/4 v5, -0x1

    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    invoke-static {p0, p1, v0, v6}, Lorg/apache/xpath/axes/WalkerFactory;->loadSteps(Lorg/apache/xpath/axes/MatchPatternIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_pattern:Lorg/apache/xpath/patterns/StepPattern;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x2800

    and-int/2addr v5, p3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    const v5, 0x5d86000

    and-int/2addr v5, p3

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    const/high16 v5, 0x7

    and-int/2addr v5, p3

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    const v5, 0x208000

    and-int/2addr v5, p3

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-nez v1, :cond_4

    if-eqz v3, :cond_6

    :cond_4
    if-eqz v2, :cond_5

    iput v7, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    :goto_0
    return-void

    :cond_5
    const/16 v5, 0x11

    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_8

    if-eqz v2, :cond_7

    const/16 v5, 0xe

    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_0

    :cond_7
    const/4 v5, 0x5

    iput v5, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_0

    :cond_8
    iput v7, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    goto :goto_0
.end method


# virtual methods
.method public acceptNode(ILorg/apache/xpath/XPathContext;)S
    .locals 4

    :try_start_0
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    iget v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {p2, v2}, Lorg/apache/xpath/XPathContext;->pushIteratorRoot(I)V

    iget-object v2, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_pattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v2, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    const/4 v2, 0x3

    :goto_0
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popIteratorRoot()V

    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popIteratorRoot()V

    throw v2
.end method

.method public detach()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    :cond_0
    return-void
.end method

.method protected getNextNode()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iget v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    goto :goto_0
.end method

.method public nextNode()I
    .locals 6

    const/4 v5, 0x1

    const/4 v3, -0x1

    iget-boolean v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v4, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_4

    iget-object v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v1

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    invoke-virtual {v2, v4}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/MatchPatternIterator;->getNextNode()I

    move-result v0

    if-eq v3, v0, :cond_3

    iget-object v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0, v0, v4}, Lorg/apache/xpath/axes/MatchPatternIterator;->acceptNode(ILorg/apache/xpath/XPathContext;)S

    move-result v4

    if-ne v5, v4, :cond_5

    :cond_3
    :goto_2
    if-eq v3, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/xpath/axes/MatchPatternIterator;->incrementCurrentPos()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_0

    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_7

    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_7
    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v4

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v5, :cond_8

    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_8
    throw v4
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_superAxis:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/MatchPatternIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    return-void
.end method
