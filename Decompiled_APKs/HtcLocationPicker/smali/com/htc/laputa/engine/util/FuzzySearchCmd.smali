.class public Lcom/htc/laputa/engine/util/FuzzySearchCmd;
.super Lcom/htc/laputa/engine/util/Service$SearchCmd;
.source "FuzzySearchCmd.java"


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 32
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/htc/laputa/engine/util/Service$SearchCmd;-><init>(I)V

    .line 35
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "adminareaid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->cancel()V

    .line 56
    return-void
.end method

.method public declared-synchronized exec(Lcom/htc/laputa/engine/util/CmdListener;)I
    .locals 1
    .parameter "listener"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->exec(Lcom/htc/laputa/engine/util/CmdListener;)I
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

.method public getAdminId()I
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "adminareaid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCategories()[I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "categoryarray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCount()I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "maxcount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOnline()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "online"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPosition()Lcom/htc/laputa/engine/util/Coordinate;
    .locals 5

    .prologue
    .line 83
    new-instance v0, Lcom/htc/laputa/engine/util/Coordinate;

    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "lat"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v4, "lon"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/laputa/engine/util/Coordinate;-><init>(DD)V

    return-object v0
.end method

.method public getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;)Ljava/util/List;
    .locals 2
    .parameter "retIndex"
    .parameter "count"
    .parameter "field"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/String;",
            "Lcom/htc/laputa/engine/util/DataListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRet()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 2
    .parameter "retIndex"
    .parameter "count"
    .parameter "field"
    .parameter "listener"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/String;",
            "Lcom/htc/laputa/engine/util/DataListener;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRet()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-super/range {p0 .. p5}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetCount()I
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->getRetCount()I

    move-result v0

    return v0
.end method

.method public releaseResourse()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->cancel()V

    .line 64
    return-void
.end method

.method public setAdminId(I)V
    .locals 2
    .parameter "adminId"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "adminareaid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    return-void
.end method

.method public setCategories([I)V
    .locals 3
    .parameter "categoryIds"

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCategories(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "categoryarray"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 113
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 3
    .parameter "kw"

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyword(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setMaxCount(I)V
    .locals 2
    .parameter "maxCount"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "maxcount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    return-void
.end method

.method public setOnline(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "online"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    return-void
.end method

.method public setPosition(DD)V
    .locals 2
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "lat"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 74
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "lon"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 75
    return-void
.end method
