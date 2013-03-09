.class public final Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PartialResult.java"

# interfaces
.implements Lcom/google/protos/speech/service/PartialResult$RecognitionResultPartOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
        "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPartOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private stabilityConfidence_:D

.field private transcript_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 739
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    .line 652
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->maybeForceBuilderInitialization()V

    .line 653
    return-void
.end method

.method static synthetic access$500()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1

    .prologue
    .line 646
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->create()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1

    .prologue
    .line 658
    new-instance v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 656
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->build()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    .line 680
    .local v0, result:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    invoke-static {v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 683
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 5

    .prologue
    .line 687
    new-instance v1, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/PartialResult$1;)V

    .line 688
    .local v1, result:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    .line 689
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 690
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 691
    or-int/lit8 v2, v2, 0x1

    .line 693
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->access$702(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 695
    or-int/lit8 v2, v2, 0x2

    .line 697
    :cond_1
    iget-wide v3, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->stabilityConfidence_:D

    #setter for: Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->stabilityConfidence_:D
    invoke-static {v1, v3, v4}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->access$802(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;D)D

    .line 698
    #setter for: Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->access$902(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;I)I

    .line 699
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 2

    .prologue
    .line 671
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->create()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

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
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1

    .prologue
    .line 675
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 716
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
    .line 646
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 646
    check-cast p1, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

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
    .line 646
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    const/4 v2, 0x0

    .line 725
    .local v2, parsedMessage:Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    if-eqz v2, :cond_0

    .line 731
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    .line 734
    :cond_0
    return-object p0

    .line 726
    :catch_0
    move-exception v1

    .line 727
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-object v2, v0

    .line 728
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 731
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 703
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-object p0

    .line 704
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->hasTranscript()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    .line 706
    #getter for: Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->transcript_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->access$700(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->transcript_:Ljava/lang/Object;

    .line 709
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->hasStabilityConfidence()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getStabilityConfidence()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->setStabilityConfidence(D)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;

    goto :goto_0
.end method

.method public setStabilityConfidence(D)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 800
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->bitField0_:I

    .line 801
    iput-wide p1, p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->stabilityConfidence_:D

    .line 803
    return-object p0
.end method
