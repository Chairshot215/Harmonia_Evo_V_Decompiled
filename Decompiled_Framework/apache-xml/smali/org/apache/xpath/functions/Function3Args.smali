.class public Lorg/apache/xpath/functions/Function3Args;
.super Lorg/apache/xpath/functions/Function2Args;
.source "Function3Args.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/functions/Function3Args$Arg2Owner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x6dd89585d6425356L


# instance fields
.field m_arg2:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function2Args;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/functions/Function3Args$Arg2Owner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/functions/Function3Args$Arg2Owner;-><init>(Lorg/apache/xpath/functions/Function3Args;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/xpath/functions/Function2Args;->canTraverseOutsideSubtree()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v0

    goto :goto_0
.end method

.method public checkNumberArgs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function3Args;->reportWrongNumberArgs()V

    :cond_0
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function2Args;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/functions/Function3Args;

    iget-object v0, v0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    check-cast p1, Lorg/apache/xpath/functions/Function3Args;

    iget-object v2, p1, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, v2}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/apache/xpath/functions/Function3Args;

    iget-object v0, p1, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function2Args;->fixupVariables(Ljava/util/Vector;I)V

    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    return-void
.end method

.method public getArg2()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method protected reportWrongNumberArgs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "three"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArg(Lorg/apache/xpath/Expression;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function2Args;->setArg(Lorg/apache/xpath/Expression;I)V

    :goto_0
    return-void

    :cond_0
    if-ne v0, p2, :cond_1

    iput-object p1, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function3Args;->reportWrongNumberArgs()V

    goto :goto_0
.end method
