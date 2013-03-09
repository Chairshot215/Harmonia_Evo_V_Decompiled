.class public Lgnu/expr/CompiledModule;
.super Ljava/lang/Object;
.source "CompiledModule.java"


# instance fields
.field cookie:Ljava/lang/Object;

.field language:Lgnu/expr/Language;

.field mexp:Lgnu/expr/ModuleExp;


# direct methods
.method public constructor <init>(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/expr/Language;)V
    .locals 0
    .parameter "mexp"
    .parameter "cookie"
    .parameter "language"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgnu/expr/CompiledModule;->mexp:Lgnu/expr/ModuleExp;

    .line 23
    iput-object p2, p0, Lgnu/expr/CompiledModule;->cookie:Ljava/lang/Object;

    .line 24
    iput-object p3, p0, Lgnu/expr/CompiledModule;->language:Lgnu/expr/Language;

    .line 25
    return-void
.end method

.method public static make(Ljava/lang/Class;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;
    .locals 2
    .parameter "clas"
    .parameter "language"

    .prologue
    .line 29
    new-instance v0, Lgnu/expr/CompiledModule;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lgnu/expr/CompiledModule;-><init>(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/expr/Language;)V

    return-object v0
.end method


# virtual methods
.method public evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V
    .locals 5
    .parameter "env"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v2, p0, Lgnu/expr/CompiledModule;->language:Lgnu/expr/Language;

    invoke-static {v2}, Lgnu/expr/Language;->setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;

    move-result-object v1

    .line 38
    .local v1, saveLang:Lgnu/expr/Language;
    invoke-static {p1}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v0

    .line 41
    .local v0, saveEnv:Lgnu/mapping/Environment;
    :try_start_0
    iget-object v2, p0, Lgnu/expr/CompiledModule;->language:Lgnu/expr/Language;

    iget-object v3, p0, Lgnu/expr/CompiledModule;->mexp:Lgnu/expr/ModuleExp;

    iget-object v4, p0, Lgnu/expr/CompiledModule;->cookie:Ljava/lang/Object;

    invoke-static {p1, p2, v2, v3, v4}, Lgnu/expr/ModuleExp;->evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {v1}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 46
    invoke-static {v0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 48
    return-void

    .line 45
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 46
    invoke-static {v0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    throw v2
.end method

.method public evalModule(Lgnu/mapping/Environment;Lgnu/mapping/OutPort;)V
    .locals 6
    .parameter "env"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 54
    .local v0, ctx:Lgnu/mapping/CallContext;
    iget-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 55
    .local v2, saveConsumer:Lgnu/lists/Consumer;
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v1

    .line 56
    .local v1, print:Z
    iget-object v3, p2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 57
    .local v3, saveFormat:Lgnu/lists/AbstractFormat;
    if-eqz v1, :cond_1

    invoke-static {p2}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v4

    :goto_0
    iput-object v4, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 60
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v4, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    instance-of v4, v4, Ljava/io/Writer;

    if-eqz v4, :cond_0

    .line 65
    iget-object p0, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 67
    :cond_0
    iput-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    iput-object v3, p2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 70
    return-void

    .line 57
    .restart local p0
    :cond_1
    new-instance v4, Lgnu/lists/VoidConsumer;

    invoke-direct {v4}, Lgnu/lists/VoidConsumer;-><init>()V

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v4

    iget-object v5, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    instance-of v5, v5, Ljava/io/Writer;

    if-eqz v5, :cond_2

    .line 65
    iget-object p0, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 67
    :cond_2
    iput-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    iput-object v3, p2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    throw v4
.end method

.method public evalToResultValue(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 3
    .parameter "env"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p2}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 80
    .local v1, oldIndex:I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V

    .line 81
    invoke-virtual {p2, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 83
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 85
    .local v0, ex:Ljava/lang/Throwable;
    invoke-virtual {p2, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 86
    throw v0
.end method
