.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetsRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private assetType_:I

.field private badgeId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private categoryId_:Ljava/lang/String;

.field private hasAssetType:Z

.field private hasCategoryId:Z

.field private hasNumEntries:Z

.field private hasQuery:Z

.field private hasRankingType:Z

.field private hasReconstructVendingHistory:Z

.field private hasRetrieveCarrierChannel:Z

.field private hasRetrieveExtendedInfo:Z

.field private hasRetrieveVendingHistory:Z

.field private hasSortOrder:Z

.field private hasStartIndex:Z

.field private hasUnfilteredResults:Z

.field private hasViewFilter:Z

.field private numEntries_:J

.field private pendingDownloadAssetId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private query_:Ljava/lang/String;

.field private rankingType_:Ljava/lang/String;

.field private reconstructVendingHistory_:Z

.field private retrieveCarrierChannel_:Z

.field private retrieveExtendedInfo_:Z

.field private retrieveVendingHistory_:Z

.field private sortOrder_:I

.field private startIndex_:J

.field private unfilteredResults_:Z

.field private viewFilter_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4001
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4018
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetType_:I

    .line 4035
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->query_:Ljava/lang/String;

    .line 4052
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->categoryId_:Ljava/lang/String;

    .line 4068
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetId_:Ljava/util/List;

    .line 4102
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveVendingHistory_:Z

    .line 4119
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveExtendedInfo_:Z

    .line 4136
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->sortOrder_:I

    .line 4153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->startIndex_:J

    .line 4170
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->numEntries_:J

    .line 4187
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->viewFilter_:I

    .line 4204
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->rankingType_:Ljava/lang/String;

    .line 4221
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveCarrierChannel_:Z

    .line 4237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->pendingDownloadAssetId_:Ljava/util/List;

    .line 4271
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->reconstructVendingHistory_:Z

    .line 4288
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->unfilteredResults_:Z

    .line 4304
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->badgeId_:Ljava/util/List;

    .line 4413
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->cachedSize:I

    .line 4001
    return-void
.end method


# virtual methods
.method public addAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4085
    if-nez p1, :cond_0

    .line 4086
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4088
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetId_:Ljava/util/List;

    .line 4091
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4092
    return-object p0
.end method

.method public addBadgeId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4321
    if-nez p1, :cond_0

    .line 4322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4324
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->badgeId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->badgeId_:Ljava/util/List;

    .line 4327
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->badgeId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4328
    return-object p0
.end method

.method public addPendingDownloadAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4254
    if-nez p1, :cond_0

    .line 4255
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4257
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->pendingDownloadAssetId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->pendingDownloadAssetId_:Ljava/util/List;

    .line 4260
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->pendingDownloadAssetId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4261
    return-object p0
.end method

.method public getAssetIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4071
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetId_:Ljava/util/List;

    return-object v0
.end method

.method public getAssetType()I
    .locals 1

    .prologue
    .line 4020
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetType_:I

    return v0
.end method

.method public getBadgeIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4307
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->badgeId_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4416
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 4418
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getSerializedSize()I

    .line 4420
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->cachedSize:I

    return v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4053
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->categoryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumEntries()J
    .locals 2

    .prologue
    .line 4171
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->numEntries_:J

    return-wide v0
.end method

.method public getPendingDownloadAssetIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4240
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->pendingDownloadAssetId_:Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4036
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getRankingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4205
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->rankingType_:Ljava/lang/String;

    return-object v0
.end method

.method public getReconstructVendingHistory()Z
    .locals 1

    .prologue
    .line 4272
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->reconstructVendingHistory_:Z

    return v0
.end method

.method public getRetrieveCarrierChannel()Z
    .locals 1

    .prologue
    .line 4222
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveCarrierChannel_:Z

    return v0
.end method

.method public getRetrieveExtendedInfo()Z
    .locals 1

    .prologue
    .line 4120
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveExtendedInfo_:Z

    return v0
.end method

.method public getRetrieveVendingHistory()Z
    .locals 1

    .prologue
    .line 4103
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveVendingHistory_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 4425
    const/4 v3, 0x0

    .line 4426
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasAssetType()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4427
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getAssetType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4430
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasQuery()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4431
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4434
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasCategoryId()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4435
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4439
    :cond_2
    const/4 v0, 0x0

    .line 4440
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getAssetIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4441
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 4444
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v3, v0

    .line 4445
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getAssetIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 4447
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveVendingHistory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4448
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRetrieveVendingHistory()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4451
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveExtendedInfo()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4452
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRetrieveExtendedInfo()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4455
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasSortOrder()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4456
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getSortOrder()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4459
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasStartIndex()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4460
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getStartIndex()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4463
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasNumEntries()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4464
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getNumEntries()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4467
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasViewFilter()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4468
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getViewFilter()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4471
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRankingType()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4472
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRankingType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4475
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveCarrierChannel()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4476
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRetrieveCarrierChannel()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4480
    :cond_b
    const/4 v0, 0x0

    .line 4481
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getPendingDownloadAssetIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4482
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 4485
    .end local v1           #element:Ljava/lang/String;
    :cond_c
    add-int/2addr v3, v0

    .line 4486
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getPendingDownloadAssetIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 4488
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasReconstructVendingHistory()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4489
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getReconstructVendingHistory()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4492
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasUnfilteredResults()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4493
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getUnfilteredResults()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4497
    :cond_e
    const/4 v0, 0x0

    .line 4498
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getBadgeIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4499
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 4502
    .end local v1           #element:Ljava/lang/String;
    :cond_f
    add-int/2addr v3, v0

    .line 4503
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getBadgeIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 4505
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->cachedSize:I

    .line 4506
    return v3
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 4138
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->sortOrder_:I

    return v0
.end method

.method public getStartIndex()J
    .locals 2

    .prologue
    .line 4154
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->startIndex_:J

    return-wide v0
.end method

.method public getUnfilteredResults()Z
    .locals 1

    .prologue
    .line 4289
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->unfilteredResults_:Z

    return v0
.end method

.method public getViewFilter()I
    .locals 1

    .prologue
    .line 4189
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->viewFilter_:I

    return v0
.end method

.method public hasAssetType()Z
    .locals 1

    .prologue
    .line 4019
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasAssetType:Z

    return v0
.end method

.method public hasCategoryId()Z
    .locals 1

    .prologue
    .line 4054
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasCategoryId:Z

    return v0
.end method

.method public hasNumEntries()Z
    .locals 1

    .prologue
    .line 4172
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasNumEntries:Z

    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 4037
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasQuery:Z

    return v0
.end method

.method public hasRankingType()Z
    .locals 1

    .prologue
    .line 4206
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRankingType:Z

    return v0
.end method

.method public hasReconstructVendingHistory()Z
    .locals 1

    .prologue
    .line 4273
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasReconstructVendingHistory:Z

    return v0
.end method

.method public hasRetrieveCarrierChannel()Z
    .locals 1

    .prologue
    .line 4223
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveCarrierChannel:Z

    return v0
.end method

.method public hasRetrieveExtendedInfo()Z
    .locals 1

    .prologue
    .line 4121
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveExtendedInfo:Z

    return v0
.end method

.method public hasRetrieveVendingHistory()Z
    .locals 1

    .prologue
    .line 4104
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveVendingHistory:Z

    return v0
.end method

.method public hasSortOrder()Z
    .locals 1

    .prologue
    .line 4137
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasSortOrder:Z

    return v0
.end method

.method public hasStartIndex()Z
    .locals 1

    .prologue
    .line 4155
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasStartIndex:Z

    return v0
.end method

.method public hasUnfilteredResults()Z
    .locals 1

    .prologue
    .line 4290
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasUnfilteredResults:Z

    return v0
.end method

.method public hasViewFilter()Z
    .locals 1

    .prologue
    .line 4188
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasViewFilter:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4514
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4515
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4519
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4520
    :sswitch_0
    return-object p0

    .line 4525
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4529
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4533
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setCategoryId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4537
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->addAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4541
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setRetrieveVendingHistory(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4545
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setRetrieveExtendedInfo(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4549
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setSortOrder(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4553
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setStartIndex(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4557
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setNumEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4561
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setViewFilter(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4565
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setRankingType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4569
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setRetrieveCarrierChannel(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4573
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->addPendingDownloadAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4577
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setReconstructVendingHistory(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto :goto_0

    .line 4581
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->setUnfilteredResults(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto/16 :goto_0

    .line 4585
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->addBadgeId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    goto/16 :goto_0

    .line 4515
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3999
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasAssetType:Z

    .line 4023
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->assetType_:I

    .line 4024
    return-object p0
.end method

.method public setCategoryId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasCategoryId:Z

    .line 4057
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->categoryId_:Ljava/lang/String;

    .line 4058
    return-object p0
.end method

.method public setNumEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasNumEntries:Z

    .line 4175
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->numEntries_:J

    .line 4176
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasQuery:Z

    .line 4040
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->query_:Ljava/lang/String;

    .line 4041
    return-object p0
.end method

.method public setRankingType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRankingType:Z

    .line 4209
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->rankingType_:Ljava/lang/String;

    .line 4210
    return-object p0
.end method

.method public setReconstructVendingHistory(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasReconstructVendingHistory:Z

    .line 4276
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->reconstructVendingHistory_:Z

    .line 4277
    return-object p0
.end method

.method public setRetrieveCarrierChannel(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveCarrierChannel:Z

    .line 4226
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveCarrierChannel_:Z

    .line 4227
    return-object p0
.end method

.method public setRetrieveExtendedInfo(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveExtendedInfo:Z

    .line 4124
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveExtendedInfo_:Z

    .line 4125
    return-object p0
.end method

.method public setRetrieveVendingHistory(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveVendingHistory:Z

    .line 4107
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->retrieveVendingHistory_:Z

    .line 4108
    return-object p0
.end method

.method public setSortOrder(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasSortOrder:Z

    .line 4141
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->sortOrder_:I

    .line 4142
    return-object p0
.end method

.method public setStartIndex(J)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasStartIndex:Z

    .line 4158
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->startIndex_:J

    .line 4159
    return-object p0
.end method

.method public setUnfilteredResults(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasUnfilteredResults:Z

    .line 4293
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->unfilteredResults_:Z

    .line 4294
    return-object p0
.end method

.method public setViewFilter(I)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasViewFilter:Z

    .line 4192
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->viewFilter_:I

    .line 4193
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4363
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasAssetType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4364
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getAssetType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4366
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasQuery()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4367
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4369
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasCategoryId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4370
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getCategoryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4372
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getAssetIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4373
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 4375
    .end local v0           #element:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveVendingHistory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4376
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRetrieveVendingHistory()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4378
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveExtendedInfo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4379
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRetrieveExtendedInfo()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4381
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasSortOrder()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4382
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getSortOrder()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4384
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasStartIndex()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4385
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getStartIndex()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 4387
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasNumEntries()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4388
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getNumEntries()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 4390
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasViewFilter()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4391
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getViewFilter()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4393
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRankingType()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4394
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRankingType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4396
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasRetrieveCarrierChannel()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4397
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getRetrieveCarrierChannel()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4399
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getPendingDownloadAssetIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4400
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 4402
    .end local v0           #element:Ljava/lang/String;
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasReconstructVendingHistory()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4403
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getReconstructVendingHistory()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4405
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->hasUnfilteredResults()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4406
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getUnfilteredResults()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4408
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;->getBadgeIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4409
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_2

    .line 4411
    .end local v0           #element:Ljava/lang/String;
    :cond_f
    return-void
.end method
