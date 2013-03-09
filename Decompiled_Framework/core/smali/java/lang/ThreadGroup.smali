.class public Ljava/lang/ThreadGroup;
.super Ljava/lang/Object;
.source "ThreadGroup.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final mMain:Ljava/lang/ThreadGroup;

.field static final mSystem:Ljava/lang/ThreadGroup;


# instance fields
.field private final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation
.end field

.field private isDaemon:Z

.field private isDestroyed:Z

.field private maxPriority:I

.field private name:Ljava/lang/String;

.field final parent:Ljava/lang/ThreadGroup;

.field private final threadRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Thread;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threads:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0}, Ljava/lang/ThreadGroup;-><init>()V

    sput-object v0, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    new-instance v0, Ljava/lang/ThreadGroup;

    sget-object v1, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    const-string v2, "main"

    invoke-direct {v0, v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    sput-object v0, Ljava/lang/ThreadGroup;->mMain:Ljava/lang/ThreadGroup;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    const-string v0, "system"

    iput-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    invoke-static {v0, v2}, Llibcore/util/CollectionUtils;->dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    iput-object p1, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz p1, :cond_1

    invoke-direct {p1, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/ThreadGroup;)V

    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/ThreadGroup;->setDaemon(Z)V

    :cond_1
    return-void
.end method

.method private add(Ljava/lang/ThreadGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private destroyIfEmptyDaemon()V
    .locals 3

    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private enumerateGeneric([Ljava/lang/Object;ZIZ)I
    .locals 7

    if-eqz p4, :cond_2

    iget-object v6, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-int/lit8 v2, v5, -0x1

    move v0, p3

    :goto_0
    if-ltz v2, :cond_1

    :try_start_1
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_8

    array-length v5, p1

    if-lt v0, v5, :cond_0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move p3, v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 p3, v0, 0x1

    :try_start_2
    aput-object v4, p1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v2, v2, -0x1

    move v0, p3

    goto :goto_0

    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move p3, v0

    :goto_3
    if-eqz p2, :cond_7

    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v6

    :try_start_4
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    array-length v5, p1

    if-lt p3, v5, :cond_5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v0, p3

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_5
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    :cond_2
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v6

    :try_start_6
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v5

    add-int/lit8 v2, v5, -0x1

    move v0, p3

    :goto_6
    if-ltz v2, :cond_4

    :try_start_7
    array-length v5, p1

    if-lt v0, v5, :cond_3

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move p3, v0

    goto :goto_1

    :cond_3
    add-int/lit8 p3, v0, 0x1

    :try_start_8
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    add-int/lit8 v2, v2, -0x1

    move v0, p3

    goto :goto_6

    :cond_4
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move p3, v0

    goto :goto_3

    :catchall_1
    move-exception v5

    :goto_7
    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v5

    :cond_5
    :try_start_b
    invoke-direct {v1, p1, p2, p3, p4}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result p3

    goto :goto_4

    :cond_6
    monitor-exit v6

    :cond_7
    move v0, p3

    goto :goto_1

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v5

    :catchall_3
    move-exception v5

    move p3, v0

    goto :goto_7

    :catchall_4
    move-exception v5

    move p3, v0

    goto :goto_5

    :cond_8
    move p3, v0

    goto :goto_2
.end method

.method private indent(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private list(I)V
    .locals 5

    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->indent(I)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    iget-object v4, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->indent(I)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    :try_start_2
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0, p1}, Ljava/lang/ThreadGroup;->list(I)V

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method private remove(Ljava/lang/ThreadGroup;)V
    .locals 4

    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Ljava/lang/ThreadGroup;->destroyIfEmptyDaemon()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private stopHelper()Z
    .locals 7

    const/4 v3, 0x0

    iget-object v6, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    if-ne v4, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Thread;->stop()V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v6

    :try_start_2
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    invoke-direct {v1}, Ljava/lang/ThreadGroup;->stopHelper()Z

    move-result v5

    or-int/2addr v3, v5

    goto :goto_1

    :cond_2
    monitor-exit v6

    return v3

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method private suspendHelper()Z
    .locals 7

    const/4 v3, 0x0

    iget-object v6, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    if-ne v4, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Thread;->suspend()V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v6

    :try_start_2
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    invoke-direct {v1}, Ljava/lang/ThreadGroup;->suspendHelper()Z

    move-result v5

    or-int/2addr v3, v5

    goto :goto_1

    :cond_2
    monitor-exit v6

    return v3

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method


# virtual methods
.method public activeCount()I
    .locals 6

    const/4 v0, 0x0

    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_2
    :try_start_3
    monitor-exit v5

    return v0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public activeGroupCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    monitor-exit v4

    return v0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method final addThread(Ljava/lang/Thread;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public allowThreadSuspension(Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final checkAccess()V
    .locals 0

    return-void
.end method

.method public final destroy()V
    .locals 5

    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/IllegalThreadStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread group was already destroyed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "n/a"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/IllegalThreadStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread group still contains threads: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string v0, "n/a"

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->destroy()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-direct {v0, p0}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/ThreadGroup;)V

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void
.end method

.method public enumerate([Ljava/lang/Thread;)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/Thread;Z)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;Z)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result v0

    return v0
.end method

.method public final getMaxPriority()I
    .locals 1

    iget v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Ljava/lang/ThreadGroup;
    .locals 1

    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public final interrupt()V
    .locals 5

    iget-object v4, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    :try_start_2
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->interrupt()V

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public final isDaemon()Z
    .locals 1

    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    return v0
.end method

.method public declared-synchronized isDestroyed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public list()V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->list(I)V

    return-void
.end method

.method public final parentOf(Ljava/lang/ThreadGroup;)Z
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object p1, p1, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final removeThread(Ljava/lang/Thread;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    iget-object v2, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Ljava/lang/ThreadGroup;->destroyIfEmptyDaemon()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final resume()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v4, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->resume()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    :try_start_2
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->resume()V

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public final setDaemon(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    return-void
.end method

.method public final setMaxPriority(I)V
    .locals 5

    iget v3, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    if-gt p1, v3, :cond_4

    const/4 v3, 0x1

    if-ge p1, v3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-nez v3, :cond_1

    move v2, p1

    :goto_0
    if-gt v2, p1, :cond_2

    :goto_1
    iput v2, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, p1

    goto :goto_1

    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    return-void
.end method

.method public final stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/ThreadGroup;->stopHelper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    :cond_0
    return-void
.end method

.method public final suspend()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/ThreadGroup;->suspendHelper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->suspend()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method
