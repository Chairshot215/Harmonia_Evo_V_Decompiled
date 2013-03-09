.class public Lcom/htc/laputa/engine/util/Geocode2AddressCmd;
.super Lcom/htc/laputa/engine/util/Service$BasicCmd;
.source "Geocode2AddressCmd.java"


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/htc/laputa/engine/util/Service$BasicCmd;-><init>(I)V

    .line 49
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "online"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "maxcount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$BasicCmd;->cancel()V

    .line 70
    return-void
.end method

.method public declared-synchronized exec(Lcom/htc/laputa/engine/util/CmdListener;)I
    .locals 1
    .parameter "listener"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/htc/laputa/engine/util/Service$BasicCmd;->exec(Lcom/htc/laputa/engine/util/CmdListener;)I
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

.method public getOnline()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "online"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRet()Lcom/htc/laputa/engine/util/AddressInfo;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, ai:Lcom/htc/laputa/engine/util/AddressInfo;
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v0, Lcom/htc/laputa/engine/util/AddressInfo;

    .end local v0           #ai:Lcom/htc/laputa/engine/util/AddressInfo;
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "country"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "county"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "city"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "street"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "house_number"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    const-string v8, "full_address"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/laputa/engine/util/AddressInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .restart local v0       #ai:Lcom/htc/laputa/engine/util/AddressInfo;
    :cond_0
    return-object v0
.end method

.method public releaseResourse()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$BasicCmd;->releaseResourse()V

    .line 78
    return-void
.end method

.method public setOnline(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "online"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    return-void
.end method

.method public setPosition(DD)V
    .locals 2
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "lat"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 88
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "lon"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 89
    return-void
.end method
