.class public Lkawa/standard/try_catch;
.super Ljava/lang/Object;
.source "try_catch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rewrite(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 13
    .parameter "try_part"
    .parameter "clauses"

    .prologue
    .line 14
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v8

    check-cast v8, Lkawa/lang/Translator;

    .line 15
    .local v8, tr:Lkawa/lang/Translator;
    invoke-virtual {v8, p0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v9

    .line 16
    .local v9, try_part_exp:Lgnu/expr/Expression;
    const/4 v6, 0x0

    .line 17
    .local v6, prev:Lgnu/expr/CatchClause;
    const/4 v2, 0x0

    .line 18
    .local v2, chain:Lgnu/expr/CatchClause;
    move-object v0, p1

    check-cast v0, Lgnu/lists/FVector;

    move-object v10, v0

    .line 19
    .local v10, vec:Lgnu/lists/FVector;
    invoke-virtual {v10}, Lgnu/lists/FVector;->size()I

    move-result v5

    .line 20
    .local v5, n:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 22
    sget-object v11, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    invoke-virtual {v10, v4}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Lkawa/lang/Lambda;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v3

    .line 23
    .local v3, cl:Lgnu/expr/Expression;
    instance-of v11, v3, Lgnu/expr/ErrorExp;

    if-eqz v11, :cond_0

    move-object v11, v3

    .line 39
    .end local v3           #cl:Lgnu/expr/Expression;
    :goto_1
    return-object v11

    .line 26
    .restart local v3       #cl:Lgnu/expr/Expression;
    :cond_0
    instance-of v11, v3, Lgnu/expr/LambdaExp;

    if-nez v11, :cond_1

    .line 27
    const-string v11, "internal error with try-catch"

    invoke-virtual {v8, v11}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    goto :goto_1

    .line 28
    :cond_1
    new-instance v1, Lgnu/expr/CatchClause;

    check-cast v3, Lgnu/expr/LambdaExp;

    .end local v3           #cl:Lgnu/expr/Expression;
    invoke-direct {v1, v3}, Lgnu/expr/CatchClause;-><init>(Lgnu/expr/LambdaExp;)V

    .line 29
    .local v1, ccl:Lgnu/expr/CatchClause;
    if-nez v6, :cond_2

    .line 30
    move-object v2, v1

    .line 33
    :goto_2
    move-object v6, v1

    .line 20
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v6, v1}, Lgnu/expr/CatchClause;->setNext(Lgnu/expr/CatchClause;)V

    goto :goto_2

    .line 35
    .end local v1           #ccl:Lgnu/expr/CatchClause;
    :cond_3
    instance-of v11, v9, Lgnu/expr/ErrorExp;

    if-eqz v11, :cond_4

    move-object v11, v9

    .line 36
    goto :goto_1

    .line 37
    :cond_4
    new-instance v7, Lgnu/expr/TryExp;

    const/4 v11, 0x0

    invoke-direct {v7, v9, v11}, Lgnu/expr/TryExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    .line 38
    .local v7, texp:Lgnu/expr/TryExp;
    invoke-virtual {v7, v2}, Lgnu/expr/TryExp;->setCatchClauses(Lgnu/expr/CatchClause;)V

    move-object v11, v7

    .line 39
    goto :goto_1
.end method
