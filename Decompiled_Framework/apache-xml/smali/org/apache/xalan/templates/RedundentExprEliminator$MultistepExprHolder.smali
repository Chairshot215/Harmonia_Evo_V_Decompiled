.class Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
.super Ljava/lang/Object;
.source "RedundentExprEliminator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/RedundentExprEliminator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultistepExprHolder"
.end annotation


# instance fields
.field m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

.field m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

.field final m_stepCount:I

.field final synthetic this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;


# direct methods
.method constructor <init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "exprOwner can not be null!"

    invoke-static {v0, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    iput p3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    iput-object p4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addInSortedOrder(Lorg/apache/xpath/ExpressionOwner;I)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .locals 8

    move-object v0, p0

    move-object v3, p0

    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget v5, v3, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    if-lt p2, v5, :cond_1

    new-instance v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    iget-object v5, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;

    invoke-direct {v2, v5, p1, p2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    if-nez v4, :cond_0

    move-object v0, v2

    :goto_1
    move-object v1, v0

    :goto_2
    return-object v1

    :cond_0
    iput-object v2, v4, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_1

    :cond_1
    move-object v4, v3

    iget-object v3, v3, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_0

    :cond_2
    new-instance v5, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    iget-object v6, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;

    const/4 v7, 0x0

    invoke-direct {v5, v6, p1, p2, v7}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    iput-object v5, v4, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v1, v0

    goto :goto_2
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected diagnose()V
    .locals 4

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found multistep iterators: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move-object v0, p0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method getLength()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_0

    :cond_0
    return v0
.end method

.method unlink(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p0

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_1

    if-nez v2, :cond_0

    iget-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    :goto_1
    iput-object v3, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v3, v0

    :goto_2
    return-object v3

    :cond_0
    iget-object v4, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    iput-object v4, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_1

    :cond_1
    move-object v2, v1

    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const-string v5, "unlink failed!!!"

    invoke-static {v4, v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    goto :goto_2
.end method
