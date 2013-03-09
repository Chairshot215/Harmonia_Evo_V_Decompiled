.class Lcom/google/android/gm/Utils$NotificationMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Lcom/google/android/gm/Utils$NotificationKey;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/Utils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/google/android/gm/Utils$NotificationMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnread(Lcom/google/android/gm/Utils$NotificationKey;)Ljava/lang/Integer;
    .locals 2
    .parameter "key"

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Utils$NotificationMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 379
    .local v0, value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUnseen(Lcom/google/android/gm/Utils$NotificationKey;)Ljava/lang/Integer;
    .locals 2
    .parameter "key"

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lcom/google/android/gm/Utils$NotificationMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 387
    .local v0, value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadNotificationMap(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v5

    .line 404
    .local v5, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-virtual {v5, p1}, Lcom/google/android/gm/persistence/Persistence;->getActiveNotificationSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    .line 405
    .local v4, notificationSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 406
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 408
    .local v2, notificationEntry:Ljava/lang/String;
    const-string v9, " "

    invoke-static {v2, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, notificationParts:[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 411
    new-instance v1, Lcom/google/android/gm/Utils$NotificationKey;

    const/4 v9, 0x0

    aget-object v9, v3, v9

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-direct {v1, v9, v10}, Lcom/google/android/gm/Utils$NotificationKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .local v1, key:Lcom/google/android/gm/Utils$NotificationKey;
    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 414
    .local v7, unreadValue:Ljava/lang/Integer;
    const/4 v9, 0x3

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 415
    .local v8, unseenValue:Ljava/lang/Integer;
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    .local v6, unreadUnseenValue:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v6}, Lcom/google/android/gm/Utils$NotificationMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 403
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Lcom/google/android/gm/Utils$NotificationKey;
    .end local v2           #notificationEntry:Ljava/lang/String;
    .end local v3           #notificationParts:[Ljava/lang/String;
    .end local v4           #notificationSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #persistence:Lcom/google/android/gm/persistence/Persistence;
    .end local v6           #unreadUnseenValue:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7           #unreadValue:Ljava/lang/Integer;
    .end local v8           #unseenValue:Ljava/lang/Integer;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 421
    .restart local v4       #notificationSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #persistence:Lcom/google/android/gm/persistence/Persistence;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public put(Lcom/google/android/gm/Utils$NotificationKey;II)V
    .locals 3
    .parameter "key"
    .parameter "unread"
    .parameter "unseen"

    .prologue
    .line 394
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 396
    .local v0, value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/Utils$NotificationMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public declared-synchronized saveNotificationMap(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 428
    .local v3, notificationSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/gm/Utils$NotificationMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 429
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/Utils$NotificationKey;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/Utils$NotificationKey;

    .line 430
    .local v1, key:Lcom/google/android/gm/Utils$NotificationKey;
    invoke-virtual {p0, v1}, Lcom/google/android/gm/Utils$NotificationMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 431
    .local v8, value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 432
    .local v6, unreadCount:Ljava/lang/Integer;
    iget-object v7, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    .line 433
    .local v7, unseenCount:Ljava/lang/Integer;
    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 434
    const/4 v9, 0x4

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/google/android/gm/Utils$NotificationKey;->account:Ljava/lang/String;

    aput-object v10, v4, v9

    const/4 v9, 0x1

    iget-object v10, v1, Lcom/google/android/gm/Utils$NotificationKey;->label:Ljava/lang/String;

    aput-object v10, v4, v9

    const/4 v9, 0x2

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x3

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 436
    .local v4, partValues:[Ljava/lang/String;
    const-string v9, " "

    invoke-static {v9, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 427
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Lcom/google/android/gm/Utils$NotificationKey;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/Utils$NotificationKey;>;"
    .end local v3           #notificationSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #partValues:[Ljava/lang/String;
    .end local v6           #unreadCount:Ljava/lang/Integer;
    .end local v7           #unseenCount:Ljava/lang/Integer;
    .end local v8           #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 439
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/Utils$NotificationKey;>;"
    .restart local v3       #notificationSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v5

    .line 440
    .local v5, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-virtual {v5, p1, v3}, Lcom/google/android/gm/persistence/Persistence;->cacheActiveNotificationSet(Landroid/content/Context;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    monitor-exit p0

    return-void
.end method
