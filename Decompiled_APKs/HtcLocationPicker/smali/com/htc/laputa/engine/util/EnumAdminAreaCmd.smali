.class public Lcom/htc/laputa/engine/util/EnumAdminAreaCmd;
.super Lcom/htc/laputa/engine/util/Service$BasicCmd;
.source "EnumAdminAreaCmd.java"


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/laputa/engine/util/Service$BasicCmd;-><init>(I)V

    .line 27
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "online"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$BasicCmd;->cancel()V

    .line 47
    return-void
.end method

.method public declared-synchronized exec(Lcom/htc/laputa/engine/util/CmdListener;)I
    .locals 1
    .parameter "listener"

    .prologue
    .line 38
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

.method public getAdminArea()I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "adminareaid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOnline()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "online"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    return-object v0
.end method

.method public releaseResourse()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$BasicCmd;->releaseResourse()V

    .line 55
    return-void
.end method

.method public setAdminArea(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "adminareaid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public setOnline(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "online"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    return-void
.end method
