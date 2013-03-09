.class Lorg/apache/xpath/patterns/StepPattern$PredOwner;
.super Ljava/lang/Object;
.source "StepPattern.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/patterns/StepPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PredOwner"
.end annotation


# instance fields
.field m_index:I

.field final synthetic this$0:Lorg/apache/xpath/patterns/StepPattern;


# direct methods
.method constructor <init>(Lorg/apache/xpath/patterns/StepPattern;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->this$0:Lorg/apache/xpath/patterns/StepPattern;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->m_index:I

    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->this$0:Lorg/apache/xpath/patterns/StepPattern;

    iget-object v0, v0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    iget v1, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->m_index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->this$0:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->this$0:Lorg/apache/xpath/patterns/StepPattern;

    iget-object v0, v0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    iget v1, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->m_index:I

    aput-object p1, v0, v1

    return-void
.end method
