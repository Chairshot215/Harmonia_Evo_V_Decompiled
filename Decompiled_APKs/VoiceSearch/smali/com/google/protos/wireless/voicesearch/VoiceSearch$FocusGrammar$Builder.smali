.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammarOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deprecatedGaiaId_:J

.field private gaiaAuthenticationToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2626
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2739
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 2627
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->maybeForceBuilderInitialization()V

    .line 2628
    return-void
.end method

.method static synthetic access$2600()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1

    .prologue
    .line 2621
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1

    .prologue
    .line 2633
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2631
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 2

    .prologue
    .line 2654
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    .line 2655
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2656
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2658
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 5

    .prologue
    .line 2662
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 2663
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    .line 2664
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2665
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2666
    or-int/lit8 v2, v2, 0x1

    .line 2668
    :cond_0
    iget-wide v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->deprecatedGaiaId_:J

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->deprecatedGaiaId_:J
    invoke-static {v1, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->access$2802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;J)J

    .line 2669
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2670
    or-int/lit8 v2, v2, 0x2

    .line 2672
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->gaiaAuthenticationToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->access$2902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->access$3002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;I)I

    .line 2674
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 2

    .prologue
    .line 2646
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

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
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    .locals 1

    .prologue
    .line 2650
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    return-object v0
.end method

.method public hasGaiaAuthenticationToken()Z
    .locals 2

    .prologue
    .line 2741
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->hasGaiaAuthenticationToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2693
    const/4 v0, 0x0

    .line 2695
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
    .line 2621
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2621
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

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
    .line 2621
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2702
    const/4 v2, 0x0

    .line 2704
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2709
    if-eqz v2, :cond_0

    .line 2710
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    .line 2713
    :cond_0
    return-object p0

    .line 2705
    :catch_0
    move-exception v1

    .line 2706
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-object v2, v0

    .line 2707
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2709
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2710
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 2678
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2687
    :cond_0
    :goto_0
    return-object p0

    .line 2679
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->hasDeprecatedGaiaId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2680
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->getDeprecatedGaiaId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->setDeprecatedGaiaId(J)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;

    .line 2682
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->hasGaiaAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2683
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    .line 2684
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->gaiaAuthenticationToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;->access$2900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDeprecatedGaiaId(J)Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2726
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->bitField0_:I

    .line 2727
    iput-wide p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$FocusGrammar$Builder;->deprecatedGaiaId_:J

    .line 2729
    return-object p0
.end method
