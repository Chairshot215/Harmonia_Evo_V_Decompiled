.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayDisambiguation_:Z

.field private hypothesis_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field private interpretation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16557
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16680
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    .line 16769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    .line 16558
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->maybeForceBuilderInitialization()V

    .line 16559
    return-void
.end method

.method static synthetic access$19300()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1

    .prologue
    .line 16552
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1

    .prologue
    .line 16564
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureHypothesisIsMutable()V
    .locals 2

    .prologue
    .line 16683
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 16684
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    .line 16685
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16687
    :cond_0
    return-void
.end method

.method private ensureInterpretationIsMutable()V
    .locals 2

    .prologue
    .line 16772
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 16773
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    .line 16774
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16776
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 16562
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 2

    .prologue
    .line 16587
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    .line 16588
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16589
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 16591
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 5

    .prologue
    .line 16595
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 16596
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16597
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 16598
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 16599
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    .line 16600
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16602
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;Ljava/util/List;)Ljava/util/List;

    .line 16603
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 16604
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    .line 16605
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16607
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;Ljava/util/List;)Ljava/util/List;

    .line 16608
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 16609
    or-int/lit8 v2, v2, 0x1

    .line 16611
    :cond_2
    iget-boolean v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->displayDisambiguation_:Z

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;Z)Z

    .line 16612
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;I)I

    .line 16613
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 2

    .prologue
    .line 16579
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

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
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1

    .prologue
    .line 16583
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHypothesis(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter "index"

    .prologue
    .line 16696
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object v0
.end method

.method public getHypothesisCount()I
    .locals 1

    .prologue
    .line 16693
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter "index"

    .prologue
    .line 16785
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object v0
.end method

.method public getInterpretationCount()I
    .locals 1

    .prologue
    .line 16782
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 16645
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->getHypothesisCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 16646
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->getHypothesis(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 16657
    :cond_0
    :goto_1
    return v1

    .line 16645
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16651
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->getInterpretationCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 16652
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16651
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 16657
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
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
    .line 16552
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16552
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

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
    .line 16552
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16664
    const/4 v2, 0x0

    .line 16666
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16671
    if-eqz v2, :cond_0

    .line 16672
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    .line 16675
    :cond_0
    return-object p0

    .line 16667
    :catch_0
    move-exception v1

    .line 16668
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-object v2, v0

    .line 16669
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16671
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 16672
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 16617
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 16641
    :cond_0
    :goto_0
    return-object p0

    .line 16618
    :cond_1
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16619
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16620
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    .line 16621
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16628
    :cond_2
    :goto_1
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16629
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16630
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    .line 16631
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16638
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hasDisplayDisambiguation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16639
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDisplayDisambiguation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->setDisplayDisambiguation(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    goto :goto_0

    .line 16623
    :cond_4
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureHypothesisIsMutable()V

    .line 16624
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 16633
    :cond_5
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureInterpretationIsMutable()V

    .line 16634
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public setDisplayDisambiguation(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 16866
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16867
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->displayDisambiguation_:Z

    .line 16869
    return-object p0
.end method
