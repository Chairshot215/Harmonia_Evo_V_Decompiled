.class public abstract Lorg/apache/xpath/operations/UnaryOperation;
.super Lorg/apache/xpath/Expression;
.source "UnaryOperation.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final serialVersionUID:J = 0x5ab4d598174fd7d6L


# instance fields
.field protected m_right:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1

    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitUnaryOperation(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/UnaryOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/operations/UnaryOperation;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    check-cast p1, Lorg/apache/xpath/operations/UnaryOperation;

    iget-object v2, p1, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v1, v2}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/operations/UnaryOperation;->operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getOperand()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public abstract operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    iput-object p1, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public setRight(Lorg/apache/xpath/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-void
.end method
