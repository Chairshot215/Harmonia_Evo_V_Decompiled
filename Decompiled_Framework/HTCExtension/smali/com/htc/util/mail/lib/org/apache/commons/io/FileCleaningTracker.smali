.class public Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;
.super Ljava/lang/Object;
.source "FileCleaningTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker$Tracker;,
        Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker$Reaper;
    }
.end annotation


# instance fields
.field volatile exitWhenFinished:Z

.field q:Ljava/lang/ref/ReferenceQueue;

.field reaper:Ljava/lang/Thread;

.field final trackers:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->q:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->exitWhenFinished:Z

    return-void
.end method

.method private declared-synchronized addTracker(Ljava/lang/String;Ljava/lang/Object;Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->exitWhenFinished:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No new trackers can be added once exitWhenFinished() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker$Reaper;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker$Reaper;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;)V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker$Tracker;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->q:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p3, p2, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker$Tracker;-><init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized exitWhenFinished()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->exitWhenFinished:Z

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTrackCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public track(Ljava/io/File;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method

.method public track(Ljava/io/File;Ljava/lang/Object;Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The file must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->addTracker(Ljava/lang/String;Ljava/lang/Object;Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/lang/Object;Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The path must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileCleaningTracker;->addTracker(Ljava/lang/String;Ljava/lang/Object;Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method
