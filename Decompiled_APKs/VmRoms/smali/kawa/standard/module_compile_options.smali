.class public Lkawa/standard/module_compile_options;
.super Lkawa/lang/Syntax;
.source "module_compile_options.java"


# static fields
.field public static final module_compile_options:Lkawa/standard/module_compile_options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lkawa/standard/module_compile_options;

    invoke-direct {v0}, Lkawa/standard/module_compile_options;-><init>()V

    sput-object v0, Lkawa/standard/module_compile_options;->module_compile_options:Lkawa/standard/module_compile_options;

    .line 10
    sget-object v0, Lkawa/standard/module_compile_options;->module_compile_options:Lkawa/standard/module_compile_options;

    const-string v1, "module-compile-options"

    invoke-virtual {v0, v1}, Lkawa/standard/module_compile_options;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 4
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 15
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, p4}, Lkawa/standard/with_compile_options;->getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    .local v0, rest:Ljava/lang/Object;
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_0

    .line 17
    const/16 v1, 0x65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkawa/standard/module_compile_options;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key must be a keyword"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 18
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
