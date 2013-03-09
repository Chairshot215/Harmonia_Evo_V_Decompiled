.class Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;
.super Ljava/lang/Object;
.source "UnionPathIterator.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/UnionPathIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "iterOwner"
.end annotation


# instance fields
.field m_index:I

.field final synthetic this$0:Lorg/apache/xpath/axes/UnionPathIterator;


# direct methods
.method constructor <init>(Lorg/apache/xpath/axes/UnionPathIterator;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->m_index:I

    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    iget-object v0, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    iget v1, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->m_index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 4

    instance-of v2, p1, Lorg/apache/xpath/axes/LocPathIterator;

    if-nez v2, :cond_0

    new-instance v1, Lorg/apache/xpath/axes/WalkingIterator;

    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-virtual {v2}, Lorg/apache/xpath/axes/UnionPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    new-instance v0, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct {v0, v1}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    invoke-virtual {v1, v0}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/FilterExprWalker;->setInnerExpression(Lorg/apache/xpath/Expression;)V

    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-virtual {v1, v2}, Lorg/apache/xpath/axes/WalkingIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/FilterExprWalker;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    move-object p1, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    iget-object v2, v2, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    iget v3, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->m_index:I

    check-cast p1, Lorg/apache/xpath/axes/LocPathIterator;

    aput-object p1, v2, v3

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-virtual {p1, v2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    goto :goto_0
.end method
