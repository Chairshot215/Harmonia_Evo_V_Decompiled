.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/Object;

.field private value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12644
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12744
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->key_:Ljava/lang/Object;

    .line 12797
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 12645
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->maybeForceBuilderInitialization()V

    .line 12646
    return-void
.end method

.method static synthetic access$14900()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    .locals 1

    .prologue
    .line 12639
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    .locals 1

    .prologue
    .line 12651
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 12649
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12639
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
    .locals 2

    .prologue
    .line 12672
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v0

    .line 12673
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12674
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12676
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12639
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
    .locals 5

    .prologue
    .line 12680
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 12681
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->bitField0_:I

    .line 12682
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12683
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 12684
    or-int/lit8 v2, v2, 0x1

    .line 12686
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->key_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->key_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->access$15102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12687
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 12688
    or-int/lit8 v2, v2, 0x2

    .line 12690
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->access$15202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 12691
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->access$15302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;I)I

    .line 12692
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12639
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12639
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    .locals 2

    .prologue
    .line 12664
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

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
    .line 12639
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 12639
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12639
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
    .locals 1

    .prologue
    .line 12668
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1

    .prologue
    .line 12802
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object v0
.end method

.method public hasKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12746
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 12799
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->bitField0_:I

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
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12709
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->hasKey()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12721
    :cond_0
    :goto_0
    return v0

    .line 12713
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12717
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->getValue()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12721
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
    .line 12639
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12639
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

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
    .line 12639
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12728
    const/4 v2, 0x0

    .line 12730
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12735
    if-eqz v2, :cond_0

    .line 12736
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 12739
    :cond_0
    return-object p0

    .line 12731
    :catch_0
    move-exception v1

    .line 12732
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-object v2, v0

    .line 12733
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12735
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 12736
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 12696
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 12705
    :cond_0
    :goto_0
    return-object p0

    .line 12697
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12698
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->bitField0_:I

    .line 12699
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->key_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->access$15100(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->key_:Ljava/lang/Object;

    .line 12702
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12703
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->getValue()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->mergeValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    goto :goto_0
.end method

.method public mergeValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12821
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12823
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 12829
    :goto_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->bitField0_:I

    .line 12830
    return-object p0

    .line 12826
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    goto :goto_0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12771
    if-nez p1, :cond_0

    .line 12772
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12774
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->bitField0_:I

    .line 12775
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->key_:Ljava/lang/Object;

    .line 12777
    return-object p0
.end method

.method public setValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 12815
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 12817
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->bitField0_:I

    .line 12818
    return-object p0
.end method
