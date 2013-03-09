.class public final Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "AndroidAppDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidAppDeliveryData"
.end annotation


# instance fields
.field private additionalFile_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private downloadAuthCookie_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;",
            ">;"
        }
    .end annotation
.end field

.field private downloadSize_:J

.field private downloadUrl_:Ljava/lang/String;

.field private encryptionParams_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

.field private forwardLocked_:Z

.field private hasDownloadSize:Z

.field private hasDownloadUrl:Z

.field private hasEncryptionParams:Z

.field private hasForwardLocked:Z

.field private hasImmediateStartNeeded:Z

.field private hasPatchData:Z

.field private hasPostInstallRefundWindowMillis:Z

.field private hasRefundTimeout:Z

.field private hasServerInitiated:Z

.field private hasSignature:Z

.field private immediateStartNeeded_:Z

.field private patchData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

.field private postInstallRefundWindowMillis_:J

.field private refundTimeout_:J

.field private serverInitiated_:Z

.field private signature_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 920
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 925
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize_:J

    .line 942
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature_:Ljava/lang/String;

    .line 959
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl_:Ljava/lang/String;

    .line 976
    iput-object v4, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    .line 995
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    .line 1028
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    .line 1062
    iput-boolean v3, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked_:Z

    .line 1079
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout_:J

    .line 1096
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->postInstallRefundWindowMillis_:J

    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated_:Z

    .line 1130
    iput-boolean v3, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded_:Z

    .line 1147
    iput-object v4, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    .line 1235
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->cachedSize:I

    .line 920
    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1377
    new-instance v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object v0
.end method


# virtual methods
.method public addAdditionalFile(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1012
    if-nez p1, :cond_0

    .line 1013
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    .line 1018
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    return-object p0
.end method

.method public addDownloadAuthCookie(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1045
    if-nez p1, :cond_0

    .line 1046
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    return-object p0
.end method

.method public getAdditionalFile(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    .locals 1
    .parameter "index"

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    return-object v0
.end method

.method public getAdditionalFileCount()I
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdditionalFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1238
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->cachedSize:I

    if-gez v0, :cond_0

    .line 1240
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getSerializedSize()I

    .line 1242
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->cachedSize:I

    return v0
.end method

.method public getDownloadAuthCookie(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    .locals 1
    .parameter "index"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    return-object v0
.end method

.method public getDownloadAuthCookieCount()I
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDownloadAuthCookieList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie_:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadSize()J
    .locals 2

    .prologue
    .line 926
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize_:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionParams()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    return-object v0
.end method

.method public getForwardLocked()Z
    .locals 1

    .prologue
    .line 1063
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked_:Z

    return v0
.end method

.method public getImmediateStartNeeded()Z
    .locals 1

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded_:Z

    return v0
.end method

.method public getPatchData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    return-object v0
.end method

.method public getPostInstallRefundWindowMillis()J
    .locals 2

    .prologue
    .line 1097
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->postInstallRefundWindowMillis_:J

    return-wide v0
.end method

.method public getRefundTimeout()J
    .locals 2

    .prologue
    .line 1080
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1247
    const/4 v2, 0x0

    .line 1248
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1249
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1252
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1253
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1256
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1257
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1260
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getAdditionalFileList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    .line 1261
    .local v0, element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1264
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadAuthCookieList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    .line 1265
    .local v0, element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 1268
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1269
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getForwardLocked()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1272
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1273
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getRefundTimeout()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1276
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1277
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getServerInitiated()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1280
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1281
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getPostInstallRefundWindowMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1284
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1285
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getImmediateStartNeeded()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1288
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPatchData()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1289
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getPatchData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1292
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasEncryptionParams()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1293
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getEncryptionParams()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1296
    :cond_b
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->cachedSize:I

    .line 1297
    return v2
.end method

.method public getServerInitiated()Z
    .locals 1

    .prologue
    .line 1114
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated_:Z

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDownloadSize()Z
    .locals 1

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize:Z

    return v0
.end method

.method public hasDownloadUrl()Z
    .locals 1

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl:Z

    return v0
.end method

.method public hasEncryptionParams()Z
    .locals 1

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasEncryptionParams:Z

    return v0
.end method

.method public hasForwardLocked()Z
    .locals 1

    .prologue
    .line 1064
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked:Z

    return v0
.end method

.method public hasImmediateStartNeeded()Z
    .locals 1

    .prologue
    .line 1132
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded:Z

    return v0
.end method

.method public hasPatchData()Z
    .locals 1

    .prologue
    .line 1148
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPatchData:Z

    return v0
.end method

.method public hasPostInstallRefundWindowMillis()Z
    .locals 1

    .prologue
    .line 1098
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis:Z

    return v0
.end method

.method public hasRefundTimeout()Z
    .locals 1

    .prologue
    .line 1081
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout:Z

    return v0
.end method

.method public hasServerInitiated()Z
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated:Z

    return v0
.end method

.method public hasSignature()Z
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1305
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1306
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1310
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1311
    :sswitch_0
    return-object p0

    .line 1316
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setDownloadSize(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1320
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setSignature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1324
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setDownloadUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1328
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;-><init>()V

    .line 1329
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1330
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->addAdditionalFile(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1334
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;-><init>()V

    .line 1335
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1336
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->addDownloadAuthCookie(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1340
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setForwardLocked(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1344
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setRefundTimeout(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1348
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setServerInitiated(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1352
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setPostInstallRefundWindowMillis(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1356
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setImmediateStartNeeded(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1360
    :sswitch_b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;-><init>()V

    .line 1361
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1362
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setPatchData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1366
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    :sswitch_c
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;-><init>()V

    .line 1367
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1368
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setEncryptionParams(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    goto :goto_0

    .line 1306
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
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
    .line 917
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v0

    return-object v0
.end method

.method public setDownloadSize(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "value"

    .prologue
    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize:Z

    .line 930
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize_:J

    .line 931
    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "value"

    .prologue
    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl:Z

    .line 964
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl_:Ljava/lang/String;

    .line 965
    return-object p0
.end method

.method public setEncryptionParams(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "value"

    .prologue
    .line 980
    if-nez p1, :cond_0

    .line 981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 983
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasEncryptionParams:Z

    .line 984
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    .line 985
    return-object p0
.end method

.method public setForwardLocked(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1066
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked:Z

    .line 1067
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked_:Z

    .line 1068
    return-object p0
.end method

.method public setImmediateStartNeeded(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded:Z

    .line 1135
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded_:Z

    .line 1136
    return-object p0
.end method

.method public setPatchData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1151
    if-nez p1, :cond_0

    .line 1152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPatchData:Z

    .line 1155
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    .line 1156
    return-object p0
.end method

.method public setPostInstallRefundWindowMillis(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis:Z

    .line 1101
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->postInstallRefundWindowMillis_:J

    .line 1102
    return-object p0
.end method

.method public setRefundTimeout(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout:Z

    .line 1084
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout_:J

    .line 1085
    return-object p0
.end method

.method public setServerInitiated(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated:Z

    .line 1118
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated_:Z

    .line 1119
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .parameter "value"

    .prologue
    .line 946
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature:Z

    .line 947
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature_:Ljava/lang/String;

    .line 948
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
    .line 1197
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1198
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1200
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1201
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1203
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1204
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1206
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getAdditionalFileList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    .line 1207
    .local v0, element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1209
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadAuthCookieList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    .line 1210
    .local v0, element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1212
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1213
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getForwardLocked()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1215
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1216
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getRefundTimeout()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1218
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1219
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getServerInitiated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1221
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1222
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getPostInstallRefundWindowMillis()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1224
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1225
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getImmediateStartNeeded()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1227
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPatchData()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1228
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getPatchData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1230
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasEncryptionParams()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1231
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getEncryptionParams()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1233
    :cond_b
    return-void
.end method
