.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetMarketMetadataResponseProto"
.end annotation


# instance fields
.field private billingEventsEnabled_:Z

.field private billingParameter_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private commentPostEnabled_:Z

.field private hasBillingEventsEnabled:Z

.field private hasCommentPostEnabled:Z

.field private hasInAppBillingEnabled:Z

.field private hasInAppBillingMaxApiVersion:Z

.field private hasLatestClientUrl:Z

.field private hasLatestClientVersionCode:Z

.field private hasPaidAppsEnabled:Z

.field private hasWarningMessage:Z

.field private inAppBillingEnabled_:Z

.field private inAppBillingMaxApiVersion_:I

.field private latestClientUrl_:Ljava/lang/String;

.field private latestClientVersionCode_:I

.field private paidAppsEnabled_:Z

.field private warningMessage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 16067
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 16072
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->latestClientVersionCode_:I

    .line 16089
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->latestClientUrl_:Ljava/lang/String;

    .line 16106
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->paidAppsEnabled_:Z

    .line 16122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingParameter_:Ljava/util/List;

    .line 16156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->commentPostEnabled_:Z

    .line 16173
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingEventsEnabled_:Z

    .line 16190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->warningMessage_:Ljava/lang/String;

    .line 16207
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->inAppBillingEnabled_:Z

    .line 16224
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->inAppBillingMaxApiVersion_:I

    .line 16292
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->cachedSize:I

    .line 16067
    return-void
.end method


# virtual methods
.method public addBillingParameter(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16139
    if-nez p1, :cond_0

    .line 16140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16142
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingParameter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingParameter_:Ljava/util/List;

    .line 16145
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingParameter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16146
    return-object p0
.end method

.method public getBillingEventsEnabled()Z
    .locals 1

    .prologue
    .line 16174
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingEventsEnabled_:Z

    return v0
.end method

.method public getBillingParameterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16125
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingParameter_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 16295
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 16297
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getSerializedSize()I

    .line 16299
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->cachedSize:I

    return v0
.end method

.method public getCommentPostEnabled()Z
    .locals 1

    .prologue
    .line 16157
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->commentPostEnabled_:Z

    return v0
.end method

.method public getInAppBillingEnabled()Z
    .locals 1

    .prologue
    .line 16208
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->inAppBillingEnabled_:Z

    return v0
.end method

.method public getInAppBillingMaxApiVersion()I
    .locals 1

    .prologue
    .line 16225
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->inAppBillingMaxApiVersion_:I

    return v0
.end method

.method public getLatestClientUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16090
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->latestClientUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestClientVersionCode()I
    .locals 1

    .prologue
    .line 16073
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->latestClientVersionCode_:I

    return v0
.end method

.method public getPaidAppsEnabled()Z
    .locals 1

    .prologue
    .line 16107
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->paidAppsEnabled_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 16304
    const/4 v2, 0x0

    .line 16305
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientVersionCode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16306
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientVersionCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 16309
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16310
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 16313
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasPaidAppsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16314
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getPaidAppsEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 16317
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getBillingParameterList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    .line 16318
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 16321
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasCommentPostEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16322
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getCommentPostEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 16325
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasBillingEventsEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 16326
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getBillingEventsEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 16329
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasWarningMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 16330
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getWarningMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 16333
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 16334
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getInAppBillingEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 16337
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingMaxApiVersion()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 16338
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getInAppBillingMaxApiVersion()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 16341
    :cond_8
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->cachedSize:I

    .line 16342
    return v2
.end method

.method public getWarningMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16191
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->warningMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBillingEventsEnabled()Z
    .locals 1

    .prologue
    .line 16175
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasBillingEventsEnabled:Z

    return v0
.end method

.method public hasCommentPostEnabled()Z
    .locals 1

    .prologue
    .line 16158
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasCommentPostEnabled:Z

    return v0
.end method

.method public hasInAppBillingEnabled()Z
    .locals 1

    .prologue
    .line 16209
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingEnabled:Z

    return v0
.end method

.method public hasInAppBillingMaxApiVersion()Z
    .locals 1

    .prologue
    .line 16226
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingMaxApiVersion:Z

    return v0
.end method

.method public hasLatestClientUrl()Z
    .locals 1

    .prologue
    .line 16091
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientUrl:Z

    return v0
.end method

.method public hasLatestClientVersionCode()Z
    .locals 1

    .prologue
    .line 16074
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientVersionCode:Z

    return v0
.end method

.method public hasPaidAppsEnabled()Z
    .locals 1

    .prologue
    .line 16108
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasPaidAppsEnabled:Z

    return v0
.end method

.method public hasWarningMessage()Z
    .locals 1

    .prologue
    .line 16192
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasWarningMessage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16350
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 16351
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 16355
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16356
    :sswitch_0
    return-object p0

    .line 16361
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setLatestClientVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 16365
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setLatestClientUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 16369
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setPaidAppsEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 16373
    :sswitch_4
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;-><init>()V

    .line 16374
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 16375
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->addBillingParameter(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 16379
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setCommentPostEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 16383
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setBillingEventsEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 16387
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setWarningMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 16391
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setInAppBillingEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 16395
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setInAppBillingMaxApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 16351
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
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
    .line 16065
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setBillingEventsEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasBillingEventsEnabled:Z

    .line 16178
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingEventsEnabled_:Z

    .line 16179
    return-object p0
.end method

.method public setCommentPostEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasCommentPostEnabled:Z

    .line 16161
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->commentPostEnabled_:Z

    .line 16162
    return-object p0
.end method

.method public setInAppBillingEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingEnabled:Z

    .line 16212
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->inAppBillingEnabled_:Z

    .line 16213
    return-object p0
.end method

.method public setInAppBillingMaxApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingMaxApiVersion:Z

    .line 16229
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->inAppBillingMaxApiVersion_:I

    .line 16230
    return-object p0
.end method

.method public setLatestClientUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientUrl:Z

    .line 16094
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->latestClientUrl_:Ljava/lang/String;

    .line 16095
    return-object p0
.end method

.method public setLatestClientVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientVersionCode:Z

    .line 16077
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->latestClientVersionCode_:I

    .line 16078
    return-object p0
.end method

.method public setPaidAppsEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasPaidAppsEnabled:Z

    .line 16111
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->paidAppsEnabled_:Z

    .line 16112
    return-object p0
.end method

.method public setWarningMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasWarningMessage:Z

    .line 16195
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->warningMessage_:Ljava/lang/String;

    .line 16196
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
    .line 16263
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientVersionCode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16264
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientVersionCode()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 16266
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16267
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16269
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasPaidAppsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16270
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getPaidAppsEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 16272
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getBillingParameterList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    .line 16273
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 16275
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasCommentPostEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16276
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getCommentPostEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 16278
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasBillingEventsEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16279
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getBillingEventsEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 16281
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasWarningMessage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16282
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getWarningMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16284
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16285
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getInAppBillingEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 16287
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingMaxApiVersion()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 16288
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getInAppBillingMaxApiVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 16290
    :cond_8
    return-void
.end method
