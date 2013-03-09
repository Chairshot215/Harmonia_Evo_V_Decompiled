.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;",
            ">;"
        }
    .end annotation
.end field

.field private kansasId_:Ljava/lang/Object;

.field private language_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6320
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    .line 6486
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    .line 6575
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    .line 6321
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->maybeForceBuilderInitialization()V

    .line 6322
    return-void
.end method

.method static synthetic access$7100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1

    .prologue
    .line 6315
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 1

    .prologue
    .line 6327
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContactIsMutable()V
    .locals 2

    .prologue
    .line 6489
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 6490
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    .line 6491
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6493
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 6325
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 2

    .prologue
    .line 6350
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    .line 6351
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6352
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6354
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 5

    .prologue
    .line 6358
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 6359
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6360
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6361
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6362
    or-int/lit8 v2, v2, 0x1

    .line 6364
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6365
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6366
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    .line 6367
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6369
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;Ljava/util/List;)Ljava/util/List;

    .line 6370
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 6371
    or-int/lit8 v2, v2, 0x2

    .line 6373
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6374
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;I)I

    .line 6375
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 2

    .prologue
    .line 6342
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

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
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
    .locals 1
    .parameter "index"

    .prologue
    .line 6502
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    return-object v0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 6499
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6315
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .locals 1

    .prologue
    .line 6346
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 6404
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->getContactCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6405
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6407
    const/4 v1, 0x0

    .line 6410
    :goto_1
    return v1

    .line 6404
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6410
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
    .line 6315
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6315
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

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
    .line 6315
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6417
    const/4 v2, 0x0

    .line 6419
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6424
    if-eqz v2, :cond_0

    .line 6425
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    .line 6428
    :cond_0
    return-object p0

    .line 6420
    :catch_0
    move-exception v1

    .line 6421
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-object v2, v0

    .line 6422
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6424
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 6425
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 6379
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 6400
    :cond_0
    :goto_0
    return-object p0

    .line 6380
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->hasKansasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6381
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6382
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->kansasId_:Ljava/lang/Object;

    .line 6385
    :cond_2
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6386
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6387
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    .line 6388
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6395
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6396
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->bitField0_:I

    .line 6397
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->language_:Ljava/lang/Object;

    goto :goto_0

    .line 6390
    :cond_4
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->ensureContactIsMutable()V

    .line 6391
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->contact_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->access$7400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method
