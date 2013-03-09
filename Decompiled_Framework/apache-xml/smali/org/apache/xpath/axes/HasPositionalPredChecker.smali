.class public Lorg/apache/xpath/axes/HasPositionalPredChecker;
.super Lorg/apache/xpath/XPathVisitor;
.source "HasPositionalPredChecker.java"


# instance fields
.field private m_hasPositionalPred:Z

.field private m_predDepth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    iput-boolean v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    iput v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    return-void
.end method

.method public static check(Lorg/apache/xpath/axes/LocPathIterator;)Z
    .locals 2

    new-instance v0, Lorg/apache/xpath/axes/HasPositionalPredChecker;

    invoke-direct {v0}, Lorg/apache/xpath/axes/HasPositionalPredChecker;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    iget-boolean v1, v0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    return v1
.end method


# virtual methods
.method public visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .locals 2

    const/4 v1, 0x1

    instance-of v0, p2, Lorg/apache/xpath/functions/FuncPosition;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/xpath/functions/FuncLast;

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    :cond_1
    return v1
.end method

.method public visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    iget v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    if-ne v0, v1, :cond_1

    instance-of v0, p2, Lorg/apache/xpath/operations/Variable;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/xpath/objects/XNumber;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/xpath/operations/Div;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/xpath/operations/Plus;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/xpath/operations/Minus;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/xpath/operations/Mod;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/xpath/operations/Quo;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/xpath/operations/Mult;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/xpath/operations/Number;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/xpath/functions/Function;

    if-eqz v0, :cond_2

    :cond_0
    iput-boolean v1, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_hasPositionalPred:Z

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/HasPositionalPredChecker;->m_predDepth:I

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    goto :goto_0
.end method
