.class public final Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HSound;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37969
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$109900(Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37964
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$110000()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 1

    .prologue
    .line 37964
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38015
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38016
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 38019
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 3

    .prologue
    .line 37972
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;-><init>()V

    .line 37973
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSound;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    .line 37974
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1

    .prologue
    .line 38007
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38008
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 38010
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 3

    .prologue
    .line 38023
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    if-nez v1, :cond_0

    .line 38024
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38027
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    .line 38028
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HSound;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    .line 38029
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2

    .prologue
    .line 37982
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    if-nez v0, :cond_0

    .line 37983
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37986
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    .line 37987
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFeedId()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2

    .prologue
    .line 38129
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasFeedId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110202(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z

    .line 38130
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getFeedId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->feedId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110302(Lcom/htc/cscore/transport/SyncProtocol$HSound;Ljava/lang/String;)Ljava/lang/String;

    .line 38131
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2

    .prologue
    .line 38166
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110402(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z

    .line 38167
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110502(Lcom/htc/cscore/transport/SyncProtocol$HSound;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 38168
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 3

    .prologue
    .line 38184
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110602(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z

    .line 38185
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110702(Lcom/htc/cscore/transport/SyncProtocol$HSound;J)J

    .line 38186
    return-object p0
.end method

.method public clearType()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2

    .prologue
    .line 38205
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110802(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z

    .line 38206
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->type_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110902(Lcom/htc/cscore/transport/SyncProtocol$HSound;Ljava/lang/String;)Ljava/lang/String;

    .line 38207
    return-object p0
.end method

.method public clearUri()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2

    .prologue
    .line 38226
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasUri:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$111002(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z

    .line 38227
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getUri()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->uri_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$111102(Lcom/htc/cscore/transport/SyncProtocol$HSound;Ljava/lang/String;)Ljava/lang/String;

    .line 38228
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2

    .prologue
    .line 37991
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

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
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1

    .prologue
    .line 38000
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 37996
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38118
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getFeedId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 38139
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 38176
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38194
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38215
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFeedId()Z
    .locals 1

    .prologue
    .line 38115
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasFeedId()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 38136
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 38173
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 38191
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    .line 38212
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasUri()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1

    .prologue
    .line 37978
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 37964
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 38004
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 38042
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 38059
    :goto_0
    return-object p0

    .line 38043
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasFeedId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38044
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getFeedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->setFeedId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    .line 38046
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38047
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    .line 38049
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38050
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    .line 38052
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38053
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->setType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    .line 38055
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38056
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->setUri(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    .line 38058
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38066
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 38070
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 38071
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 38076
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38078
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 38079
    :goto_1
    return-object p0

    .line 38073
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 38084
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    goto :goto_0

    .line 38088
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->setFeedId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    goto :goto_0

    .line 38092
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 38093
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38094
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 38096
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 38097
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    goto :goto_0

    .line 38101
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->setType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    goto :goto_0

    .line 38105
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->setUri(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    goto :goto_0

    .line 38071
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x207a -> :sswitch_2
        0x2892 -> :sswitch_3
        0x2dd2 -> :sswitch_4
        0x2f22 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 38033
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HSound;

    if-eqz v0, :cond_0

    .line 38034
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HSound;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object p0

    .line 38037
    .end local p0
    :goto_0
    return-object p0

    .line 38036
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
    .line 37964
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37964
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

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
    .line 37964
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

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
    .line 37964
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37964
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

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
    .line 37964
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 38155
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110500(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 38157
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110500(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110502(Lcom/htc/cscore/transport/SyncProtocol$HSound;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 38162
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110402(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z

    .line 38163
    return-object p0

    .line 38160
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110502(Lcom/htc/cscore/transport/SyncProtocol$HSound;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setFeedId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 38121
    if-nez p1, :cond_0

    .line 38122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38124
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasFeedId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110202(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z

    .line 38125
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->feedId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110302(Lcom/htc/cscore/transport/SyncProtocol$HSound;Ljava/lang/String;)Ljava/lang/String;

    .line 38126
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 38150
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110402(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z

    .line 38151
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110502(Lcom/htc/cscore/transport/SyncProtocol$HSound;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 38152
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 38142
    if-nez p1, :cond_0

    .line 38143
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38145
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110402(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z

    .line 38146
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110502(Lcom/htc/cscore/transport/SyncProtocol$HSound;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 38147
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 38179
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110602(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z

    .line 38180
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110702(Lcom/htc/cscore/transport/SyncProtocol$HSound;J)J

    .line 38181
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 38197
    if-nez p1, :cond_0

    .line 38198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38200
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110802(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z

    .line 38201
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->type_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$110902(Lcom/htc/cscore/transport/SyncProtocol$HSound;Ljava/lang/String;)Ljava/lang/String;

    .line 38202
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 38218
    if-nez p1, :cond_0

    .line 38219
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38221
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasUri:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$111002(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z

    .line 38222
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSound;->uri_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->access$111102(Lcom/htc/cscore/transport/SyncProtocol$HSound;Ljava/lang/String;)Ljava/lang/String;

    .line 38223
    return-object p0
.end method
