.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentSyncRequestProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;,
        Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    }
.end annotation


# instance fields
.field private assetInstallState_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private hasIncremental:Z

.field private hasSideloadedAppCount:Z

.field private incremental_:Z

.field private sideloadedAppCount_:I

.field private systemApp_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 732
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1199
    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->incremental_:Z

    .line 1216
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->sideloadedAppCount_:I

    .line 1232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState_:Ljava/util/List;

    .line 1265
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->systemApp_:Ljava/util/List;

    .line 1332
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->cachedSize:I

    .line 732
    return-void
.end method


# virtual methods
.method public addAssetInstallState(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1249
    if-nez p1, :cond_0

    .line 1250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState_:Ljava/util/List;

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    return-object p0
.end method

.method public addSystemApp(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1282
    if-nez p1, :cond_0

    .line 1283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->systemApp_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->systemApp_:Ljava/util/List;

    .line 1288
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->systemApp_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1289
    return-object p0
.end method

.method public getAssetInstallStateCount()I
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAssetInstallStateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1335
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 1337
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->getSerializedSize()I

    .line 1339
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->cachedSize:I

    return v0
.end method

.method public getIncremental()Z
    .locals 1

    .prologue
    .line 1200
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->incremental_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1344
    const/4 v2, 0x0

    .line 1345
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->hasIncremental()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1346
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->getIncremental()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1349
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->getAssetInstallStateList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 1350
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1353
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->getSystemAppList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    .line 1354
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    const/16 v3, 0xa

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 1357
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->hasSideloadedAppCount()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1358
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->getSideloadedAppCount()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1361
    :cond_3
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->cachedSize:I

    .line 1362
    return v2
.end method

.method public getSideloadedAppCount()I
    .locals 1

    .prologue
    .line 1217
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->sideloadedAppCount_:I

    return v0
.end method

.method public getSystemAppCount()I
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->systemApp_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSystemAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->systemApp_:Ljava/util/List;

    return-object v0
.end method

.method public hasIncremental()Z
    .locals 1

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->hasIncremental:Z

    return v0
.end method

.method public hasSideloadedAppCount()Z
    .locals 1

    .prologue
    .line 1218
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->hasSideloadedAppCount:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1370
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1371
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1375
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1376
    :sswitch_0
    return-object p0

    .line 1381
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->setIncremental(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    goto :goto_0

    .line 1385
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;-><init>()V

    .line 1386
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 1387
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->addAssetInstallState(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    goto :goto_0

    .line 1391
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;-><init>()V

    .line 1392
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 1393
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->addSystemApp(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    goto :goto_0

    .line 1397
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->setSideloadedAppCount(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    goto :goto_0

    .line 1371
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x13 -> :sswitch_2
        0x53 -> :sswitch_3
        0x70 -> :sswitch_4
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
    .line 730
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setIncremental(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->hasIncremental:Z

    .line 1204
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->incremental_:Z

    .line 1205
    return-object p0
.end method

.method public setSideloadedAppCount(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->hasSideloadedAppCount:Z

    .line 1221
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->sideloadedAppCount_:I

    .line 1222
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->hasIncremental()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->getIncremental()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1321
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->getAssetInstallStateList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 1322
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1324
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->getSystemAppList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    .line 1325
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1327
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->hasSideloadedAppCount()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1328
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->getSideloadedAppCount()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1330
    :cond_3
    return-void
.end method
