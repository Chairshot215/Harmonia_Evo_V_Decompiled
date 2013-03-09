.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallAsset"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private assetName_:Ljava/lang/String;

.field private assetPackage_:Ljava/lang/String;

.field private assetSignature_:Ljava/lang/String;

.field private assetSize_:J

.field private assetType_:Ljava/lang/String;

.field private blobUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private downloadAuthCookieName_:Ljava/lang/String;

.field private downloadAuthCookieValue_:Ljava/lang/String;

.field private forwardLocked_:Z

.field private hasAssetId:Z

.field private hasAssetName:Z

.field private hasAssetPackage:Z

.field private hasAssetSignature:Z

.field private hasAssetSize:Z

.field private hasAssetType:Z

.field private hasBlobUrl:Z

.field private hasDownloadAuthCookieName:Z

.field private hasDownloadAuthCookieValue:Z

.field private hasForwardLocked:Z

.field private hasPostInstallRefundWindowMillis:Z

.field private hasRefundTimeoutMillis:Z

.field private hasSecured:Z

.field private hasVersionCode:Z

.field private postInstallRefundWindowMillis_:J

.field private refundTimeoutMillis_:J

.field private secured_:Z

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 12858
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12863
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetId_:Ljava/lang/String;

    .line 12880
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetName_:Ljava/lang/String;

    .line 12897
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetType_:Ljava/lang/String;

    .line 12914
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetPackage_:Ljava/lang/String;

    .line 12931
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->blobUrl_:Ljava/lang/String;

    .line 12948
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSignature_:Ljava/lang/String;

    .line 12965
    iput-wide v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSize_:J

    .line 12982
    iput-wide v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis_:J

    .line 12999
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked_:Z

    .line 13016
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->secured_:Z

    .line 13033
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode_:I

    .line 13050
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName_:Ljava/lang/String;

    .line 13067
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue_:Ljava/lang/String;

    .line 13084
    iput-wide v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->postInstallRefundWindowMillis_:J

    .line 13175
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->cachedSize:I

    .line 12858
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12864
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12881
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12915
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetPackage_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12949
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSignature_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetSize()J
    .locals 2

    .prologue
    .line 12966
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSize_:J

    return-wide v0
.end method

.method public getAssetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12898
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetType_:Ljava/lang/String;

    return-object v0
.end method

.method public getBlobUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12932
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->blobUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 13178
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->cachedSize:I

    if-gez v0, :cond_0

    .line 13180
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getSerializedSize()I

    .line 13182
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->cachedSize:I

    return v0
.end method

.method public getDownloadAuthCookieName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13051
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadAuthCookieValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13068
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardLocked()Z
    .locals 1

    .prologue
    .line 13000
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked_:Z

    return v0
.end method

.method public getPostInstallRefundWindowMillis()J
    .locals 2

    .prologue
    .line 13085
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->postInstallRefundWindowMillis_:J

    return-wide v0
.end method

.method public getRefundTimeoutMillis()J
    .locals 2

    .prologue
    .line 12983
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis_:J

    return-wide v0
.end method

.method public getSecured()Z
    .locals 1

    .prologue
    .line 13017
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->secured_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 13187
    const/4 v0, 0x0

    .line 13188
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13189
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13192
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13193
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13196
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13197
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13200
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetPackage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13201
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13204
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasBlobUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13205
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getBlobUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13208
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSignature()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13209
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13212
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSize()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13213
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13216
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13217
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getRefundTimeoutMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13220
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 13221
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getForwardLocked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13224
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 13225
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getSecured()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13228
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 13229
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13232
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 13233
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13236
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 13237
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13240
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 13241
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getPostInstallRefundWindowMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13244
    :cond_d
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->cachedSize:I

    .line 13245
    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 13034
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode_:I

    return v0
.end method

.method public hasAssetId()Z
    .locals 1

    .prologue
    .line 12865
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetId:Z

    return v0
.end method

.method public hasAssetName()Z
    .locals 1

    .prologue
    .line 12882
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetName:Z

    return v0
.end method

.method public hasAssetPackage()Z
    .locals 1

    .prologue
    .line 12916
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetPackage:Z

    return v0
.end method

.method public hasAssetSignature()Z
    .locals 1

    .prologue
    .line 12950
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSignature:Z

    return v0
.end method

.method public hasAssetSize()Z
    .locals 1

    .prologue
    .line 12967
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSize:Z

    return v0
.end method

.method public hasAssetType()Z
    .locals 1

    .prologue
    .line 12899
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetType:Z

    return v0
.end method

.method public hasBlobUrl()Z
    .locals 1

    .prologue
    .line 12933
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasBlobUrl:Z

    return v0
.end method

.method public hasDownloadAuthCookieName()Z
    .locals 1

    .prologue
    .line 13052
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName:Z

    return v0
.end method

.method public hasDownloadAuthCookieValue()Z
    .locals 1

    .prologue
    .line 13069
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue:Z

    return v0
.end method

.method public hasForwardLocked()Z
    .locals 1

    .prologue
    .line 13001
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked:Z

    return v0
.end method

.method public hasPostInstallRefundWindowMillis()Z
    .locals 1

    .prologue
    .line 13086
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis:Z

    return v0
.end method

.method public hasRefundTimeoutMillis()Z
    .locals 1

    .prologue
    .line 12984
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis:Z

    return v0
.end method

.method public hasSecured()Z
    .locals 1

    .prologue
    .line 13018
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured:Z

    return v0
.end method

.method public hasVersionCode()Z
    .locals 1

    .prologue
    .line 13035
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13253
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 13254
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 13258
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13259
    :sswitch_0
    return-object p0

    .line 13264
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13268
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setAssetName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13272
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setAssetType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13276
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setAssetPackage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13280
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setBlobUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13284
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setAssetSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13288
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setAssetSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13292
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setRefundTimeoutMillis(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13296
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setForwardLocked(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13300
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setSecured(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13304
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13308
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setDownloadAuthCookieName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13312
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setDownloadAuthCookieValue(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13316
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setPostInstallRefundWindowMillis(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13254
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
        0x50 -> :sswitch_9
        0x58 -> :sswitch_a
        0x60 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x80 -> :sswitch_e
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
    .line 12856
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 12867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetId:Z

    .line 12868
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetId_:Ljava/lang/String;

    .line 12869
    return-object p0
.end method

.method public setAssetName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 12884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetName:Z

    .line 12885
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetName_:Ljava/lang/String;

    .line 12886
    return-object p0
.end method

.method public setAssetPackage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 12918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetPackage:Z

    .line 12919
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetPackage_:Ljava/lang/String;

    .line 12920
    return-object p0
.end method

.method public setAssetSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 12952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSignature:Z

    .line 12953
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSignature_:Ljava/lang/String;

    .line 12954
    return-object p0
.end method

.method public setAssetSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 12969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSize:Z

    .line 12970
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSize_:J

    .line 12971
    return-object p0
.end method

.method public setAssetType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 12901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetType:Z

    .line 12902
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetType_:Ljava/lang/String;

    .line 12903
    return-object p0
.end method

.method public setBlobUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 12935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasBlobUrl:Z

    .line 12936
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->blobUrl_:Ljava/lang/String;

    .line 12937
    return-object p0
.end method

.method public setDownloadAuthCookieName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 13054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName:Z

    .line 13055
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName_:Ljava/lang/String;

    .line 13056
    return-object p0
.end method

.method public setDownloadAuthCookieValue(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 13071
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue:Z

    .line 13072
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue_:Ljava/lang/String;

    .line 13073
    return-object p0
.end method

.method public setForwardLocked(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 13003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked:Z

    .line 13004
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked_:Z

    .line 13005
    return-object p0
.end method

.method public setPostInstallRefundWindowMillis(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 13088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis:Z

    .line 13089
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->postInstallRefundWindowMillis_:J

    .line 13090
    return-object p0
.end method

.method public setRefundTimeoutMillis(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 12986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis:Z

    .line 12987
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis_:J

    .line 12988
    return-object p0
.end method

.method public setSecured(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 13020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured:Z

    .line 13021
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->secured_:Z

    .line 13022
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 1
    .parameter "value"

    .prologue
    .line 13037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode:Z

    .line 13038
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode_:I

    .line 13039
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13131
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13132
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13134
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13135
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13137
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13138
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13140
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetPackage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13141
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13143
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasBlobUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13144
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getBlobUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13146
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSignature()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13147
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13149
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSize()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13150
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetSize()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 13152
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13153
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getRefundTimeoutMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 13155
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13156
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getForwardLocked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 13158
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13159
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getSecured()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 13161
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 13162
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13164
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 13165
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13167
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 13168
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13170
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 13171
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getPostInstallRefundWindowMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 13173
    :cond_d
    return-void
.end method
