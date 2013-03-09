.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtraOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18772
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18870
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    .line 18923
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    .line 18773
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->maybeForceBuilderInitialization()V

    .line 18774
    return-void
.end method

.method static synthetic access$21500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1

    .prologue
    .line 18767
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1

    .prologue
    .line 18779
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 18777
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 2

    .prologue
    .line 18800
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    .line 18801
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18802
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 18804
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 5

    .prologue
    .line 18808
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 18809
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18810
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 18811
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 18812
    or-int/lit8 v2, v2, 0x1

    .line 18814
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->access$21702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18815
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 18816
    or-int/lit8 v2, v2, 0x2

    .line 18818
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->access$21802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18819
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->access$21902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;I)I

    .line 18820
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 2

    .prologue
    .line 18792
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

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
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18767
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .locals 1

    .prologue
    .line 18796
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 18872
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

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
    .line 18925
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

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

    .line 18839
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->hasName()Z

    move-result v1

    if-nez v1, :cond_1

    .line 18847
    :cond_0
    :goto_0
    return v0

    .line 18843
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18847
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
    .line 18767
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18767
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

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
    .line 18767
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18854
    const/4 v2, 0x0

    .line 18856
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18861
    if-eqz v2, :cond_0

    .line 18862
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    .line 18865
    :cond_0
    return-object p0

    .line 18857
    :catch_0
    move-exception v1

    .line 18858
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-object v2, v0

    .line 18859
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18861
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 18862
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 18824
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 18835
    :cond_0
    :goto_0
    return-object p0

    .line 18825
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18826
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18827
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->access$21700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->name_:Ljava/lang/Object;

    .line 18830
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18831
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->bitField0_:I

    .line 18832
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->access$21800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->value_:Ljava/lang/Object;

    goto :goto_0
.end method
