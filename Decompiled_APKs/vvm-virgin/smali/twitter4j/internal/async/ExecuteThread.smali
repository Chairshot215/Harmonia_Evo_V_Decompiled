.class Ltwitter4j/internal/async/ExecuteThread;
.super Ljava/lang/Thread;
.source "DispatcherImpl.java"


# static fields
.field static class$twitter4j$internal$async$ExecuteThread:Ljava/lang/Class;

.field private static logger:Ltwitter4j/internal/logging/Logger;


# instance fields
.field private alive:Z

.field q:Ltwitter4j/internal/async/DispatcherImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Ltwitter4j/internal/async/ExecuteThread;->class$twitter4j$internal$async$ExecuteThread:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.internal.async.ExecuteThread"

    invoke-static {v0}, Ltwitter4j/internal/async/ExecuteThread;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/internal/async/ExecuteThread;->class$twitter4j$internal$async$ExecuteThread:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/internal/async/ExecuteThread;->logger:Ltwitter4j/internal/logging/Logger;

    return-void

    :cond_0
    sget-object v0, Ltwitter4j/internal/async/ExecuteThread;->class$twitter4j$internal$async$ExecuteThread:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ltwitter4j/internal/async/DispatcherImpl;I)V
    .locals 2
    .parameter "name"
    .parameter "q"
    .parameter "index"

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/internal/async/ExecuteThread;->alive:Z

    .line 100
    iput-object p2, p0, Ltwitter4j/internal/async/ExecuteThread;->q:Ltwitter4j/internal/async/DispatcherImpl;

    .line 101
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 110
    :cond_0
    :goto_0
    iget-boolean v2, p0, Ltwitter4j/internal/async/ExecuteThread;->alive:Z

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Ltwitter4j/internal/async/ExecuteThread;->q:Ltwitter4j/internal/async/DispatcherImpl;

    invoke-virtual {v2}, Ltwitter4j/internal/async/DispatcherImpl;->poll()Ljava/lang/Runnable;

    move-result-object v1

    .line 112
    .local v1, task:Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, ex:Ljava/lang/Exception;
    sget-object v2, Ltwitter4j/internal/async/ExecuteThread;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v3, "Got an exception while running a taks:"

    invoke-virtual {v2, v3, v0}, Ltwitter4j/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #task:Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/internal/async/ExecuteThread;->alive:Z

    .line 105
    return-void
.end method
