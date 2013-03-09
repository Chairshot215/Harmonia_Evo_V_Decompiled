.class public final Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClientParametersProto.java"

# interfaces
.implements Lcom/google/protos/speech/ClientParametersProto$ClientParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/ClientParametersProto$ClientParameters;",
        "Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;",
        ">;",
        "Lcom/google/protos/speech/ClientParametersProto$ClientParametersOrBuilder;"
    }
.end annotation


# instance fields
.field private bandwidthEstimatorMeanRttThresholdSecs_:D

.field private bandwidthEstimatorPacketLossThreshold_:D

.field private bandwidthEstimatorStdevRttThresholdSecs_:D

.field private bitField0_:I

.field private enableHifiForWifi_:Z

.field private showHintOnHelp_:Z

.field private useWidebandSpeex_:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide v2, 0x3fc3333333333333L

    .line 340
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 504
    iput-wide v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bandwidthEstimatorMeanRttThresholdSecs_:D

    .line 525
    const-wide v0, 0x3fb999999999999aL

    iput-wide v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bandwidthEstimatorStdevRttThresholdSecs_:D

    .line 546
    iput-wide v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bandwidthEstimatorPacketLossThreshold_:D

    .line 341
    invoke-direct {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->maybeForceBuilderInitialization()V

    .line 342
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 1

    .prologue
    .line 335
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->create()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 1

    .prologue
    .line 347
    new-instance v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->build()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    .line 377
    .local v0, result:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    invoke-virtual {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-static {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 380
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    .locals 5

    .prologue
    .line 384
    new-instance v1, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/ClientParametersProto$1;)V

    .line 385
    .local v1, result:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    .line 386
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 387
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 388
    or-int/lit8 v2, v2, 0x1

    .line 390
    :cond_0
    iget-boolean v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->useWidebandSpeex_:Z

    #setter for: Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->access$302(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;Z)Z

    .line 391
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 392
    or-int/lit8 v2, v2, 0x2

    .line 394
    :cond_1
    iget-boolean v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->enableHifiForWifi_:Z

    #setter for: Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->access$402(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;Z)Z

    .line 395
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 396
    or-int/lit8 v2, v2, 0x4

    .line 398
    :cond_2
    iget-wide v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bandwidthEstimatorMeanRttThresholdSecs_:D

    #setter for: Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->access$502(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;D)D

    .line 399
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 400
    or-int/lit8 v2, v2, 0x8

    .line 402
    :cond_3
    iget-wide v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bandwidthEstimatorStdevRttThresholdSecs_:D

    #setter for: Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->access$602(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;D)D

    .line 403
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 404
    or-int/lit8 v2, v2, 0x10

    .line 406
    :cond_4
    iget-wide v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bandwidthEstimatorPacketLossThreshold_:D

    #setter for: Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->access$702(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;D)D

    .line 407
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 408
    or-int/lit8 v2, v2, 0x20

    .line 410
    :cond_5
    iget-boolean v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->showHintOnHelp_:Z

    #setter for: Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->access$802(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;Z)Z

    .line 411
    #setter for: Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->access$902(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;I)I

    .line 412
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->clone()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->clone()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 2

    .prologue
    .line 368
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->create()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->clone()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 335
    check-cast p1, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v2, 0x0

    .line 448
    .local v2, parsedMessage:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    if-eqz v2, :cond_0

    .line 454
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    .line 457
    :cond_0
    return-object p0

    .line 449
    :catch_0
    move-exception v1

    .line 450
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-object v2, v0

    .line 451
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 454
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 416
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-object p0

    .line 417
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->hasUseWidebandSpeex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getUseWidebandSpeex()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->setUseWidebandSpeex(Z)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    .line 420
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->hasEnableHifiForWifi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getEnableHifiForWifi()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->setEnableHifiForWifi(Z)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    .line 423
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->hasBandwidthEstimatorMeanRttThresholdSecs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 424
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getBandwidthEstimatorMeanRttThresholdSecs()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->setBandwidthEstimatorMeanRttThresholdSecs(D)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    .line 426
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->hasBandwidthEstimatorStdevRttThresholdSecs()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 427
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getBandwidthEstimatorStdevRttThresholdSecs()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->setBandwidthEstimatorStdevRttThresholdSecs(D)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    .line 429
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->hasBandwidthEstimatorPacketLossThreshold()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 430
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getBandwidthEstimatorPacketLossThreshold()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->setBandwidthEstimatorPacketLossThreshold(D)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    .line 432
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->hasShowHintOnHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getShowHintOnHelp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->setShowHintOnHelp(Z)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    goto :goto_0
.end method

.method public setBandwidthEstimatorMeanRttThresholdSecs(D)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 512
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    .line 513
    iput-wide p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bandwidthEstimatorMeanRttThresholdSecs_:D

    .line 515
    return-object p0
.end method

.method public setBandwidthEstimatorPacketLossThreshold(D)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 554
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    .line 555
    iput-wide p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bandwidthEstimatorPacketLossThreshold_:D

    .line 557
    return-object p0
.end method

.method public setBandwidthEstimatorStdevRttThresholdSecs(D)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 533
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    .line 534
    iput-wide p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bandwidthEstimatorStdevRttThresholdSecs_:D

    .line 536
    return-object p0
.end method

.method public setEnableHifiForWifi(Z)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 491
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    .line 492
    iput-boolean p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->enableHifiForWifi_:Z

    .line 494
    return-object p0
.end method

.method public setShowHintOnHelp(Z)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 575
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    .line 576
    iput-boolean p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->showHintOnHelp_:Z

    .line 578
    return-object p0
.end method

.method public setUseWidebandSpeex(Z)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 470
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->bitField0_:I

    .line 471
    iput-boolean p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->useWidebandSpeex_:Z

    .line 473
    return-object p0
.end method
