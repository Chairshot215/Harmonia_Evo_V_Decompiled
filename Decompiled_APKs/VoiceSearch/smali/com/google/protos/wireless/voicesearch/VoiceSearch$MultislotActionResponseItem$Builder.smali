.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItemOrBuilder;"
    }
.end annotation


# instance fields
.field private actionSlot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12190
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12279
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->actionSlot_:Ljava/util/List;

    .line 12191
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->maybeForceBuilderInitialization()V

    .line 12192
    return-void
.end method

.method static synthetic access$14500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    .locals 1

    .prologue
    .line 12185
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    .locals 1

    .prologue
    .line 12197
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActionSlotIsMutable()V
    .locals 2

    .prologue
    .line 12282
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 12283
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->actionSlot_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->actionSlot_:Ljava/util/List;

    .line 12284
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->bitField0_:I

    .line 12286
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 12195
    return-void
.end method


# virtual methods
.method public addActionSlot(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 12335
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->ensureActionSlotIsMutable()V

    .line 12336
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->actionSlot_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12338
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12185
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 2

    .prologue
    .line 12216
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    .line 12217
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12218
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12220
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12185
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 4

    .prologue
    .line 12224
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 12225
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->bitField0_:I

    .line 12226
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 12227
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->actionSlot_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->actionSlot_:Ljava/util/List;

    .line 12228
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->bitField0_:I

    .line 12230
    :cond_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->actionSlot_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->access$14702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;Ljava/util/List;)Ljava/util/List;

    .line 12231
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12185
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12185
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    .locals 2

    .prologue
    .line 12208
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

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
    .line 12185
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActionSlot(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
    .locals 1
    .parameter "index"

    .prologue
    .line 12295
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->actionSlot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    return-object v0
.end method

.method public getActionSlotCount()I
    .locals 1

    .prologue
    .line 12292
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->actionSlot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 12185
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12185
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1

    .prologue
    .line 12212
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 12250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->getActionSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 12251
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->getActionSlot(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12253
    const/4 v1, 0x0

    .line 12256
    :goto_1
    return v1

    .line 12250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12256
    :cond_1
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
    .line 12185
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12185
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

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
    .line 12185
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12263
    const/4 v2, 0x0

    .line 12265
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12270
    if-eqz v2, :cond_0

    .line 12271
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    .line 12274
    :cond_0
    return-object p0

    .line 12266
    :catch_0
    move-exception v1

    .line 12267
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-object v2, v0

    .line 12268
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12270
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 12271
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 12235
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 12246
    :cond_0
    :goto_0
    return-object p0

    .line 12236
    :cond_1
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->access$14700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12237
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->actionSlot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12238
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->access$14700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->actionSlot_:Ljava/util/List;

    .line 12239
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->bitField0_:I

    goto :goto_0

    .line 12241
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->ensureActionSlotIsMutable()V

    .line 12242
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->actionSlot_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->actionSlot_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->access$14700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
