.class public Lkawa/standard/constant_fold;
.super Lkawa/lang/Syntax;
.source "constant_fold.java"


# static fields
.field public static final constant_fold:Lkawa/standard/constant_fold;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/constant_fold;

    invoke-direct {v0}, Lkawa/standard/constant_fold;-><init>()V

    sput-object v0, Lkawa/standard/constant_fold;->constant_fold:Lkawa/standard/constant_fold;

    .line 11
    sget-object v0, Lkawa/standard/constant_fold;->constant_fold:Lkawa/standard/constant_fold;

    const-string v1, "constant-fold"

    invoke-virtual {v0, v1}, Lkawa/standard/constant_fold;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method static checkConstant(Lgnu/expr/Expression;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 6
    .parameter "exp"
    .parameter "tr"

    .prologue
    const/4 v5, 0x0

    .line 15
    instance-of v3, p0, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_0

    .line 16
    check-cast p0, Lgnu/expr/QuoteExp;

    .end local p0
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 26
    :goto_0
    return-object v3

    .line 17
    .restart local p0
    :cond_0
    instance-of v3, p0, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_3

    .line 19
    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v2, v0

    .line 20
    .local v2, rexp:Lgnu/expr/ReferenceExp;
    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    .line 21
    .local v1, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_1

    const-wide/32 v3, 0x10000

    invoke-virtual {v1, v3, v4}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    :cond_1
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v3

    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 24
    :cond_2
    invoke-static {v1}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v2           #rexp:Lgnu/expr/ReferenceExp;
    :cond_3
    move-object v3, v5

    .line 26
    goto :goto_0
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 11
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 31
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    .line 32
    .local v4, exp:Lgnu/expr/Expression;
    instance-of v9, v4, Lgnu/expr/ApplyExp;

    if-nez v9, :cond_0

    move-object v9, v4

    .line 61
    :goto_0
    return-object v9

    .line 34
    :cond_0
    move-object v0, v4

    check-cast v0, Lgnu/expr/ApplyExp;

    move-object v1, v0

    .line 35
    .local v1, aexp:Lgnu/expr/ApplyExp;
    invoke-virtual {v1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v9

    invoke-static {v9, p2}, Lkawa/standard/constant_fold;->checkConstant(Lgnu/expr/Expression;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v5

    .line 36
    .local v5, func:Ljava/lang/Object;
    instance-of v9, v5, Lgnu/mapping/Procedure;

    if-nez v9, :cond_1

    move-object v9, v4

    .line 37
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 44
    .local v2, args:[Lgnu/expr/Expression;
    array-length v6, v2

    .line 45
    .local v6, i:I
    new-array v8, v6, [Ljava/lang/Object;

    .line 46
    .local v8, vals:[Ljava/lang/Object;
    :goto_1
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_3

    .line 48
    aget-object v9, v2, v6

    invoke-static {v9, p2}, Lkawa/standard/constant_fold;->checkConstant(Lgnu/expr/Expression;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v7

    .line 49
    .local v7, val:Ljava/lang/Object;
    if-nez v7, :cond_2

    move-object v9, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    aput-object v7, v8, v6

    goto :goto_1

    .line 55
    .end local v7           #val:Ljava/lang/Object;
    :cond_3
    :try_start_0
    new-instance v9, Lgnu/expr/QuoteExp;

    check-cast v5, Lgnu/mapping/Procedure;

    .end local v5           #func:Ljava/lang/Object;
    invoke-virtual {v5, v8}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 59
    .local v3, ex:Ljava/lang/Throwable;
    const-string v9, "caught exception in constant-fold:"

    invoke-virtual {p2, v9}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    .line 60
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-object v9, v4

    .line 61
    goto :goto_0
.end method
