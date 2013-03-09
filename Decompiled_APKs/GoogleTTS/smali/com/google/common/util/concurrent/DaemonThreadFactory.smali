.class public Lcom/google/common/util/concurrent/DaemonThreadFactory;
.super Ljava/lang/Object;
.source "DaemonThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final factory:Ljava/util/concurrent/ThreadFactory;


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .parameter "r"

    .prologue
    .line 40
    iget-object v1, p0, Lcom/google/common/util/concurrent/DaemonThreadFactory;->factory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 41
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 42
    return-object v0
.end method
