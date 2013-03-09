.class Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;
.super Ljava/lang/Object;
.source "FunctionPattern.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/patterns/FunctionPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FunctionOwner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xpath/patterns/FunctionPattern;


# direct methods
.method constructor <init>(Lorg/apache/xpath/patterns/FunctionPattern;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;->this$0:Lorg/apache/xpath/patterns/FunctionPattern;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;->this$0:Lorg/apache/xpath/patterns/FunctionPattern;

    iget-object v0, v0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;->this$0:Lorg/apache/xpath/patterns/FunctionPattern;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;->this$0:Lorg/apache/xpath/patterns/FunctionPattern;

    iput-object p1, v0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    return-void
.end method
