.class public Lcom/android/mms/util/MessageCache;
.super Lcom/google/android/mms/util/AbstractCache;
.source "MessageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/mms/util/AbstractCache",
        "<",
        "Ljava/lang/Long;",
        "Lcom/android/mms/msg/AbstractMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x5a

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "MessageCache"

.field private static sInstance:Lcom/android/mms/util/MessageCache; = null

.field private static final serialVersionUID:J = -0x3316526d7851d370L


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lcom/google/android/mms/util/AbstractCache;-><init>(I)V

    .line 44
    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/android/mms/util/MessageCache;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/android/mms/util/MessageCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/MessageCache;->sInstance:Lcom/android/mms/util/MessageCache;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/mms/util/MessageCache;

    invoke-direct {v0}, Lcom/android/mms/util/MessageCache;-><init>()V

    sput-object v0, Lcom/android/mms/util/MessageCache;->sInstance:Lcom/android/mms/util/MessageCache;

    .line 53
    :cond_0
    sget-object v0, Lcom/android/mms/util/MessageCache;->sInstance:Lcom/android/mms/util/MessageCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearSmsCache()V
    .locals 9

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/util/MessageCache;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 75
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    .line 79
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0x5a

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v1, invalidSms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 82
    .local v2, key:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #invalidSms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2           #key:Ljava/lang/Long;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 87
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #invalidSms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 88
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 89
    .local v4, sms:Ljava/lang/Long;
    invoke-virtual {p0, v4}, Lcom/android/mms/util/MessageCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
