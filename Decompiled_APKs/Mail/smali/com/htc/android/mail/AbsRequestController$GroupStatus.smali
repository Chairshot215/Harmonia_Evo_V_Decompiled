.class public Lcom/htc/android/mail/AbsRequestController$GroupStatus;
.super Ljava/lang/Object;
.source "AbsRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/AbsRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupStatus"
.end annotation


# static fields
.field public static final READ_UNCOMMIT:Ljava/lang/String; = "READ_UNCOMMIT"


# instance fields
.field private mMapLocalNotUpdate:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/AbsRequestController$GroupStatus;->mMapLocalNotUpdate:Lcom/htc/android/mail/util/SparseArray;

    .line 98
    return-void
.end method


# virtual methods
.method public declared-synchronized decrement(JLjava/lang/String;)V
    .locals 4
    .parameter "accountId"
    .parameter "group"

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/AbsRequestController$GroupStatus;->mMapLocalNotUpdate:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :cond_1
    :try_start_1
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 128
    .local v2, status:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 130
    .local v0, i:I
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_2

    .line 131
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    .end local v0           #i:I
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2           #status:Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 133
    .restart local v0       #i:I
    .restart local v1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2       #status:Ljava/lang/Integer;
    :cond_2
    :try_start_2
    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized get(JLjava/lang/String;)I
    .locals 4
    .parameter "accountId"
    .parameter "group"

    .prologue
    const/4 v2, 0x0

    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/AbsRequestController$GroupStatus;->mMapLocalNotUpdate:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 103
    :cond_1
    :try_start_1
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 104
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 101
    .end local v0           #i:Ljava/lang/Integer;
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized increment(JLjava/lang/String;)V
    .locals 4
    .parameter "accountId"
    .parameter "group"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/AbsRequestController$GroupStatus;->mMapLocalNotUpdate:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 112
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 113
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    .restart local v1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/htc/android/mail/AbsRequestController$GroupStatus;->mMapLocalNotUpdate:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2, v1}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 116
    :cond_0
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 117
    .local v2, status:Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 118
    .local v0, i:I
    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 121
    :cond_1
    new-instance v3, Ljava/lang/Integer;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 111
    .end local v0           #i:I
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2           #status:Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$GroupStatus;->mMapLocalNotUpdate:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
