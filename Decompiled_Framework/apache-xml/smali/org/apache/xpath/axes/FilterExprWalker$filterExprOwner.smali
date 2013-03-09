.class Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;
.super Ljava/lang/Object;
.source "FilterExprWalker.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/FilterExprWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "filterExprOwner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xpath/axes/FilterExprWalker;


# direct methods
.method constructor <init>(Lorg/apache/xpath/axes/FilterExprWalker;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprWalker;

    #getter for: Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;
    invoke-static {v0}, Lorg/apache/xpath/axes/FilterExprWalker;->access$000(Lorg/apache/xpath/axes/FilterExprWalker;)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprWalker;

    #setter for: Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;
    invoke-static {v0, p1}, Lorg/apache/xpath/axes/FilterExprWalker;->access$002(Lorg/apache/xpath/axes/FilterExprWalker;Lorg/apache/xpath/Expression;)Lorg/apache/xpath/Expression;

    return-void
.end method
