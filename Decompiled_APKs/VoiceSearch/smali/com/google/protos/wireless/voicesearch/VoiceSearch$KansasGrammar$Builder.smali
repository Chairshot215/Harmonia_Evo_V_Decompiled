.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammarOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private kansasId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3037
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->kansasId_:Ljava/lang/Object;

    .line 3038
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->maybeForceBuilderInitialization()V

    .line 3039
    return-void
.end method

.method static synthetic access$3200()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;
    .locals 1

    .prologue
    .line 3032
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;
    .locals 1

    .prologue
    .line 3044
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3042
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3032
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;
    .locals 2

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-result-object v0

    .line 3064
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3065
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3067
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3032
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;
    .locals 5

    .prologue
    .line 3071
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 3072
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->bitField0_:I

    .line 3073
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3074
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3075
    or-int/lit8 v2, v2, 0x1

    .line 3077
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->kansasId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->kansasId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->access$3402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3078
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->access$3502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;I)I

    .line 3079
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3032
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3032
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;
    .locals 2

    .prologue
    .line 3055
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

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
    .line 3032
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3032
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3032
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;
    .locals 1

    .prologue
    .line 3059
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-result-object v0

    return-object v0
.end method

.method public hasKansasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3122
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->bitField0_:I

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
    .line 3093
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->hasKansasId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3095
    const/4 v0, 0x0

    .line 3097
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
    .line 3032
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3032
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

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
    .line 3032
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3104
    const/4 v2, 0x0

    .line 3106
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3111
    if-eqz v2, :cond_0

    .line 3112
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    .line 3115
    :cond_0
    return-object p0

    .line 3107
    :catch_0
    move-exception v1

    .line 3108
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-object v2, v0

    .line 3109
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3111
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3112
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3083
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3089
    :cond_0
    :goto_0
    return-object p0

    .line 3084
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->hasKansasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3085
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->bitField0_:I

    .line 3086
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->kansasId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->access$3400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->kansasId_:Ljava/lang/Object;

    goto :goto_0
.end method
