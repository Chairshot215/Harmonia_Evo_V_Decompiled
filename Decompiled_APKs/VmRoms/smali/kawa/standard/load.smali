.class public Lkawa/standard/load;
.super Lgnu/mapping/Procedure1;
.source "load.java"


# static fields
.field public static final load:Lkawa/standard/load;

.field public static final loadRelative:Lkawa/standard/load;


# instance fields
.field relative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lkawa/standard/load;

    const-string v1, "load"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/load;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/load;->load:Lkawa/standard/load;

    .line 21
    new-instance v0, Lkawa/standard/load;

    const-string v1, "load-relative"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/standard/load;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/load;->loadRelative:Lkawa/standard/load;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "relative"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 17
    iput-boolean p2, p0, Lkawa/standard/load;->relative:Z

    .line 18
    return-void
.end method


# virtual methods
.method public final apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkawa/standard/load;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "name"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Environment;

    move-object v3, v0

    .line 35
    .local v3, env:Lgnu/mapping/Environment;
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v5

    .line 36
    .local v5, path:Lgnu/text/Path;
    iget-boolean v6, p0, Lkawa/standard/load;->relative:Z

    if-eqz v6, :cond_0

    .line 38
    sget-object v6, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/text/Path;

    .line 39
    .local v1, curPath:Lgnu/text/Path;
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1, v5}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v5

    .line 42
    .end local v1           #curPath:Lgnu/text/Path;
    :cond_0
    invoke-virtual {v5}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v5, v3, v7, v8}, Lkawa/Shell;->runFile(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;ZI)Z

    .line 43
    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v6

    .line 45
    .end local v3           #env:Lgnu/mapping/Environment;
    .end local v5           #path:Lgnu/text/Path;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 47
    .local v2, e:Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot load "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 49
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 51
    .local v4, ex:Lgnu/text/SyntaxException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load: errors while compiling \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\':\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
