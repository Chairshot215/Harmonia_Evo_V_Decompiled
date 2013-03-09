.class public final Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseStatusResponse"
.end annotation


# instance fields
.field private appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

.field private briefMessage_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAppDeliveryData:Z

.field private hasBriefMessage:Z

.field private hasInfoUrl:Z

.field private hasLibraryUpdate:Z

.field private hasRejectedInstrument:Z

.field private hasStatus:Z

.field private hasStatusMsg:Z

.field private hasStatusTitle:Z

.field private infoUrl_:Ljava/lang/String;

.field private libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

.field private rejectedInstrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private statusMsg_:Ljava/lang/String;

.field private statusTitle_:Ljava/lang/String;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2282
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2293
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->status_:I

    .line 2310
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusMsg_:Ljava/lang/String;

    .line 2327
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusTitle_:Ljava/lang/String;

    .line 2344
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->briefMessage_:Ljava/lang/String;

    .line 2361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->infoUrl_:Ljava/lang/String;

    .line 2378
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 2398
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->rejectedInstrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 2418
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 2491
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    .line 2282
    return-void
.end method


# virtual methods
.method public getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object v0
.end method

.method public getBriefMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->briefMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2494
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 2496
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getSerializedSize()I

    .line 2498
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    return v0
.end method

.method public getInfoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->infoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 1

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    return-object v0
.end method

.method public getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .locals 1

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->rejectedInstrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2503
    const/4 v0, 0x0

    .line 2504
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2505
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2508
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusMsg()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2509
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2512
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusTitle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2513
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2516
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasBriefMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2517
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getBriefMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2520
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasInfoUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2521
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getInfoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2524
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasLibraryUpdate()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2525
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2528
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasRejectedInstrument()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2529
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2532
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasAppDeliveryData()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2533
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2536
    :cond_7
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    .line 2537
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 2295
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->status_:I

    return v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusMsg_:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppDeliveryData()Z
    .locals 1

    .prologue
    .line 2419
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasAppDeliveryData:Z

    return v0
.end method

.method public hasBriefMessage()Z
    .locals 1

    .prologue
    .line 2346
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasBriefMessage:Z

    return v0
.end method

.method public hasInfoUrl()Z
    .locals 1

    .prologue
    .line 2363
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasInfoUrl:Z

    return v0
.end method

.method public hasLibraryUpdate()Z
    .locals 1

    .prologue
    .line 2379
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasLibraryUpdate:Z

    return v0
.end method

.method public hasRejectedInstrument()Z
    .locals 1

    .prologue
    .line 2399
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasRejectedInstrument:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 2294
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatus:Z

    return v0
.end method

.method public hasStatusMsg()Z
    .locals 1

    .prologue
    .line 2312
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusMsg:Z

    return v0
.end method

.method public hasStatusTitle()Z
    .locals 1

    .prologue
    .line 2329
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2545
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2546
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2550
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2551
    :sswitch_0
    return-object p0

    .line 2556
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2560
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setStatusMsg(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2564
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setStatusTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2568
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setBriefMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2572
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setInfoUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2576
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;-><init>()V

    .line 2577
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2578
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2582
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    .line 2583
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2584
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setRejectedInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2588
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    .line 2589
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2590
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setAppDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2546
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
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
    .line 2279
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAppDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 2422
    if-nez p1, :cond_0

    .line 2423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2425
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasAppDeliveryData:Z

    .line 2426
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 2427
    return-object p0
.end method

.method public setBriefMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 2348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasBriefMessage:Z

    .line 2349
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->briefMessage_:Ljava/lang/String;

    .line 2350
    return-object p0
.end method

.method public setInfoUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 2365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasInfoUrl:Z

    .line 2366
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->infoUrl_:Ljava/lang/String;

    .line 2367
    return-object p0
.end method

.method public setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 2382
    if-nez p1, :cond_0

    .line 2383
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2385
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasLibraryUpdate:Z

    .line 2386
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 2387
    return-object p0
.end method

.method public setRejectedInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 2402
    if-nez p1, :cond_0

    .line 2403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2405
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasRejectedInstrument:Z

    .line 2406
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->rejectedInstrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 2407
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 2297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatus:Z

    .line 2298
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->status_:I

    .line 2299
    return-object p0
.end method

.method public setStatusMsg(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 2314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusMsg:Z

    .line 2315
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusMsg_:Ljava/lang/String;

    .line 2316
    return-object p0
.end method

.method public setStatusTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 2331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusTitle:Z

    .line 2332
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusTitle_:Ljava/lang/String;

    .line 2333
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2465
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2466
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2468
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusMsg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2469
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2471
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2472
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2474
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasBriefMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2475
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getBriefMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2477
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasInfoUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2478
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getInfoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2480
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasLibraryUpdate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2481
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2483
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasRejectedInstrument()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2484
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2486
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasAppDeliveryData()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2487
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2489
    :cond_7
    return-void
.end method
