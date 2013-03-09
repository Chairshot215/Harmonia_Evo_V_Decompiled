.class public Lorg/apache/xpath/patterns/FunctionPattern;
.super Lorg/apache/xpath/patterns/StepPattern;
.source "FunctionPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x4b4fd7db58bb32d8L


# instance fields
.field m_functionExpr:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/Expression;II)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    iput-object p1, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    return-void
.end method


# virtual methods
.method public final calcScore()V
    .locals 1

    sget-object v0, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/patterns/FunctionPattern;->calcTargetString()V

    :cond_0
    return-void
.end method

.method protected callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;-><init>(Lorg/apache/xpath/patterns/FunctionPattern;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V

    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    iget-object v4, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    invoke-virtual {v4, p1, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eqz v2, :cond_2

    :cond_0
    const/4 v4, -0x1

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    if-eq v4, v1, :cond_1

    if-ne v1, v0, :cond_3

    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    :goto_0
    sget-object v4, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    if-ne v3, v4, :cond_0

    move v0, v1

    :cond_1
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    :cond_2
    return-object v3

    :cond_3
    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v3, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v3, -0x1

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    if-eq v3, v0, :cond_1

    if-ne v0, p2, :cond_2

    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    :goto_0
    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    if-ne v2, v3, :cond_0

    move p2, v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    return-object v2

    :cond_2
    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v3, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eqz v1, :cond_2

    :cond_0
    const/4 v3, -0x1

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    if-eq v3, v0, :cond_1

    if-ne v0, p2, :cond_3

    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    :goto_0
    sget-object v3, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    if-ne v2, v3, :cond_0

    move p2, v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    :cond_2
    return-object v2

    :cond_3
    sget-object v2, Lorg/apache/xpath/patterns/FunctionPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method
