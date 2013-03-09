.class public Lorg/apache/xpath/functions/FunctionMultiArgs;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FunctionMultiArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x62c59436157a481dL


# instance fields
.field m_args:[Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function3Args;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v0

    new-instance v3, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;

    invoke-direct {v3, p0, v0}, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;-><init>(Lorg/apache/xpath/functions/FunctionMultiArgs;I)V

    invoke-virtual {v2, v3, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0}, Lorg/apache/xpath/functions/Function3Args;->canTraverseOutsideSubtree()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkNumberArgs(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function3Args;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/functions/FunctionMultiArgs;

    iget-object v4, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v2, v4

    if-eqz v0, :cond_0

    iget-object v4, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v4, v4

    if-ne v4, v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v4, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v1

    iget-object v5, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-nez v4, :cond_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function3Args;->fixupVariables(Ljava/util/Vector;I)V

    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getArgs()[Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method protected reportWrongNumberArgs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Programmer\'s assertion:  the method FunctionMultiArgs.reportWrongNumberArgs() should never be called."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setArg(Lorg/apache/xpath/Expression;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x3

    if-ge p2, v1, :cond_0

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function3Args;->setArg(Lorg/apache/xpath/Expression;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/xpath/Expression;

    iput-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aput-object p1, v1, v3

    :goto_1
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lorg/apache/xpath/Expression;

    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v1

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    goto :goto_1
.end method
