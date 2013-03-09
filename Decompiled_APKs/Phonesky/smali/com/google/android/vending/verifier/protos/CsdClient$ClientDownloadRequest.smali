.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientDownloadRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;,
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;,
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;,
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;,
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
    }
.end annotation


# instance fields
.field private androidId_:J

.field private apkInfo_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

.field private cachedSize:I

.field private clientAsn_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private digests_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

.field private downloadType_:I

.field private fileBasename_:Ljava/lang/String;

.field private hasAndroidId:Z

.field private hasApkInfo:Z

.field private hasDigests:Z

.field private hasDownloadType:Z

.field private hasFileBasename:Z

.field private hasLength:Z

.field private hasLocale:Z

.field private hasSignature:Z

.field private hasUrl:Z

.field private hasUserInitiated:Z

.field private length_:J

.field private locale_:Ljava/lang/String;

.field private resources_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;",
            ">;"
        }
    .end annotation
.end field

.field private signature_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

.field private url_:Ljava/lang/String;

.field private userInitiated_:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1020
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->url_:Ljava/lang/String;

    .line 1037
    iput-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->digests_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    .line 1057
    iput-wide v3, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->length_:J

    .line 1073
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources_:Ljava/util/List;

    .line 1107
    iput-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->signature_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    .line 1127
    iput-boolean v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->userInitiated_:Z

    .line 1143
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn_:Ljava/util/List;

    .line 1177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->fileBasename_:Ljava/lang/String;

    .line 1194
    iput v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->downloadType_:I

    .line 1211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->locale_:Ljava/lang/String;

    .line 1228
    iput-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->apkInfo_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    .line 1248
    iput-wide v3, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->androidId_:J

    .line 1330
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addClientAsn(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1160
    if-nez p1, :cond_0

    .line 1161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn_:Ljava/util/List;

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    return-object p0
.end method

.method public addResources(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1090
    if-nez p1, :cond_0

    .line 1091
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources_:Ljava/util/List;

    .line 1096
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    return-object p0
.end method

.method public getAndroidId()J
    .locals 2

    .prologue
    .line 1249
    iget-wide v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->androidId_:J

    return-wide v0
.end method

.method public getApkInfo()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->apkInfo_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1333
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getSerializedSize()I

    .line 1337
    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->cachedSize:I

    return v0
.end method

.method public getClientAsnList()Ljava/util/List;
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
    .line 1146
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn_:Ljava/util/List;

    return-object v0
.end method

.method public getDigests()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->digests_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    return-object v0
.end method

.method public getDownloadType()I
    .locals 1

    .prologue
    .line 1196
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->downloadType_:I

    return v0
.end method

.method public getFileBasename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->fileBasename_:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 1058
    iget-wide v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->length_:J

    return-wide v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1342
    const/4 v3, 0x0

    .line 1343
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1344
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1347
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDigests()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1348
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getDigests()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1351
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLength()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1352
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getLength()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1355
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getResourcesList()Ljava/util/List;

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

    check-cast v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    .line 1356
    .local v1, element:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    const/4 v4, 0x4

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 1359
    .end local v1           #element:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasSignature()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1360
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getSignature()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1363
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUserInitiated()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1364
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getUserInitiated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1368
    :cond_5
    const/4 v0, 0x0

    .line 1369
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getClientAsnList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1370
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 1373
    .end local v1           #element:Ljava/lang/String;
    :cond_6
    add-int/2addr v3, v0

    .line 1374
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getClientAsnList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1376
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasFileBasename()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1377
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getFileBasename()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1380
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDownloadType()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1381
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getDownloadType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1384
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLocale()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1385
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1388
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasApkInfo()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1389
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getApkInfo()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1392
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasAndroidId()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1393
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getAndroidId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1396
    :cond_b
    iput v3, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->cachedSize:I

    .line 1397
    return v3
.end method

.method public getSignature()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->signature_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInitiated()Z
    .locals 1

    .prologue
    .line 1128
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->userInitiated_:Z

    return v0
.end method

.method public hasAndroidId()Z
    .locals 1

    .prologue
    .line 1250
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasAndroidId:Z

    return v0
.end method

.method public hasApkInfo()Z
    .locals 1

    .prologue
    .line 1229
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasApkInfo:Z

    return v0
.end method

.method public hasDigests()Z
    .locals 1

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDigests:Z

    return v0
.end method

.method public hasDownloadType()Z
    .locals 1

    .prologue
    .line 1195
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDownloadType:Z

    return v0
.end method

.method public hasFileBasename()Z
    .locals 1

    .prologue
    .line 1179
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasFileBasename:Z

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .prologue
    .line 1059
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLength:Z

    return v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 1213
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLocale:Z

    return v0
.end method

.method public hasSignature()Z
    .locals 1

    .prologue
    .line 1108
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasSignature:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 1022
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUrl:Z

    return v0
.end method

.method public hasUserInitiated()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUserInitiated:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1405
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1406
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1410
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1411
    :sswitch_0
    return-object p0

    .line 1416
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setUrl(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0

    .line 1420
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    invoke-direct {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;-><init>()V

    .line 1421
    .local v1, value:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1422
    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setDigests(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0

    .line 1426
    .end local v1           #value:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setLength(J)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0

    .line 1430
    :sswitch_4
    new-instance v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    invoke-direct {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;-><init>()V

    .line 1431
    .local v1, value:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1432
    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->addResources(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0

    .line 1436
    .end local v1           #value:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    :sswitch_5
    new-instance v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    invoke-direct {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;-><init>()V

    .line 1437
    .local v1, value:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1438
    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setSignature(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0

    .line 1442
    .end local v1           #value:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setUserInitiated(Z)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0

    .line 1446
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->addClientAsn(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0

    .line 1450
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setFileBasename(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0

    .line 1454
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setDownloadType(I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0

    .line 1458
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setLocale(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0

    .line 1462
    :sswitch_b
    new-instance v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    invoke-direct {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;-><init>()V

    .line 1463
    .local v1, value:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1464
    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setApkInfo(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0

    .line 1468
    .end local v1           #value:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setAndroidId(J)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0

    .line 1406
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x69 -> :sswitch_c
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidId(J)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasAndroidId:Z

    .line 1253
    iput-wide p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->androidId_:J

    .line 1254
    return-object p0
.end method

.method public setApkInfo(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1232
    if-nez p1, :cond_0

    .line 1233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1235
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasApkInfo:Z

    .line 1236
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->apkInfo_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    .line 1237
    return-object p0
.end method

.method public setDigests(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1041
    if-nez p1, :cond_0

    .line 1042
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1044
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDigests:Z

    .line 1045
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->digests_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    .line 1046
    return-object p0
.end method

.method public setDownloadType(I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDownloadType:Z

    .line 1199
    iput p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->downloadType_:I

    .line 1200
    return-object p0
.end method

.method public setFileBasename(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasFileBasename:Z

    .line 1182
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->fileBasename_:Ljava/lang/String;

    .line 1183
    return-object p0
.end method

.method public setLength(J)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1061
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLength:Z

    .line 1062
    iput-wide p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->length_:J

    .line 1063
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLocale:Z

    .line 1216
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->locale_:Ljava/lang/String;

    .line 1217
    return-object p0
.end method

.method public setSignature(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1111
    if-nez p1, :cond_0

    .line 1112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1114
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasSignature:Z

    .line 1115
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->signature_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    .line 1116
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1024
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUrl:Z

    .line 1025
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->url_:Ljava/lang/String;

    .line 1026
    return-object p0
.end method

.method public setUserInitiated(Z)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUserInitiated:Z

    .line 1132
    iput-boolean p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->userInitiated_:Z

    .line 1133
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
    .line 1292
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1293
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1295
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDigests()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1296
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getDigests()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1298
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLength()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1299
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getLength()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1301
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getResourcesList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    .line 1302
    .local v0, element:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1304
    .end local v0           #element:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasSignature()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1305
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getSignature()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1307
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUserInitiated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1308
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getUserInitiated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1310
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getClientAsnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1311
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 1313
    .end local v0           #element:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasFileBasename()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1314
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getFileBasename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1316
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDownloadType()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1317
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getDownloadType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1319
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLocale()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1320
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1322
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasApkInfo()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1323
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getApkInfo()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1325
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasAndroidId()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1326
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getAndroidId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 1328
    :cond_b
    return-void
.end method
