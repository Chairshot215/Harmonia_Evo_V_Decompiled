.class public Lorg/apache/xalan/templates/AbsPathChecker;
.super Lorg/apache/xpath/XPathVisitor;
.source "AbsPathChecker.java"


# instance fields
.field private m_isAbs:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    return-void
.end method


# virtual methods
.method public checkAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    iget-boolean v0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    return v0
.end method

.method public visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .locals 1

    instance-of v0, p2, Lorg/apache/xpath/functions/FuncCurrent;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/apache/xpath/functions/FuncExtFunction;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/AbsPathChecker;->m_isAbs:Z

    const/4 v0, 0x1

    return v0
.end method
