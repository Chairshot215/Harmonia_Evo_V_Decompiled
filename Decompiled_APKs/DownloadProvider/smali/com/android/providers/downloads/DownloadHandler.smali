.class public Lcom/android/providers/downloads/DownloadHandler;
.super Ljava/lang/Object;
.source "DownloadHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadHandler"

.field private static final mDownloadHandler:Lcom/android/providers/downloads/DownloadHandler;


# instance fields
.field private final mDownloadsInProgress:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadsQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxConcurrentDownloadsAllowed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/android/providers/downloads/DownloadHandler;

    invoke-direct {v0}, Lcom/android/providers/downloads/DownloadHandler;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadHandler:Lcom/android/providers/downloads/DownloadHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    .line 35
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mMaxConcurrentDownloadsAllowed:I

    return-void
.end method

.method static getInstance()Lcom/android/providers/downloads/DownloadHandler;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadHandler:Lcom/android/providers/downloads/DownloadHandler;

    return-object v0
.end method

.method private declared-synchronized startDownloadThread()V
    .locals 8

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 54
    .local v4, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    iget v6, p0, Lcom/android/providers/downloads/DownloadHandler;->mMaxConcurrentDownloadsAllowed:I

    if-ge v5, v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 57
    .local v1, id:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/downloads/DownloadInfo;

    .line 58
    .local v3, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->startDownloadThread()V

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_0

    .line 62
    const-string v5, "DownloadHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "started download for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    .end local v1           #id:Ljava/lang/Long;
    .end local v2           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v4           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 65
    .restart local v2       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v4       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 66
    .restart local v1       #id:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 68
    .end local v1           #id:Ljava/lang/Long;
    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized WaitUntilDownloadsTerminate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 86
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_0

    .line 87
    const-string v2, "DownloadHandler"

    const-string v3, "nothing to wait on"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_3

    .line 92
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/DownloadInfo;

    .line 93
    .local v1, info:Lcom/android/providers/downloads/DownloadInfo;
    const-string v2, "DownloadHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 85
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/android/providers/downloads/DownloadInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 95
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/DownloadInfo;

    .line 96
    .restart local v1       #info:Lcom/android/providers/downloads/DownloadInfo;
    const-string v2, "DownloadHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** in Q: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 99
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_3
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_4

    .line 100
    const-string v2, "DownloadHandler"

    const-string v3, "waiting for 5 sec"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_4
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method declared-synchronized dequeueDownload(J)V
    .locals 2
    .parameter "mId"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadHandler;->startDownloadThread()V

    .line 77
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueDownload(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    iget-wide v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "DownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueued download. id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    iget-wide v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadHandler;->startDownloadThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasDownloadInQueue(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
