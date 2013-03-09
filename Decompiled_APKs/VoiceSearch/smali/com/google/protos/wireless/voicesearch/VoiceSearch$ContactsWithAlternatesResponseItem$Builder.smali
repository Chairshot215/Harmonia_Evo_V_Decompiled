.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11351
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11440
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->contact_:Ljava/util/List;

    .line 11352
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->maybeForceBuilderInitialization()V

    .line 11353
    return-void
.end method

.method static synthetic access$13500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;
    .locals 1

    .prologue
    .line 11346
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;
    .locals 1

    .prologue
    .line 11358
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContactIsMutable()V
    .locals 2

    .prologue
    .line 11443
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 11444
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->contact_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->contact_:Ljava/util/List;

    .line 11445
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->bitField0_:I

    .line 11447
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 11356
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11346
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
    .locals 2

    .prologue
    .line 11377
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v0

    .line 11378
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11379
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11381
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11346
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
    .locals 4

    .prologue
    .line 11385
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 11386
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->bitField0_:I

    .line 11387
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 11388
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->contact_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->contact_:Ljava/util/List;

    .line 11389
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->bitField0_:I

    .line 11391
    :cond_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->contact_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->access$13702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;Ljava/util/List;)Ljava/util/List;

    .line 11392
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11346
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11346
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;
    .locals 2

    .prologue
    .line 11369
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

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
    .line 11346
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 11456
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    return-object v0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 11453
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 11346
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11346
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
    .locals 1

    .prologue
    .line 11373
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 11411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->getContactCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 11412
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11414
    const/4 v1, 0x0

    .line 11417
    :goto_1
    return v1

    .line 11411
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11417
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
    .line 11346
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11346
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

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
    .line 11346
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11424
    const/4 v2, 0x0

    .line 11426
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11431
    if-eqz v2, :cond_0

    .line 11432
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    .line 11435
    :cond_0
    return-object p0

    .line 11427
    :catch_0
    move-exception v1

    .line 11428
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-object v2, v0

    .line 11429
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11431
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 11432
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 11396
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 11407
    :cond_0
    :goto_0
    return-object p0

    .line 11397
    :cond_1
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->access$13700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11398
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11399
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->access$13700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->contact_:Ljava/util/List;

    .line 11400
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->bitField0_:I

    goto :goto_0

    .line 11402
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->ensureContactIsMutable()V

    .line 11403
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->contact_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->access$13700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
