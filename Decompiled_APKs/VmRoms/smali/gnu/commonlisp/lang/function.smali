.class public Lgnu/commonlisp/lang/function;
.super Lkawa/lang/Syntax;
.source "function.java"


# instance fields
.field lambda:Lkawa/lang/Syntax;


# direct methods
.method public constructor <init>(Lkawa/lang/Syntax;)V
    .locals 0
    .parameter "lambda"

    .prologue
    .line 12
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 13
    iput-object p1, p0, Lgnu/commonlisp/lang/function;->lambda:Lkawa/lang/Syntax;

    .line 14
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 7
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 18
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, obj:Ljava/lang/Object;
    instance-of v5, v2, Lgnu/lists/Pair;

    if-eqz v5, :cond_5

    .line 21
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    .line 22
    .local v3, pair:Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v6, :cond_0

    .line 23
    const-string v5, "too many forms after \'function\'"

    invoke-virtual {p2, v5}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    .line 42
    .end local v3           #pair:Lgnu/lists/Pair;
    :goto_0
    return-object v5

    .line 24
    .restart local v3       #pair:Lgnu/lists/Pair;
    :cond_0
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 25
    .local v1, name:Ljava/lang/Object;
    instance-of v5, v1, Ljava/lang/String;

    if-nez v5, :cond_1

    instance-of v5, v1, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_2

    .line 27
    :cond_1
    new-instance v4, Lgnu/expr/ReferenceExp;

    invoke-direct {v4, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 28
    .local v4, rexp:Lgnu/expr/ReferenceExp;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 29
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    move-object v5, v4

    .line 30
    goto :goto_0

    .line 32
    .end local v4           #rexp:Lgnu/expr/ReferenceExp;
    :cond_2
    instance-of v5, v1, Lgnu/lists/Pair;

    if-eqz v5, :cond_5

    .line 34
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    .line 35
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 36
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v5, "lambda"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 39
    .end local v1           #name:Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lgnu/commonlisp/lang/function;->lambda:Lkawa/lang/Syntax;

    invoke-virtual {v5, v3, p2}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v5

    goto :goto_0

    .line 36
    .restart local v1       #name:Ljava/lang/Object;
    :cond_4
    instance-of v5, v1, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_5

    const-string v5, "lambda"

    check-cast v1, Lgnu/mapping/Symbol;

    .end local v1           #name:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 42
    .end local v3           #pair:Lgnu/lists/Pair;
    :cond_5
    const-string v5, "function must be followed by name or lambda expression"

    invoke-virtual {p2, v5}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto :goto_0
.end method
