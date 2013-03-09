.class public final Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;",
        "Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private correctIndex_:I

.field private correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

.field private correctResult_:Ljava/lang/Object;

.field private noneCorrect_:Z

.field private selectedAlternateSpans_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2232
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2397
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2450
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->OK:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 2474
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    .line 2233
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->maybeForceBuilderInitialization()V

    .line 2234
    return-void
.end method

.method static synthetic access$2600()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1

    .prologue
    .line 2227
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1

    .prologue
    .line 2239
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSelectedAlternateSpansIsMutable()V
    .locals 2

    .prologue
    .line 2477
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 2478
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    .line 2479
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2481
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2237
    return-void
.end method


# virtual methods
.method public addSelectedAlternateSpans(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2510
    if-nez p1, :cond_0

    .line 2511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2513
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->ensureSelectedAlternateSpansIsMutable()V

    .line 2514
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2516
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .locals 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    .line 2267
    .local v0, result:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2268
    invoke-static {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2270
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .locals 5

    .prologue
    .line 2274
    new-instance v1, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/ClientReportProto$1;)V

    .line 2275
    .local v1, result:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2276
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2277
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2278
    or-int/lit8 v2, v2, 0x1

    .line 2280
    :cond_0
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctIndex_:I

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctIndex_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$2802(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;I)I

    .line 2281
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2282
    or-int/lit8 v2, v2, 0x2

    .line 2284
    :cond_1
    iget-boolean v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->noneCorrect_:Z

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->noneCorrect_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$2902(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;Z)Z

    .line 2285
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2286
    or-int/lit8 v2, v2, 0x4

    .line 2288
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResult_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3002(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2290
    or-int/lit8 v2, v2, 0x8

    .line 2292
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3102(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 2293
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2294
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    .line 2295
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2297
    :cond_4
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3202(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;Ljava/util/List;)Ljava/util/List;

    .line 2298
    #setter for: Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3302(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;I)I

    .line 2299
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 2

    .prologue
    .line 2258
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

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
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .locals 1

    .prologue
    .line 2262
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2332
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
    .line 2227
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2227
    check-cast p1, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

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
    .line 2227
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2339
    const/4 v2, 0x0

    .line 2341
    .local v2, parsedMessage:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2346
    if-eqz v2, :cond_0

    .line 2347
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    .line 2350
    :cond_0
    return-object p0

    .line 2342
    :catch_0
    move-exception v1

    .line 2343
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-object v2, v0

    .line 2344
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2346
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2347
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 2303
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2328
    :cond_0
    :goto_0
    return-object p0

    .line 2304
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->hasCorrectIndex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2305
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getCorrectIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->setCorrectIndex(I)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    .line 2307
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->hasNoneCorrect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2308
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getNoneCorrect()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->setNoneCorrect(Z)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    .line 2310
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->hasCorrectResult()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2311
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2312
    #getter for: Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResult_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3000(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2315
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->hasCorrectResultStatus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2316
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getCorrectResultStatus()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->setCorrectResultStatus(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    .line 2318
    :cond_5
    #getter for: Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3200(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2319
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2320
    #getter for: Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3200(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    .line 2321
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    goto :goto_0

    .line 2323
    :cond_6
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->ensureSelectedAlternateSpansIsMutable()V

    .line 2324
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    #getter for: Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3200(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setCorrectIndex(I)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2363
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2364
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctIndex_:I

    .line 2366
    return-object p0
.end method

.method public setCorrectResult(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2424
    if-nez p1, :cond_0

    .line 2425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2427
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2428
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2430
    return-object p0
.end method

.method public setCorrectResultStatus(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2458
    if-nez p1, :cond_0

    .line 2459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2461
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2462
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 2464
    return-object p0
.end method

.method public setNoneCorrect(Z)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2384
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2385
    iput-boolean p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->noneCorrect_:Z

    .line 2387
    return-object p0
.end method
