.class public Lcom/htc/laputa/engine/util/LocationSearchCmd;
.super Lcom/htc/laputa/engine/util/Service$BasicCmd;
.source "LocationSearchCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;,
        Lcom/htc/laputa/engine/util/LocationSearchCmd$LocationSearchListener;,
        Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;,
        Lcom/htc/laputa/engine/util/LocationSearchCmd$SortOrder;,
        Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;
    }
.end annotation


# instance fields
.field public final NULL_ADMINAREA_ID:I

.field private mGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupRetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/laputa/engine/util/Service$BasicCmd;-><init>(I)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->NULL_ADMINAREA_ID:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupList:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupRetList:Ljava/util/ArrayList;

    .line 167
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$BasicCmd;->cancel()V

    .line 186
    return-void
.end method

.method public bridge synthetic exec(Lcom/htc/laputa/engine/util/CmdListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/laputa/engine/util/Service$BasicCmd;->exec(Lcom/htc/laputa/engine/util/CmdListener;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized exec(Lcom/htc/laputa/engine/util/LocationSearchCmd$LocationSearchListener;)I
    .locals 1
    .parameter "listener"

    .prologue
    .line 177
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
    .line 267
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "adminareaid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCategories()[I
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "categoryarray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;
    .locals 1
    .parameter "groupIndex"

    .prologue
    .line 358
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 359
    :cond_0
    const/4 v0, 0x0

    .line 361
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupingType()Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;
    .locals 3

    .prologue
    .line 285
    invoke-static {}, Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;->values()[Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "groupingtype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCount()I
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "maxcount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPosition()Lcom/htc/laputa/engine/util/Coordinate;
    .locals 5

    .prologue
    .line 213
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

.method public getRet(III[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;)Ljava/util/List;
    .locals 6
    .parameter "groupIndex"
    .parameter "retIndex"
    .parameter "count"
    .parameter "field"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[",
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
    const/4 v3, 0x0

    .line 396
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getRet()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v2, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupRetList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupRetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "No result found."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 421
    :cond_1
    :goto_0
    return-object v1

    .line 404
    :cond_2
    const/4 v1, 0x0

    .line 407
    .local v1, retList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v2, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupRetList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int v4, p2, p3

    invoke-virtual {v2, p2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    :goto_1
    if-eqz p5, :cond_1

    .line 420
    invoke-interface {p5, v1}, Lcom/htc/laputa/engine/util/DataListener;->notifyDataReady(Ljava/util/List;)V

    move-object v1, v3

    .line 421
    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", groupindex= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getRet(III[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 3
    .parameter "groupIndex"
    .parameter "retIndex"
    .parameter "count"
    .parameter "field"
    .parameter "listener"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[",
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
    .line 438
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRet()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual/range {p0 .. p5}, Lcom/htc/laputa/engine/util/LocationSearchCmd;->getRet(III[Ljava/lang/String;Lcom/htc/laputa/engine/util/DataListener;)Ljava/util/List;

    move-result-object v0

    .line 442
    .local v0, retList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz p6, :cond_0

    .line 444
    invoke-static {p6, v0}, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;->prepareFpData(Landroid/content/ContentResolver;Ljava/util/List;)V

    .line 447
    :cond_0
    return-object v0
.end method

.method public getRetCount(I)I
    .locals 5
    .parameter "groupIndex"

    .prologue
    const/4 v1, 0x0

    .line 371
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupRetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 373
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationSearchCmd.getRetCount(): Invalid arguments,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_1
    :goto_0
    return v1

    .line 377
    :cond_2
    iget-object v2, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupRetList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 379
    .local v0, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getRetType()Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;
    .locals 3

    .prologue
    .line 339
    invoke-static {}, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;->values()[Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "rettype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSortOrder()Lcom/htc/laputa/engine/util/LocationSearchCmd$SortOrder;
    .locals 3

    .prologue
    .line 321
    invoke-static {}, Lcom/htc/laputa/engine/util/LocationSearchCmd$SortOrder;->values()[Lcom/htc/laputa/engine/util/LocationSearchCmd$SortOrder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v2, "sortorder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected onRetReceive(IILandroid/os/Bundle;)V
    .locals 5
    .parameter "errCode"
    .parameter "taskId"
    .parameter "retBndl"

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRetReceive(%1$d, %2$d, bndl)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupRetList:Ljava/util/ArrayList;

    invoke-virtual {p0, p3, v0, v1}, Lcom/htc/laputa/engine/util/LocationSearchCmd;->parseReturnBndl(Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mListener:Lcom/htc/laputa/engine/util/CmdListener;

    check-cast v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$LocationSearchListener;

    iget-object v1, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupRetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, p2, v1}, Lcom/htc/laputa/engine/util/LocationSearchCmd$LocationSearchListener;->notifyGroupFound(II)V

    .line 123
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/laputa/engine/util/Service$BasicCmd;->onRetReceive(IILandroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method protected parseReturnBndl(Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10
    .parameter "retBndl"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;>;"
    .local p3, groupRetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/os/Bundle;>;>;"
    const/4 v7, 0x0

    .line 130
    .local v7, isGroupFound:Z
    const-string v0, "2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 131
    .local v8, retDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v8, :cond_1

    .line 133
    const/4 v7, 0x1

    .line 135
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;->values()[Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v9, "groupingtype"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v0, v1

    .line 138
    .local v2, gt:Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;
    const/4 v3, 0x0

    .line 139
    .local v3, id:I
    const/4 v4, 0x0

    .line 140
    .local v4, name:Ljava/lang/String;
    const/4 v5, -0x1

    .line 142
    .local v5, adminlv:I
    const-string v0, "3"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 143
    .local v6, groupBndl:Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 145
    const-string v0, "id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 146
    const-string v0, "name"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    const-string v0, "adminarea_level"

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 150
    :cond_0
    new-instance v0, Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/laputa/engine/util/LocationSearchCmd$SearchRetGroup;-><init>(Lcom/htc/laputa/engine/util/LocationSearchCmd;Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;ILjava/lang/String;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v2           #gt:Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;
    .end local v3           #id:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #adminlv:I
    .end local v6           #groupBndl:Landroid/os/Bundle;
    :cond_1
    return v7
.end method

.method protected parseReturnBndlList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 160
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/laputa/engine/util/LocationSearchCmd;->mGroupRetList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/laputa/engine/util/LocationSearchCmd;->parseReturnBndl(Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method public releaseResourse()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Lcom/htc/laputa/engine/util/Service$BasicCmd;->releaseResourse()V

    .line 194
    return-void
.end method

.method public setAdminArea(I)V
    .locals 2
    .parameter "adminAreaId"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "adminareaid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    return-void
.end method

.method public setCategories([I)V
    .locals 2
    .parameter "categoryIds"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "categoryarray"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 241
    return-void
.end method

.method public setGroupingType(Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;)V
    .locals 3
    .parameter "gt"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "groupingtype"

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/LocationSearchCmd$GroupingType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 2
    .parameter "keyword"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public setMaxCount(I)V
    .locals 2
    .parameter "maxCount"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "maxcount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    return-void
.end method

.method public setPosition(DD)V
    .locals 2
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "lat"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 204
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "lon"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 205
    return-void
.end method

.method public setRetType(Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;)V
    .locals 3
    .parameter "rt"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "rettype"

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/LocationSearchCmd$RetType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 331
    return-void
.end method

.method public setSortOrder(Lcom/htc/laputa/engine/util/LocationSearchCmd$SortOrder;)V
    .locals 3
    .parameter "so"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    const-string v1, "sortorder"

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/LocationSearchCmd$SortOrder;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    return-void
.end method
