.class public Lkawa/standard/module_implements;
.super Lkawa/lang/Syntax;
.source "module_implements.java"


# static fields
.field public static final module_implements:Lkawa/standard/module_implements;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/module_implements;

    invoke-direct {v0}, Lkawa/standard/module_implements;-><init>()V

    sput-object v0, Lkawa/standard/module_implements;->module_implements:Lkawa/standard/module_implements;

    .line 11
    sget-object v0, Lkawa/standard/module_implements;->module_implements:Lkawa/standard/module_implements;

    const-string v1, "module-implements"

    invoke-virtual {v0, v1}, Lkawa/standard/module_implements;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 9
    .parameter "form"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 15
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 16
    .local v1, args:Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v4

    .line 17
    .local v4, len:I
    if-gez v4, :cond_0

    .line 19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "improper argument list for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lkawa/standard/module_implements;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 32
    .end local p0
    :goto_0
    return-void

    .line 22
    .restart local p0
    :cond_0
    new-array v3, v4, [Lgnu/bytecode/ClassType;

    .line 23
    .local v3, interfaces:[Lgnu/bytecode/ClassType;
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 25
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v6, v0

    .line 26
    .local v6, pair:Lgnu/lists/Pair;
    invoke-virtual {p3, v6}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object p0

    check-cast p0, Lgnu/bytecode/ClassType;

    aput-object p0, v3, v2

    .line 27
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    .end local v6           #pair:Lgnu/lists/Pair;
    :cond_1
    invoke-virtual {p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v5

    .line 30
    .local v5, module:Lgnu/expr/ModuleExp;
    invoke-virtual {v5, v3}, Lgnu/expr/ModuleExp;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 31
    const/high16 v7, 0x2

    invoke-virtual {v5, v7}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto :goto_0
.end method
