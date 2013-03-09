.class public Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;
.super Ljava/lang/Object;
.source "ExchangeAccountList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;
    }
.end annotation


# instance fields
.field mAggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

.field mList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;",
            ">;"
        }
    .end annotation
.end field

.field mListenerList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mListenerList:Ljava/util/Vector;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mAggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    return-void
.end method


# virtual methods
.method public addExchangeSyncSource(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 4
    .parameter "exchange"

    .prologue
    .line 20
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    monitor-enter v3

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mAggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    iput-object v2, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->aggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 25
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mListenerList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;

    .line 29
    .local v1, listener:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;
    invoke-interface {v1, p1}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;->accountAdd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    goto :goto_0

    .line 25
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 31
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public addListener(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mListenerList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public findExchangeSyncSources(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .locals 5
    .parameter "account"

    .prologue
    .line 89
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    monitor-enter v3

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 91
    .local v0, exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    iget-object v4, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEqualssIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    iget-object v4, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEqualssIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    iget-object v4, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEqualssIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    :cond_1
    monitor-exit v3

    .line 97
    .end local v0           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    monitor-exit v3

    goto :goto_0

    .line 98
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAccountCount()I
    .locals 5

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, count:I
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 156
    .local v1, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v1           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_1
    return v0
.end method

.method public getAccountList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    return-object v0
.end method

.method public getAccountsId()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 145
    .local v2, idList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    monitor-enter v4

    .line 146
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 147
    .local v0, exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v5, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v0           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 149
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getAggregateProvisionDoc()Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mAggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    return-object v0
.end method

.method public getAvailableAccountList()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 132
    .local v2, list:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;>;"
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 133
    .local v0, exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 134
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v0           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_1
    return-object v2
.end method

.method public getAvailableExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .locals 5
    .parameter "accountName"

    .prologue
    .line 101
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    monitor-enter v3

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 103
    .local v0, exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEqualssIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    monitor-exit v3

    .line 108
    .end local v0           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v3

    goto :goto_0

    .line 109
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .locals 6
    .parameter "accountId"

    .prologue
    .line 68
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    monitor-enter v3

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 70
    .local v0, exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v4, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    .line 71
    monitor-exit v3

    .line 74
    .end local v0           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v3

    goto :goto_0

    .line 75
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .locals 4
    .parameter "accountName"

    .prologue
    .line 78
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    monitor-enter v3

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 80
    .local v0, exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEqualssIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    monitor-exit v3

    .line 84
    .end local v0           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v3

    goto :goto_0

    .line 85
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getProvisionDocList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, docList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;>;"
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 187
    .local v1, exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v1           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_1
    return-object v0
.end method

.method public isDuplicateDisplayName(Ljava/lang/String;)Z
    .locals 6
    .parameter "displayName"

    .prologue
    const/4 v3, 0x1

    .line 112
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 115
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    monitor-enter v4

    .line 116
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 117
    .local v0, exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->displayName:Ljava/lang/String;

    .line 118
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 121
    :cond_2
    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    if-eq v5, v3, :cond_1

    invoke-static {v2, p1}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEqualssIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    monitor-exit v4

    .line 126
    .end local v0           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v2           #name:Ljava/lang/String;
    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 127
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 197
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    .end local v0           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 199
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 200
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mListenerList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    monitor-exit p0

    return-void
.end method

.method public removeExchangeSyncSource(J)Z
    .locals 7
    .parameter "accountId"

    .prologue
    .line 34
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    monitor-enter v4

    .line 35
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 36
    .local v0, exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v5, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    cmp-long v3, v5, p1

    if-nez v3, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->release()V

    .line 38
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 40
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mListenerList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;

    .line 41
    .local v2, listener:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;
    invoke-interface {v2, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;->accountRemove(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    goto :goto_0

    .line 47
    .end local v0           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 43
    .restart local v0       #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    monitor-exit v4

    .line 46
    .end local v0           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public removeExchangeSyncSource(Ljava/lang/String;)Z
    .locals 5
    .parameter "accountName"

    .prologue
    .line 51
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    monitor-enter v4

    .line 52
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 53
    .local v0, exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEqualssIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->release()V

    .line 55
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mListenerList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;

    .line 58
    .local v2, listener:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;
    invoke-interface {v2, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;->accountRemove(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    goto :goto_0

    .line 64
    .end local v0           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 60
    .restart local v0       #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    monitor-exit v4

    .line 63
    .end local v0           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public removeListener(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList$AccountChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mListenerList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public setAggregateProvisionDoc(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V
    .locals 4
    .parameter "aggProvisionDoc"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mAggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 170
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    monitor-enter v3

    .line 171
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 172
    .local v0, exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->mAggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->aggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    goto :goto_0

    .line 174
    .end local v0           #exchange:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    return-void
.end method
