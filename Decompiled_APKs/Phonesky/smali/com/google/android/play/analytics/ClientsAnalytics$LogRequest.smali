.class public final Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ClientsAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ClientsAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogRequest"
.end annotation


# instance fields
.field private androidId_:Ljava/lang/String;

.field private buildId_:Ljava/lang/String;

.field private cachedSize:I

.field private clickEvent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private hasAndroidId:Z

.field private hasBuildId:Z

.field private hasLogSource:Z

.field private hasLoggingId:Z

.field private hasModel:Z

.field private hasProduct:Z

.field private hasSdkVersion:Z

.field private logSource_:I

.field private loggingId_:Ljava/lang/String;

.field private model_:Ljava/lang/String;

.field private product_:Ljava/lang/String;

.field private sdkVersion_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 310
    iput v1, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->sdkVersion_:I

    .line 327
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->model_:Ljava/lang/String;

    .line 344
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->product_:Ljava/lang/String;

    .line 361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->buildId_:Ljava/lang/String;

    .line 378
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->loggingId_:Ljava/lang/String;

    .line 395
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->androidId_:Ljava/lang/String;

    .line 412
    iput v1, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->logSource_:I

    .line 428
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->clickEvent_:Ljava/util/List;

    .line 504
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->cachedSize:I

    .line 298
    return-void
.end method


# virtual methods
.method public addClickEvent(Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->clickEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->clickEvent_:Ljava/util/List;

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->clickEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    return-object p0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->androidId_:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->buildId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getSerializedSize()I

    .line 510
    :cond_0
    iget v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->cachedSize:I

    return v0
.end method

.method public getClickEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->clickEvent_:Ljava/util/List;

    return-object v0
.end method

.method public getLogSource()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->logSource_:I

    return v0
.end method

.method public getLoggingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->loggingId_:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->model_:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->product_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->sdkVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 514
    const/4 v2, 0x0

    .line 515
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasSdkVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getSdkVersion()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 520
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasProduct()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 524
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getProduct()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 527
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasBuildId()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 528
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getBuildId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 531
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasLoggingId()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 532
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getLoggingId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 535
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasAndroidId()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 536
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 539
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasLogSource()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 540
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getLogSource()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 543
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getClickEventList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    .line 544
    .local v0, element:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 547
    .end local v0           #element:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    :cond_7
    iput v2, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->cachedSize:I

    .line 548
    return v2
.end method

.method public hasAndroidId()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasAndroidId:Z

    return v0
.end method

.method public hasBuildId()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasBuildId:Z

    return v0
.end method

.method public hasLogSource()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasLogSource:Z

    return v0
.end method

.method public hasLoggingId()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasLoggingId:Z

    return v0
.end method

.method public hasModel()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasModel:Z

    return v0
.end method

.method public hasProduct()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasProduct:Z

    return v0
.end method

.method public hasSdkVersion()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasSdkVersion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 556
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 560
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    :sswitch_0
    return-object p0

    .line 566
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setSdkVersion(I)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    goto :goto_0

    .line 570
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setModel(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    goto :goto_0

    .line 574
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setProduct(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    goto :goto_0

    .line 578
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setBuildId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    goto :goto_0

    .line 582
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setLoggingId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    goto :goto_0

    .line 586
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setAndroidId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    goto :goto_0

    .line 590
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setLogSource(I)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    goto :goto_0

    .line 594
    :sswitch_8
    new-instance v1, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    invoke-direct {v1}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;-><init>()V

    .line 595
    .local v1, value:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 596
    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->addClickEvent(Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    goto :goto_0

    .line 556
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
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
    .line 296
    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasAndroidId:Z

    .line 400
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->androidId_:Ljava/lang/String;

    .line 401
    return-object p0
.end method

.method public setBuildId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasBuildId:Z

    .line 366
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->buildId_:Ljava/lang/String;

    .line 367
    return-object p0
.end method

.method public setLogSource(I)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasLogSource:Z

    .line 417
    iput p1, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->logSource_:I

    .line 418
    return-object p0
.end method

.method public setLoggingId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasLoggingId:Z

    .line 383
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->loggingId_:Ljava/lang/String;

    .line 384
    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasModel:Z

    .line 332
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->model_:Ljava/lang/String;

    .line 333
    return-object p0
.end method

.method public setProduct(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasProduct:Z

    .line 349
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->product_:Ljava/lang/String;

    .line 350
    return-object p0
.end method

.method public setSdkVersion(I)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasSdkVersion:Z

    .line 315
    iput p1, p0, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->sdkVersion_:I

    .line 316
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
    .line 478
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasSdkVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getSdkVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasProduct()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getProduct()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 487
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasBuildId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getBuildId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 490
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasLoggingId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 491
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getLoggingId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 493
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasAndroidId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 494
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getAndroidId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 496
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->hasLogSource()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 497
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getLogSource()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 499
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getClickEventList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    .line 500
    .local v0, element:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 502
    .end local v0           #element:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    :cond_7
    return-void
.end method
