.class Lorg/apache/xpath/functions/Function3Args$Arg2Owner;
.super Ljava/lang/Object;
.source "Function3Args.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/functions/Function3Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Arg2Owner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xpath/functions/Function3Args;


# direct methods
.method constructor <init>(Lorg/apache/xpath/functions/Function3Args;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/functions/Function3Args$Arg2Owner;->this$0:Lorg/apache/xpath/functions/Function3Args;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args$Arg2Owner;->this$0:Lorg/apache/xpath/functions/Function3Args;

    iget-object v0, v0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args$Arg2Owner;->this$0:Lorg/apache/xpath/functions/Function3Args;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args$Arg2Owner;->this$0:Lorg/apache/xpath/functions/Function3Args;

    iput-object p1, v0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    return-void
.end method
