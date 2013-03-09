.class Lcom/htc/android/mail/RequestController$RequestCollection;
.super Ljava/lang/Object;
.source "RequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestCollection"
.end annotation


# instance fields
.field private mAllRequests:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/android/mail/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshCheckMoreRequestsArray:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/android/mail/Request;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4243
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4244
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mAllRequests:Ljava/util/Vector;

    .line 4245
    new-instance v0, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mRefreshCheckMoreRequestsArray:Lcom/htc/android/mail/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/RequestController$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4243
    invoke-direct {p0}, Lcom/htc/android/mail/RequestController$RequestCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/htc/android/mail/Request;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 4248
    invoke-virtual {p1}, Lcom/htc/android/mail/Request;->getAccount()Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 4249
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_0

    .line 4261
    :goto_0
    return-void

    .line 4251
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mAllRequests:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4252
    iget-object v2, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mAllRequests:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Lcom/htc/android/mail/Request;->registerCollection(Ljava/util/Collection;)V

    .line 4253
    iget v2, p1, Lcom/htc/android/mail/Request;->command:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4256
    :pswitch_1
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/mail/RequestController$RequestCollection;->getRefreshCheckMoreRequests(J)Ljava/util/Vector;

    move-result-object v1

    .line 4257
    .local v1, refreshCheckMoreRequests:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/Request;>;"
    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4258
    invoke-virtual {p1, v1}, Lcom/htc/android/mail/Request;->registerCollection(Ljava/util/Collection;)V

    goto :goto_0

    .line 4253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 4309
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mAllRequests:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 4310
    iget-object v1, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mRefreshCheckMoreRequestsArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v1

    .line 4311
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mRefreshCheckMoreRequestsArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SparseArray;->clear()V

    .line 4312
    monitor-exit v1

    .line 4313
    return-void

    .line 4312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsCommand(JI)Z
    .locals 8
    .parameter "accountId"
    .parameter "command"

    .prologue
    const/4 v5, 0x0

    .line 4296
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mAllRequests:Ljava/util/Vector;

    new-array v7, v5, [Lcom/htc/android/mail/Request;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/Request;

    .line 4297
    .local v0, allReq:[Lcom/htc/android/mail/Request;
    move-object v1, v0

    .local v1, arr$:[Lcom/htc/android/mail/Request;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 4298
    .local v4, r:Lcom/htc/android/mail/Request;
    if-nez v4, :cond_1

    .line 4297
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4299
    :cond_1
    invoke-virtual {v4}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    iget v6, v4, Lcom/htc/android/mail/Request;->command:I

    if-ne v6, p3, :cond_0

    const/4 v5, 0x1

    .line 4301
    .end local v4           #r:Lcom/htc/android/mail/Request;
    :cond_2
    return v5
.end method

.method public getAllRequests()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/android/mail/Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4264
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mAllRequests:Ljava/util/Vector;

    return-object v0
.end method

.method public getRefreshCheckMoreNum(J)I
    .locals 5
    .parameter "accountId"

    .prologue
    .line 4268
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, p1, v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/RequestController$RequestCollection;->getRefreshCheckMoreRequests(J)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 4275
    :goto_0
    return v1

    .line 4269
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mRefreshCheckMoreRequestsArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v4

    .line 4270
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mRefreshCheckMoreRequestsArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v2

    .line 4271
    .local v2, size:I
    const/4 v1, 0x0

    .line 4272
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 4273
    iget-object v3, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mRefreshCheckMoreRequestsArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 4272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4275
    :cond_1
    monitor-exit v4

    goto :goto_0

    .line 4276
    .end local v0           #i:I
    .end local v1           #num:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getRefreshCheckMoreRequests(J)Ljava/util/Vector;
    .locals 5
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/android/mail/Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4280
    iget-object v3, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mRefreshCheckMoreRequestsArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 4281
    .local v1, refreshCheckMoreRequests:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/Request;>;"
    if-nez v1, :cond_0

    .line 4282
    iget-object v4, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mRefreshCheckMoreRequestsArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v4

    .line 4284
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mRefreshCheckMoreRequestsArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4285
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4286
    .end local v1           #refreshCheckMoreRequests:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/Request;>;"
    .local v2, refreshCheckMoreRequests:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/Request;>;"
    :try_start_1
    iget-object v3, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mRefreshCheckMoreRequestsArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2, v2}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 4290
    .end local v2           #refreshCheckMoreRequests:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/Request;>;"
    .restart local v1       #refreshCheckMoreRequests:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/Request;>;"
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 4292
    :cond_0
    return-object v1

    .line 4288
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/RequestController$RequestCollection;->mRefreshCheckMoreRequestsArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Vector;

    move-object v1, v0

    goto :goto_0

    .line 4290
    :catchall_0
    move-exception v3

    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1           #refreshCheckMoreRequests:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/Request;>;"
    .restart local v2       #refreshCheckMoreRequests:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/Request;>;"
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #refreshCheckMoreRequests:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/Request;>;"
    .restart local v1       #refreshCheckMoreRequests:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/Request;>;"
    goto :goto_1
.end method

.method public remove(Lcom/htc/android/mail/Request;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 4305
    invoke-virtual {p1}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 4306
    return-void
.end method
