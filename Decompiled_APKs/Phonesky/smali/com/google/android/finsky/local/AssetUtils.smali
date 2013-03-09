.class public Lcom/google/android/finsky/local/AssetUtils;
.super Ljava/lang/Object;
.source "AssetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assetResponseToDeliveryData(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 8
    .parameter "assetResponse"

    .prologue
    .line 37
    new-instance v5, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v5}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    .line 38
    .local v5, result:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getInstallAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    move-result-object v4

    .line 39
    .local v4, installAsset:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getBlobUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setDownloadUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 40
    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setDownloadSize(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 41
    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getForwardLocked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setForwardLocked(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 42
    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getRefundTimeoutMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setRefundTimeout(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 43
    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setSignature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 44
    new-instance v6, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    invoke-direct {v6}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    move-result-object v1

    .line 47
    .local v1, cookie:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    invoke-virtual {v5, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->addDownloadAuthCookie(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getAdditionalFileList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    .line 49
    .local v2, fileMetadataProto:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    new-instance v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;-><init>()V

    .line 50
    .local v0, appFileMetadata:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    invoke-virtual {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getFileType()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->setFileType(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getVersionCode()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->setVersionCode(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    .line 52
    invoke-virtual {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getSize()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->setSize(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->setDownloadUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    .line 54
    invoke-virtual {v5, v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->addAdditionalFile(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 56
    .end local v0           #appFileMetadata:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    .end local v2           #fileMetadataProto:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    :cond_0
    return-object v5
.end method

.method public static extractObb(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;
    .locals 11
    .parameter "deliveryData"
    .parameter "packageName"
    .parameter "extractPatch"

    .prologue
    .line 68
    if-eqz p2, :cond_0

    const/4 v10, 0x1

    .line 70
    .local v10, seekFileType:I
    :goto_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getAdditionalFileCount()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 71
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getAdditionalFile(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    move-result-object v7

    .line 72
    .local v7, fileData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getFileType()I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 73
    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getVersionCode()I

    move-result v2

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->getSize()J

    move-result-wide v4

    const/4 v6, 0x4

    move v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/download/obb/ObbFactory;->create(ZLjava/lang/String;ILjava/lang/String;JI)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v9

    .line 78
    .end local v7           #fileData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    :goto_2
    return-object v9

    .line 68
    .end local v8           #i:I
    .end local v10           #seekFileType:I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 70
    .restart local v7       #fileData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    .restart local v8       #i:I
    .restart local v10       #seekFileType:I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 78
    .end local v7           #fileData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public static makeAssetId(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)Ljava/lang/String;
    .locals 2
    .parameter "appDetails"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/local/AssetUtils;->makeAssetId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeAssetId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "packageName"
    .parameter "versionCode"

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static totalDeliverySize(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;)J
    .locals 7
    .parameter "deliveryData"
    .parameter "packageName"

    .prologue
    const/4 v6, 0x4

    .line 86
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v2

    .line 87
    .local v2, result:J
    const/4 v4, 0x0

    invoke-static {p0, p1, v4}, Lcom/google/android/finsky/local/AssetUtils;->extractObb(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v0

    .line 88
    .local v0, mainObb:Lcom/google/android/finsky/download/obb/Obb;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 90
    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 93
    :cond_0
    const/4 v4, 0x1

    invoke-static {p0, p1, v4}, Lcom/google/android/finsky/local/AssetUtils;->extractObb(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v1

    .line 94
    .local v1, patchObb:Lcom/google/android/finsky/download/obb/Obb;
    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 96
    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 99
    :cond_1
    return-wide v2
.end method

.method public static totalDeliverySize(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)J
    .locals 13
    .parameter "appDetails"

    .prologue
    .line 107
    const-wide/16 v11, 0x0

    .line 108
    .local v11, result:J
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getFileCount()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 109
    invoke-virtual {p0, v9}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getFile(I)Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;

    move-result-object v7

    .line 110
    .local v7, file:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getFileType()I

    move-result v8

    .line 111
    .local v8, fileType:I
    packed-switch v8, :pswitch_data_0

    .line 125
    const-string v1, "Bad file type %d in %s entry# %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 113
    :pswitch_0
    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getSize()J

    move-result-wide v1

    add-long/2addr v11, v1

    .line 114
    goto :goto_1

    .line 117
    :pswitch_1
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1

    const/4 v0, 0x1

    .line 118
    .local v0, extractPatch:Z
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getVersionCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;->getSize()J

    move-result-wide v4

    const/4 v6, 0x4

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/download/obb/ObbFactory;->create(ZLjava/lang/String;ILjava/lang/String;JI)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v10

    .line 120
    .local v10, obb:Lcom/google/android/finsky/download/obb/Obb;
    invoke-interface {v10}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 121
    invoke-interface {v10}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v1

    add-long/2addr v11, v1

    goto :goto_1

    .line 117
    .end local v0           #extractPatch:Z
    .end local v10           #obb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 129
    .end local v7           #file:Lcom/google/android/finsky/remoting/protos/DocDetails$FileMetadata;
    .end local v8           #fileType:I
    :cond_2
    return-wide v11

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
