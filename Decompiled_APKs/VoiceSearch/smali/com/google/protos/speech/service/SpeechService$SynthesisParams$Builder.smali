.class public final Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesisParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisParams;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisParamsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private pitch_:D

.field private speed_:D

.field private volume_:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18542
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18543
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->maybeForceBuilderInitialization()V

    .line 18544
    return-void
.end method

.method static synthetic access$22300()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1

    .prologue
    .line 18537
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1

    .prologue
    .line 18549
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 18547
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 2

    .prologue
    .line 18572
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    .line 18573
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18574
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 18576
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 5

    .prologue
    .line 18580
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 18581
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18582
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 18583
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 18584
    or-int/lit8 v2, v2, 0x1

    .line 18586
    :cond_0
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->speed_:D

    #setter for: Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->speed_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->access$22502(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;D)D

    .line 18587
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 18588
    or-int/lit8 v2, v2, 0x2

    .line 18590
    :cond_1
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->pitch_:D

    #setter for: Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->pitch_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->access$22602(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;D)D

    .line 18591
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 18592
    or-int/lit8 v2, v2, 0x4

    .line 18594
    :cond_2
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->volume_:D

    #setter for: Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->volume_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->access$22702(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;D)D

    .line 18595
    #setter for: Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->access$22802(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;I)I

    .line 18596
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 2

    .prologue
    .line 18564
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

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
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18537
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    .locals 1

    .prologue
    .line 18568
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 18614
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
    .line 18537
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18537
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

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
    .line 18537
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18621
    const/4 v2, 0x0

    .line 18623
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18628
    if-eqz v2, :cond_0

    .line 18629
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    .line 18632
    :cond_0
    return-object p0

    .line 18624
    :catch_0
    move-exception v1

    .line 18625
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-object v2, v0

    .line 18626
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18628
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 18629
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisParams;)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 18600
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 18610
    :cond_0
    :goto_0
    return-object p0

    .line 18601
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18602
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getSpeed()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->setSpeed(D)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    .line 18604
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->hasPitch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18605
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getPitch()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->setPitch(D)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    .line 18607
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->hasVolume()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18608
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams;->getVolume()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->setVolume(D)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;

    goto :goto_0
.end method

.method public setPitch(D)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 18666
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18667
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->pitch_:D

    .line 18669
    return-object p0
.end method

.method public setSpeed(D)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 18645
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18646
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->speed_:D

    .line 18648
    return-object p0
.end method

.method public setVolume(D)Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 18687
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->bitField0_:I

    .line 18688
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisParams$Builder;->volume_:D

    .line 18690
    return-object p0
.end method
