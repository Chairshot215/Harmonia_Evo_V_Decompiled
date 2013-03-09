.class public Lgnu/expr/PushApply;
.super Lgnu/expr/ExpVisitor;
.source "PushApply.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpVisitor",
        "<",
        "Lgnu/expr/Expression;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/expr/ExpVisitor;-><init>()V

    return-void
.end method

.method public static pushApply(Lgnu/expr/Expression;)V
    .locals 2
    .parameter "exp"

    .prologue
    .line 14
    new-instance v0, Lgnu/expr/PushApply;

    invoke-direct {v0}, Lgnu/expr/PushApply;-><init>()V

    .line 15
    .local v0, visitor:Lgnu/expr/PushApply;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lgnu/expr/PushApply;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method protected defaultValue(Lgnu/expr/Expression;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 0
    .parameter "r"
    .parameter "ignored"

    .prologue
    .line 25
    return-object p1
.end method

.method protected bridge synthetic defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/PushApply;->defaultValue(Lgnu/expr/Expression;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected update(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 0
    .parameter "exp"
    .parameter "r"

    .prologue
    .line 20
    return-object p2
.end method

.method protected bridge synthetic update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    check-cast p2, Lgnu/expr/Expression;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/PushApply;->update(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 9
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 30
    iget-object v3, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 31
    .local v3, func:Lgnu/expr/Expression;
    instance-of v7, v3, Lgnu/expr/LetExp;

    if-eqz v7, :cond_0

    instance-of v7, v3, Lgnu/expr/FluidLetExp;

    if-nez v7, :cond_0

    .line 35
    move-object v0, v3

    check-cast v0, Lgnu/expr/LetExp;

    move-object v5, v0

    .line 36
    .local v5, let:Lgnu/expr/LetExp;
    iget-object v2, v5, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 37
    .local v2, body:Lgnu/expr/Expression;
    iput-object p1, v5, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 38
    iput-object v2, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 39
    invoke-virtual {p0, v5, p2}, Lgnu/expr/PushApply;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Expression;

    move-object v7, p0

    .line 52
    .end local v2           #body:Lgnu/expr/Expression;
    .end local v5           #let:Lgnu/expr/LetExp;
    :goto_0
    return-object v7

    .line 41
    .restart local p0
    :cond_0
    instance-of v7, v3, Lgnu/expr/BeginExp;

    if-eqz v7, :cond_1

    .line 44
    move-object v0, v3

    check-cast v0, Lgnu/expr/BeginExp;

    move-object v1, v0

    .line 45
    .local v1, begin:Lgnu/expr/BeginExp;
    iget-object v6, v1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 46
    .local v6, stmts:[Lgnu/expr/Expression;
    iget-object v7, v1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int v4, v7, v8

    .line 47
    .local v4, last_index:I
    aget-object v7, v6, v4

    iput-object v7, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 48
    aput-object p1, v6, v4

    .line 49
    invoke-virtual {p0, v1, p2}, Lgnu/expr/PushApply;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Expression;

    move-object v7, p0

    goto :goto_0

    .line 51
    .end local v1           #begin:Lgnu/expr/BeginExp;
    .end local v4           #last_index:I
    .end local v6           #stmts:[Lgnu/expr/Expression;
    .restart local p0
    :cond_1
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ApplyExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    move-object v7, p1

    .line 52
    goto :goto_0
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/PushApply;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
