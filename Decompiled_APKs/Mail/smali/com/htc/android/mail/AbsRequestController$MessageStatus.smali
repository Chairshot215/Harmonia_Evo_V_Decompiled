.class public Lcom/htc/android/mail/AbsRequestController$MessageStatus;
.super Ljava/lang/Object;
.source "AbsRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/AbsRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageStatus"
.end annotation


# static fields
.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final FLAG:Ljava/lang/String; = "FLAG"

.field public static final READ:Ljava/lang/String; = "READ"


# instance fields
.field private mMapLocalNotUpdate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSetRemoteNotUpdate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mMapLocalNotUpdate:Ljava/util/Map;

    .line 215
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mSetRemoteNotUpdate:Ljava/util/Set;

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local p2, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mMapLocalNotUpdate:Ljava/util/Map;

    .line 220
    iput-object p2, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mSetRemoteNotUpdate:Ljava/util/Set;

    .line 221
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mMapLocalNotUpdate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 282
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mSetRemoteNotUpdate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone1()Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    .locals 3

    .prologue
    .line 224
    iget-object v2, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mMapLocalNotUpdate:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 225
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mSetRemoteNotUpdate:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 226
    .local v1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v2, Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    invoke-direct {v2, v0, v1}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-object v2
.end method

.method public declared-synchronized get(J)I
    .locals 3
    .parameter "id"

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mMapLocalNotUpdate:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 231
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 234
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 230
    .end local v0           #i:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getIdList()[J
    .locals 8

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mMapLocalNotUpdate:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v2, v6, [J

    .line 287
    .local v2, ids:[J
    iget-object v6, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mMapLocalNotUpdate:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 288
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 289
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .line 290
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 291
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 292
    .local v4, key:Ljava/lang/Long;
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 293
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 294
    .end local v4           #key:Ljava/lang/Long;
    :cond_0
    monitor-exit p0

    return-object v2

    .line 286
    .end local v1           #i:I
    .end local v2           #ids:[J
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized getInvalidateIdList(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "seperator"
    .parameter "escape"

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mSetRemoteNotUpdate:Ljava/util/Set;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mSetRemoteNotUpdate:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->isAllUpdateRemoteCompleted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    :cond_0
    const-string v5, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :goto_0
    monitor-exit p0

    return-object v5

    .line 301
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v0, combineStr:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mSetRemoteNotUpdate:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 304
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v2, 0x1

    .line 306
    .local v2, isFirstOne:Z
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 308
    .local v3, o:Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 309
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, value:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 311
    const/4 v2, 0x0

    .line 312
    if-eqz p2, :cond_3

    .line 313
    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 298
    .end local v0           #combineStr:Ljava/lang/StringBuilder;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #isFirstOne:Z
    .end local v3           #o:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 315
    .restart local v0       #combineStr:Ljava/lang/StringBuilder;
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v2       #isFirstOne:Z
    .restart local v3       #o:Ljava/lang/Object;
    .restart local v4       #value:Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 318
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    if-eqz p2, :cond_5

    .line 320
    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 322
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 327
    .end local v3           #o:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto :goto_0
.end method

.method public declared-synchronized isAllUpdateRemoteCompleted()Z
    .locals 1

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mSetRemoteNotUpdate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putLocal(JI)V
    .locals 3
    .parameter "id"
    .parameter "value"

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mMapLocalNotUpdate:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mSetRemoteNotUpdate:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putRemote(JI)V
    .locals 2
    .parameter "id"
    .parameter "value"

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mSetRemoteNotUpdate:Ljava/util/Set;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mMapLocalNotUpdate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
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

.method public declared-synchronized updateLocalCompleted(J)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mMapLocalNotUpdate:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .local v0, i:Ljava/lang/Integer;
    monitor-exit p0

    return-void

    .line 265
    .end local v0           #i:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateLocalCompleted(JI)V
    .locals 3
    .parameter "messageId"
    .parameter "_status"

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mMapLocalNotUpdate:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 270
    .local v0, status:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 271
    iget-object v1, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mMapLocalNotUpdate:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_0
    monitor-exit p0

    return-void

    .line 269
    .end local v0           #status:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateRemoteCompleted(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->mSetRemoteNotUpdate:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
