.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionResult;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionResultOrBuilder;"
    }
.end annotation


# instance fields
.field private alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

.field private bitField0_:I

.field private endTimeUsec_:J

.field private hypothesis_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field private startTimeUsec_:J

.field private status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field private utteranceId_:Ljava/lang/Object;

.field private waveformClippedRatio_:F

.field private waveformData_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4641
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4807
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 4831
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    .line 4920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    .line 4973
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformData_:Lcom/google/protobuf/ByteString;

    .line 5018
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 4642
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->maybeForceBuilderInitialization()V

    .line 4643
    return-void
.end method

.method static synthetic access$4600()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4636
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4648
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;-><init>()V

    return-object v0
.end method

.method private ensureHypothesisIsMutable()V
    .locals 2

    .prologue
    .line 4834
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 4835
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    .line 4836
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4838
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4646
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 2

    .prologue
    .line 4681
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    .line 4682
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4683
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4685
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 5

    .prologue
    .line 4689
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 4690
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4691
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4692
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4693
    or-int/lit8 v2, v2, 0x1

    .line 4695
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$4802(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;)Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 4696
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4697
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    .line 4698
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4700
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$4902(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Ljava/util/List;)Ljava/util/List;

    .line 4701
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4702
    or-int/lit8 v2, v2, 0x2

    .line 4704
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5002(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4705
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4706
    or-int/lit8 v2, v2, 0x4

    .line 4708
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformData_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5102(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4709
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 4710
    or-int/lit8 v2, v2, 0x8

    .line 4712
    :cond_4
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformClippedRatio_:F

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5202(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;F)F

    .line 4713
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 4714
    or-int/lit8 v2, v2, 0x10

    .line 4716
    :cond_5
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5302(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 4717
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 4718
    or-int/lit8 v2, v2, 0x20

    .line 4720
    :cond_6
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->startTimeUsec_:J

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5402(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;J)J

    .line 4721
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 4722
    or-int/lit8 v2, v2, 0x40

    .line 4724
    :cond_7
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->endTimeUsec_:J

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5502(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;J)J

    .line 4725
    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5602(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;I)I

    .line 4726
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 2

    .prologue
    .line 4673
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

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
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 5023
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1

    .prologue
    .line 4677
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter "index"

    .prologue
    .line 4847
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object v0
.end method

.method public getHypothesisCount()I
    .locals 1

    .prologue
    .line 4844
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasAlternates()Z
    .locals 2

    .prologue
    .line 5020
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4809
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4768
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hasStatus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4784
    :cond_0
    :goto_0
    return v1

    .line 4772
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->getHypothesisCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4773
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4772
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4778
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hasAlternates()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4779
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4784
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public mergeAlternates(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5042
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5044
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 5050
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5051
    return-object p0

    .line 5047
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

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
    .line 4636
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4636
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

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
    .line 4636
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4791
    const/4 v2, 0x0

    .line 4793
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4798
    if-eqz v2, :cond_0

    .line 4799
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 4802
    :cond_0
    return-object p0

    .line 4794
    :catch_0
    move-exception v1

    .line 4795
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-object v2, v0

    .line 4796
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4798
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 4799
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 4730
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4764
    :cond_0
    :goto_0
    return-object p0

    .line 4731
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4732
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getStatus()Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->setStatus(Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 4734
    :cond_2
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$4900(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4735
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4736
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$4900(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    .line 4737
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4744
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasUtteranceId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4745
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4746
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5000(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    .line 4749
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasWaveformData()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4750
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getWaveformData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->setWaveformData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 4752
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasWaveformClippedRatio()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4753
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getWaveformClippedRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->setWaveformClippedRatio(F)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 4755
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasAlternates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4756
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeAlternates(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 4758
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasStartTimeUsec()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4759
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getStartTimeUsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->setStartTimeUsec(J)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 4761
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasEndTimeUsec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4762
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getEndTimeUsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->setEndTimeUsec(J)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    goto :goto_0

    .line 4739
    :cond_9
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->ensureHypothesisIsMutable()V

    .line 4740
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$4900(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setEndTimeUsec(J)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5090
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5091
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->endTimeUsec_:J

    .line 5093
    return-object p0
.end method

.method public setStartTimeUsec(J)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5069
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5070
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->startTimeUsec_:J

    .line 5072
    return-object p0
.end method

.method public setStatus(Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4815
    if-nez p1, :cond_0

    .line 4816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4818
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4819
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 4821
    return-object p0
.end method

.method public setWaveformClippedRatio(F)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5005
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5006
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformClippedRatio_:F

    .line 5008
    return-object p0
.end method

.method public setWaveformData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4981
    if-nez p1, :cond_0

    .line 4982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4984
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4985
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformData_:Lcom/google/protobuf/ByteString;

    .line 4987
    return-object p0
.end method
