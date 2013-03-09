.class public final Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$AudioParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$AudioParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$AudioParameters;",
        "Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$AudioParametersOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field private endpointerEnabled_:Z

.field private noiseCancelerEnabled_:Z

.field private sampleRate_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8525
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8633
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 8526
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->maybeForceBuilderInitialization()V

    .line 8527
    return-void
.end method

.method static synthetic access$9600()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .locals 1

    .prologue
    .line 8520
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->create()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .locals 1

    .prologue
    .line 8532
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 8530
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8520
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->build()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .locals 2

    .prologue
    .line 8557
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    .line 8558
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8559
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8561
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8520
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .locals 5

    .prologue
    .line 8565
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 8566
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->bitField0_:I

    .line 8567
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8568
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8569
    or-int/lit8 v2, v2, 0x1

    .line 8571
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    #setter for: Lcom/google/protos/speech/service/SpeechService$AudioParameters;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->access$9802(Lcom/google/protos/speech/service/SpeechService$AudioParameters;Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 8572
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8573
    or-int/lit8 v2, v2, 0x2

    .line 8575
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->sampleRate_:I

    #setter for: Lcom/google/protos/speech/service/SpeechService$AudioParameters;->sampleRate_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->access$9902(Lcom/google/protos/speech/service/SpeechService$AudioParameters;I)I

    .line 8576
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 8577
    or-int/lit8 v2, v2, 0x4

    .line 8579
    :cond_2
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->endpointerEnabled_:Z

    #setter for: Lcom/google/protos/speech/service/SpeechService$AudioParameters;->endpointerEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->access$10002(Lcom/google/protos/speech/service/SpeechService$AudioParameters;Z)Z

    .line 8580
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 8581
    or-int/lit8 v2, v2, 0x8

    .line 8583
    :cond_3
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->noiseCancelerEnabled_:Z

    #setter for: Lcom/google/protos/speech/service/SpeechService$AudioParameters;->noiseCancelerEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->access$10102(Lcom/google/protos/speech/service/SpeechService$AudioParameters;Z)Z

    .line 8584
    #setter for: Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->access$10202(Lcom/google/protos/speech/service/SpeechService$AudioParameters;I)I

    .line 8585
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8520
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8520
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .locals 2

    .prologue
    .line 8549
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->create()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

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
    .line 8520
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 8520
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8520
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .locals 1

    .prologue
    .line 8553
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    return-object v0
.end method

.method public hasEncoding()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8635
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8606
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->hasEncoding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8608
    const/4 v0, 0x0

    .line 8610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    .line 8520
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8520
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

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
    .line 8520
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8617
    const/4 v2, 0x0

    .line 8619
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8624
    if-eqz v2, :cond_0

    .line 8625
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 8628
    :cond_0
    return-object p0

    .line 8620
    :catch_0
    move-exception v1

    .line 8621
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-object v2, v0

    .line 8622
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8624
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 8625
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 8589
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 8602
    :cond_0
    :goto_0
    return-object p0

    .line 8590
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->hasEncoding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8591
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getEncoding()Lcom/google/protos/speech/service/SpeechService$Encoding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->setEncoding(Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 8593
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->hasSampleRate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8594
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getSampleRate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->setSampleRate(I)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 8596
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->hasEndpointerEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8597
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getEndpointerEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->setEndpointerEnabled(Z)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 8599
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->hasNoiseCancelerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8600
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getNoiseCancelerEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->setNoiseCancelerEnabled(Z)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    goto :goto_0
.end method

.method public setEncoding(Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8641
    if-nez p1, :cond_0

    .line 8642
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8644
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->bitField0_:I

    .line 8645
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 8647
    return-object p0
.end method

.method public setEndpointerEnabled(Z)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8686
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->bitField0_:I

    .line 8687
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->endpointerEnabled_:Z

    .line 8689
    return-object p0
.end method

.method public setNoiseCancelerEnabled(Z)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8707
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->bitField0_:I

    .line 8708
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->noiseCancelerEnabled_:Z

    .line 8710
    return-object p0
.end method

.method public setSampleRate(I)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8665
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->bitField0_:I

    .line 8666
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->sampleRate_:I

    .line 8668
    return-object p0
.end method
