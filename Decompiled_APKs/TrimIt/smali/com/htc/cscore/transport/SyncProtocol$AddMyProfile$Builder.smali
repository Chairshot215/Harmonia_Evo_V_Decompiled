.class public final Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16262
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$46300(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16257
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$46400()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 1

    .prologue
    .line 16257
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16309
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 16312
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 3

    .prologue
    .line 16265
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;-><init>()V

    .line 16266
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    .line 16267
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1

    .prologue
    .line 16300
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16301
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 16303
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 3

    .prologue
    .line 16316
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    if-nez v1, :cond_0

    .line 16317
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16320
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    .line 16321
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    .line 16322
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 2

    .prologue
    .line 16275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    if-nez v0, :cond_0

    .line 16276
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16279
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    .line 16280
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 2

    .prologue
    .line 16410
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->access$46602(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;Z)Z

    .line 16411
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->access$46702(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 16412
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 2

    .prologue
    .line 16284
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

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
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1

    .prologue
    .line 16293
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 16289
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 16383
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public hasMyProfile()Z
    .locals 1

    .prologue
    .line 16380
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->hasMyProfile()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1

    .prologue
    .line 16271
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 16257
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 16297
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 16335
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 16340
    :goto_0
    return-object p0

    .line 16336
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->hasMyProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16337
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    .line 16339
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 16351
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 16352
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 16357
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 16359
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 16360
    :goto_1
    return-object p0

    .line 16354
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 16365
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    .line 16366
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->hasMyProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16367
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 16369
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 16370
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->setMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    goto :goto_0

    .line 16352
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1fb2 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 16326
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    if-eqz v0, :cond_0

    .line 16327
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object p0

    .line 16330
    .end local p0
    :goto_0
    return-object p0

    .line 16329
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16257
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16257
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16257
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16257
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16257
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16257
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 16399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->hasMyProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->access$46700(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 16401
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->access$46700(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->access$46702(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 16406
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->access$46602(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;Z)Z

    .line 16407
    return-object p0

    .line 16404
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->access$46702(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    goto :goto_0
.end method

.method public setMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 16394
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->access$46602(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;Z)Z

    .line 16395
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->access$46702(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 16396
    return-object p0
.end method

.method public setMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 16386
    if-nez p1, :cond_0

    .line 16387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16389
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->access$46602(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;Z)Z

    .line 16390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->access$46702(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 16391
    return-object p0
.end method
