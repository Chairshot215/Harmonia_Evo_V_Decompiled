.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammarOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2290
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2291
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->maybeForceBuilderInitialization()V

    .line 2292
    return-void
.end method

.method static synthetic access$2300()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;
    .locals 1

    .prologue
    .line 2285
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;
    .locals 1

    .prologue
    .line 2297
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2295
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;
    .locals 2

    .prologue
    .line 2314
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;

    move-result-object v0

    .line 2315
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2316
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2318
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;
    .locals 2

    .prologue
    .line 2322
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 2323
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;
    .locals 2

    .prologue
    .line 2306
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;

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
    .line 2285
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;
    .locals 1

    .prologue
    .line 2310
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;

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
    .line 2285
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2285
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;

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
    .line 2285
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;
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
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2346
    if-eqz v2, :cond_0

    .line 2347
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;

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

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;

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
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2327
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchGrammar;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2328
    :cond_0
    return-object p0
.end method
