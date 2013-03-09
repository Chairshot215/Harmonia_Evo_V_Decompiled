.class public Lcom/htc/laputa/engine/util/AddressStepSearchCmd;
.super Lcom/htc/laputa/engine/util/Service$SearchCmd;
.source "AddressStepSearchCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;,
        Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;,
        Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;
    }
.end annotation


# instance fields
.field mCompleteNotification:Ljava/lang/Object;

.field mState:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 134
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/htc/laputa/engine/util/Service$SearchCmd;-><init>(I)V

    .line 171
    sget-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->IDLE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    iput-object v0, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->mState:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->mCompleteNotification:Ljava/lang/Object;

    .line 135
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->cancel()V

    .line 245
    sget-object v0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->CANCEL:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    iput-object v0, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->mState:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    .line 246
    return-void
.end method

.method public exec()I
    .locals 2

    .prologue
    .line 181
    new-instance v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$1;

    invoke-direct {v1, p0}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$1;-><init>(Lcom/htc/laputa/engine/util/AddressStepSearchCmd;)V

    invoke-virtual {p0, v1}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->exec(Lcom/htc/laputa/engine/util/CmdListener;)I

    move-result v0

    .line 193
    .local v0, taskId:I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->EXEC:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    :goto_0
    iput-object v1, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->mState:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    .line 195
    if-ltz v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 193
    :cond_0
    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->IDLE:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    goto :goto_0

    .line 195
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public declared-synchronized exec(Lcom/htc/laputa/engine/util/CmdListener;)I
    .locals 1
    .parameter "listener"

    .prologue
    .line 146
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

.method public execHouseNumSearch(ILjava/lang/String;)I
    .locals 4
    .parameter "streetId"
    .parameter "hsno"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "enablehsnosearch"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "streetid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "hsno"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->exec()I

    move-result v0

    .line 211
    .local v0, ret:I
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "enablehsnosearch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    return v0
.end method

.method public declared-synchronized execHouseNumSearch(ILjava/lang/String;Lcom/htc/laputa/engine/util/CmdListener;)I
    .locals 4
    .parameter "streetId"
    .parameter "hsno"
    .parameter "listener"

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "enablehsnosearch"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "streetid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "hsno"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-super {p0, p3}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->exec(Lcom/htc/laputa/engine/util/CmdListener;)I

    move-result v0

    .line 166
    .local v0, taskId:I
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "enablehsnosearch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return v0

    .line 160
    .end local v0           #taskId:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAdminArea()I
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "adminareaid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchLv()Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;
    .locals 3

    .prologue
    .line 327
    invoke-static {}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->values()[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "matchlv"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMaxCount()I
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "maxcount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPosition()Lcom/htc/laputa/engine/util/Coordinate;
    .locals 5

    .prologue
    .line 273
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
    .locals 1
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
    .line 385
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-super/range {p0 .. p5}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetCount()I
    .locals 1

    .prologue
    .line 372
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->getRetCount()I

    move-result v0

    return v0
.end method

.method public getReturnLv()Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;
    .locals 3

    .prologue
    .line 345
    invoke-static {}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;->values()[Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "returnlv"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public releaseResourse()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->releaseResourse()V

    .line 254
    return-void
.end method

.method public setAdminArea(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "adminareaid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 2
    .parameter "kw"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public setMatchLv(Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;)V
    .locals 3
    .parameter "ml"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "matchlv"

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$MatchLv;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    return-void
.end method

.method public setMaxCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "maxcount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    return-void
.end method

.method public setPosition(DD)V
    .locals 2
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "lat"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 264
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "lon"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 265
    return-void
.end method

.method public setReturnLv(Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;)V
    .locals 3
    .parameter "rl"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "returnlv"

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$ReturnLv;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    return-void
.end method

.method public waitForExecComplete()V
    .locals 5

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForExecComplete() begin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->mState:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    sget-object v1, Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;->EXEC:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    iget-object v2, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->mState:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    if-ne v1, v2, :cond_0

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->mCompleteNotification:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :try_start_1
    iget-object v1, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->mCompleteNotification:Ljava/lang/Object;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 228
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 229
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForExecComplete() end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/laputa/engine/util/AddressStepSearchCmd;->mState:Lcom/htc/laputa/engine/util/AddressStepSearchCmd$STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method
