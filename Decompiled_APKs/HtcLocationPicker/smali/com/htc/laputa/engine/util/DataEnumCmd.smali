.class public Lcom/htc/laputa/engine/util/DataEnumCmd;
.super Lcom/htc/laputa/engine/util/Service$SearchCmd;
.source "DataEnumCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/laputa/engine/util/Service$SearchCmd;-><init>(I)V

    .line 36
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "online"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public GetCategory()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

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

.method public getMaxCount()I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "maxcount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOnline()Z
    .locals 2

    .prologue
    .line 157
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
    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 1
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
    .line 193
    invoke-super/range {p0 .. p5}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->getRet(II[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetCount()I
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->getRetCount()I

    move-result v0

    return v0
.end method

.method public getSortOrder()Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;->values()[Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "sortorder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public releaseResourse()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$SearchCmd;->releaseResourse()V

    .line 64
    return-void
.end method

.method public setCategory(I)V
    .locals 3
    .parameter "categoryId"

    .prologue
    .line 92
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 93
    .local v0, categoryIds:[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 94
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "categoryarray"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 95
    return-void
.end method

.method public setMaxCount(I)V
    .locals 2
    .parameter "maxCount"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "maxcount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    return-void
.end method

.method public setOnline(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "online"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
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

.method public setSortOrder(Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;)V
    .locals 3
    .parameter "so"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "sortorder"

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    return-void
.end method
