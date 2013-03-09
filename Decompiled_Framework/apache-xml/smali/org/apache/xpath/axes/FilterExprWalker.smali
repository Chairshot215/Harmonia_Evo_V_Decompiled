.class public Lorg/apache/xpath/axes/FilterExprWalker;
.super Lorg/apache/xpath/axes/AxesWalker;
.source "FilterExprWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x4bbbce8b5bbeb3b7L


# instance fields
.field private m_canDetachNodeset:Z

.field private m_expr:Lorg/apache/xpath/Expression;

.field private transient m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

.field private m_mustHardReset:Z


# direct methods
.method public constructor <init>(Lorg/apache/xpath/axes/WalkingIterator;)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_mustHardReset:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_canDetachNodeset:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xpath/axes/FilterExprWalker;)Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/xpath/axes/FilterExprWalker;Lorg/apache/xpath/Expression;)Lorg/apache/xpath/Expression;
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    return-object p1
.end method


# virtual methods
.method public acceptNode(I)S
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprWalker;->getPredicateCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/FilterExprWalker;->countProximityPosition(I)V

    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v1}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/xpath/axes/FilterExprWalker;->executePredicates(ILorg/apache/xpath/XPathContext;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;-><init>(Lorg/apache/xpath/axes/FilterExprWalker;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/FilterExprWalker;

    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XNodeSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/objects/XNodeSet;

    iput-object v1, v0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    :cond_0
    return-object v0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/axes/FilterExprWalker;

    iget-object v2, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    iget-object v3, v0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    invoke-super {p0}, Lorg/apache/xpath/axes/AxesWalker;->detach()V

    iget-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_canDetachNodeset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->detach()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->fixupVariables(Ljava/util/Vector;I)V

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getAnalysisBits()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    instance-of v0, v0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

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

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getAxis()I

    move-result v0

    return v0
.end method

.method public getInnerExpression()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getLength()I

    move-result v0

    return v0
.end method

.method public getNextNode()I
    .locals 2

    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public init(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    packed-switch p3, :pswitch_data_0

    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_mustHardReset:Z

    :pswitch_1
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    instance-of v0, v0, Lorg/apache/xpath/operations/Variable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_canDetachNodeset:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isDocOrdered()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->isDocOrdered()Z

    move-result v0

    return v0
.end method

.method public setInnerExpression(Lorg/apache/xpath/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public setRoot(I)V
    .locals 6

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getIsTopLevel()Z

    move-result v3

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    iget v4, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    iget-object v5, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    return-void
.end method
