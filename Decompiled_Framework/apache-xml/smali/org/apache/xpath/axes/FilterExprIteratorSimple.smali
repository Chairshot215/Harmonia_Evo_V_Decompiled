.class public Lorg/apache/xpath/axes/FilterExprIteratorSimple;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "FilterExprIteratorSimple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x60da4ec68033d15bL


# instance fields
.field private m_canDetachNodeset:Z

.field private m_expr:Lorg/apache/xpath/Expression;

.field private transient m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

.field private m_mustHardReset:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_mustHardReset:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_canDetachNodeset:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_mustHardReset:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_canDetachNodeset:Z

    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xpath/axes/FilterExprIteratorSimple;)Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/xpath/axes/FilterExprIteratorSimple;Lorg/apache/xpath/Expression;)Lorg/apache/xpath/Expression;
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-object p1
.end method

.method public static executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/WrappedRuntimeException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v3

    invoke-virtual {v5, p4}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    invoke-virtual {p5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    move-object v1, v0

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    invoke-virtual {v5, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v6, v4}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    throw v6
.end method


# virtual methods
.method public callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;-><init>(Lorg/apache/xpath/axes/FilterExprIteratorSimple;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    iget-object v2, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    iget-object v3, v0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->detach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    :cond_0
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->fixupVariables(Ljava/util/Vector;I)V

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getAnalysisBits()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    instance-of v0, v0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    check-cast v0, Lorg/apache/xpath/axes/PathComponent;

    invoke-interface {v0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x400

    goto :goto_0
.end method

.method public getAxis()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getAxis()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public getInnerExpression()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public isDocOrdered()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->isDocOrdered()Z

    move-result v0

    return v0
.end method

.method public nextNode()I
    .locals 3

    const/4 v1, -0x1

    iget-boolean v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    :goto_1
    if-eq v1, v0, :cond_2

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    move v0, v1

    goto :goto_0
.end method

.method public setInnerExpression(Lorg/apache/xpath/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->getIsTopLevel()Z

    move-result v3

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    iget-object v5, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    return-void
.end method
