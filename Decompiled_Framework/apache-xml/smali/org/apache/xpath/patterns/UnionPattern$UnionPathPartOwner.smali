.class Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;
.super Ljava/lang/Object;
.source "UnionPattern.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/patterns/UnionPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnionPathPartOwner"
.end annotation


# instance fields
.field m_index:I

.field final synthetic this$0:Lorg/apache/xpath/patterns/UnionPattern;


# direct methods
.method constructor <init>(Lorg/apache/xpath/patterns/UnionPattern;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lorg/apache/xpath/patterns/UnionPattern;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->m_index:I

    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lorg/apache/xpath/patterns/UnionPattern;

    #getter for: Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;
    invoke-static {v0}, Lorg/apache/xpath/patterns/UnionPattern;->access$000(Lorg/apache/xpath/patterns/UnionPattern;)[Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->m_index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lorg/apache/xpath/patterns/UnionPattern;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lorg/apache/xpath/patterns/UnionPattern;

    #getter for: Lorg/apache/xpath/patterns/UnionPattern;->m_patterns:[Lorg/apache/xpath/patterns/StepPattern;
    invoke-static {v0}, Lorg/apache/xpath/patterns/UnionPattern;->access$000(Lorg/apache/xpath/patterns/UnionPattern;)[Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->m_index:I

    check-cast p1, Lorg/apache/xpath/patterns/StepPattern;

    aput-object p1, v0, v1

    return-void
.end method
