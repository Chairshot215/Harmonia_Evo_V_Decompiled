.class public Lgnu/commonlisp/lang/UnwindProtect;
.super Lkawa/lang/Syntax;
.source "UnwindProtect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 11
    instance-of v2, p1, Lgnu/lists/Pair;

    if-nez v2, :cond_0

    .line 12
    const-string v2, "invalid syntax for unwind-protect"

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 14
    :goto_0
    return-object v2

    .line 13
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .line 14
    .local v1, pair:Lgnu/lists/Pair;
    new-instance v2, Lgnu/expr/TryExp;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgnu/expr/TryExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    goto :goto_0
.end method
