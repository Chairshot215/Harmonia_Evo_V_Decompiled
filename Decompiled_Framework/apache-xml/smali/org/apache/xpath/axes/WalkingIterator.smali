.class public Lorg/apache/xpath/axes/WalkingIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "WalkingIterator.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final serialVersionUID:J = 0x7e6e0639dd78a4f2L


# instance fields
.field protected m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

.field protected m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;


# direct methods
.method public constructor <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    if-eqz p4, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->loadWalkers(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    iget-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    iput-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    :cond_0
    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1

    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    iget-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/axes/AxesWalker;->cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    :cond_0
    return-object v0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    check-cast p1, Lorg/apache/xpath/axes/WalkingIterator;

    iget-object v1, p1, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public detach()V
    .locals 2

    iget-boolean v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->detach()V

    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    :cond_1
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->fixupVariables(Ljava/util/Vector;I)V

    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAnalysisBits()I
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/xpath/axes/AxesWalker;->getAnalysisBits()I

    move-result v0

    or-int/2addr v1, v0

    invoke-virtual {v2}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method public final getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method public final getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method public nextNode()I
    .locals 4

    const/4 v0, -0x1

    iget-boolean v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v3}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xpath/axes/WalkingIterator;->returnNextNode(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v1

    iget v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    invoke-virtual {v2, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    iget-object v3, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v3}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xpath/axes/WalkingIterator;->returnNextNode(I)I

    move-result v0

    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->reset()V

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    iput-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    :cond_0
    return-void
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    check-cast p1, Lorg/apache/xpath/axes/AxesWalker;

    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-void
.end method

.method public final setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-void
.end method

.method public final setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    iget-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    iput-object v0, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    :cond_0
    return-void
.end method
