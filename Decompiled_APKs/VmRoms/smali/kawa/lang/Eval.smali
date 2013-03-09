.class public Lkawa/lang/Eval;
.super Lgnu/mapping/Procedure1or2;
.source "Eval.java"


# static fields
.field public static final eval:Lkawa/lang/Eval; = null

.field static final evalFunctionName:Ljava/lang/String; = "atEvalLevel$"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lkawa/lang/Eval;

    invoke-direct {v0}, Lkawa/lang/Eval;-><init>()V

    sput-object v0, Lkawa/lang/Eval;->eval:Lkawa/lang/Eval;

    .line 15
    sget-object v0, Lkawa/lang/Eval;->eval:Lkawa/lang/Eval;

    const-string v1, "eval"

    invoke-virtual {v0, v1}, Lkawa/lang/Eval;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure1or2;-><init>()V

    return-void
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 4
    .parameter "sexpr"
    .parameter "env"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 56
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v2

    .line 59
    .local v2, oldIndex:I
    :try_start_0
    invoke-static {p0, p1, v0}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V

    .line 60
    invoke-virtual {v0, v2}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 62
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 64
    .local v1, ex:Ljava/lang/Throwable;
    invoke-virtual {v0, v2}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 65
    throw v1
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V
    .locals 4
    .parameter "sexpr"
    .parameter "env"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 23
    instance-of v2, p0, Lgnu/lists/PairWithPosition;

    if-eqz v2, :cond_0

    .line 24
    new-instance v1, Lgnu/lists/PairWithPosition;

    move-object v0, p0

    check-cast v0, Lgnu/lists/PairWithPosition;

    move-object v2, v0

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v1, v2, p0, v3}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .local v1, body:Lgnu/lists/PairWithPosition;
    :goto_0
    new-instance v2, Lgnu/text/SourceMessages;

    invoke-direct {v2}, Lgnu/text/SourceMessages;-><init>()V

    invoke-static {v1, p1, v2, p2}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;Lgnu/mapping/CallContext;)V

    .line 32
    return-void

    .line 28
    .end local v1           #body:Lgnu/lists/PairWithPosition;
    :cond_0
    new-instance v1, Lgnu/lists/PairWithPosition;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v1, p0, v2}, Lgnu/lists/PairWithPosition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .restart local v1       #body:Lgnu/lists/PairWithPosition;
    const-string v2, "<eval>"

    invoke-virtual {v1, v2}, Lgnu/lists/PairWithPosition;->setFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;)Ljava/lang/Object;
    .locals 4
    .parameter "body"
    .parameter "env"
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 39
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v2

    .line 42
    .local v2, oldIndex:I
    :try_start_0
    invoke-static {p0, p1, p2, v0}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;Lgnu/mapping/CallContext;)V

    .line 43
    invoke-virtual {v0, v2}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 45
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 47
    .local v1, ex:Ljava/lang/Throwable;
    invoke-virtual {v0, v2}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 48
    throw v1
.end method

.method public static evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;Lgnu/mapping/CallContext;)V
    .locals 9
    .parameter "body"
    .parameter "env"
    .parameter "messages"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    .line 74
    .local v1, language:Lgnu/expr/Language;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    .line 77
    .local v4, saveGlobalEnv:Lgnu/mapping/Environment;
    if-eq p1, v4, :cond_0

    .line 78
    :try_start_0
    invoke-static {p1}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 79
    :cond_0
    new-instance v5, Lkawa/lang/Translator;

    invoke-static {p1, v1}, Lgnu/expr/NameLookup;->getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;

    move-result-object v6

    invoke-direct {v5, v1, p2, v6}, Lkawa/lang/Translator;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    .line 81
    .local v5, tr:Lkawa/lang/Translator;
    const/4 v6, 0x1

    iput-boolean v6, v5, Lkawa/lang/Translator;->immediate:Z

    .line 84
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->setState(I)V

    .line 85
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->setSharedModuleDefs(Z)V

    .line 86
    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    move-result-object v2

    .line 87
    .local v2, mod:Lgnu/expr/ModuleExp;
    invoke-static {v5}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 90
    .local v3, saveComp:Lgnu/expr/Compilation;
    :try_start_1
    iget-object v6, v5, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v0

    .line 91
    .local v0, first:I
    const/4 v6, 0x0

    invoke-virtual {v5, p0, v2, v6}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    .line 92
    iput v0, v5, Lkawa/lang/Translator;->firstForm:I

    .line 93
    invoke-virtual {v5, v2}, Lkawa/lang/Translator;->finishModule(Lgnu/expr/ModuleExp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    :try_start_2
    invoke-static {v3}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 100
    instance-of v6, p0, Lgnu/lists/PairWithPosition;

    if-eqz v6, :cond_1

    .line 101
    check-cast p0, Lgnu/lists/PairWithPosition;

    .end local p0
    invoke-virtual {p0}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lgnu/expr/ModuleExp;->setFile(Ljava/lang/String;)V

    .line 102
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "atEvalLevel$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lgnu/expr/ModuleExp;->interactiveCounter:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lgnu/expr/ModuleExp;->interactiveCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 103
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p1, p3, v5, v6, v7}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    .line 104
    invoke-virtual {p2}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid syntax in eval form:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x14

    invoke-virtual {p2, v8}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v0           #first:I
    .end local v2           #mod:Lgnu/expr/ModuleExp;
    .end local v3           #saveComp:Lgnu/expr/Compilation;
    .end local v5           #tr:Lkawa/lang/Translator;
    :catchall_0
    move-exception v6

    if-eq p1, v4, :cond_2

    .line 111
    invoke-static {v4}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_2
    throw v6

    .line 97
    .restart local v2       #mod:Lgnu/expr/ModuleExp;
    .restart local v3       #saveComp:Lgnu/expr/Compilation;
    .restart local v5       #tr:Lkawa/lang/Translator;
    .restart local p0
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-static {v3}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .end local p0
    .restart local v0       #first:I
    :cond_3
    if-eq p1, v4, :cond_4

    .line 111
    invoke-static {v4}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 113
    :cond_4
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 3
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    iget v2, p1, Lgnu/mapping/CallContext;->count:I

    invoke-static {p0, v2}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 131
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 133
    .local v1, exp:Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Environment;

    .line 134
    .local v0, env:Lgnu/mapping/Environment;
    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 137
    invoke-static {v1, v0, p1}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V

    .line 138
    return-void
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p1, v0}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 124
    check-cast p2, Lgnu/mapping/Environment;

    .end local p2
    invoke-static {p1, p2}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
