.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2104
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2099
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 2099
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2150
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2154
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 3

    .prologue
    .line 2107
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;-><init>()V

    .line 2108
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    .line 2109
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2145
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 3

    .prologue
    .line 2158
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    if-nez v1, :cond_0

    .line 2159
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2162
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    .line 2163
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    .line 2164
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    if-nez v0, :cond_0

    .line 2118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2121
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    .line 2122
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPersonId()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->access$5702(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;Z)Z

    .line 2253
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->access$5802(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 2254
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 2126
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

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
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1

    .prologue
    .line 2135
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2131
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->hasPersonId()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2177
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2182
    :goto_0
    return-object p0

    .line 2178
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2179
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    .line 2181
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2189
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 2193
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2194
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2199
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2201
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 2202
    :goto_1
    return-object p0

    .line 2196
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 2207
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 2208
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->hasPersonId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2209
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 2211
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 2212
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    goto :goto_0

    .line 2194
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x19e2 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2168
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    if-eqz v0, :cond_0

    .line 2169
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object p0

    .line 2172
    .end local p0
    :goto_0
    return-object p0

    .line 2171
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
    .line 2099
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2099
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

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
    .line 2099
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

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
    .line 2099
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2099
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

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
    .line 2099
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->access$5800(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2243
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->access$5800(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->access$5802(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 2248
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->access$5702(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;Z)Z

    .line 2249
    return-object p0

    .line 2246
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->access$5802(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->access$5702(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;Z)Z

    .line 2237
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->access$5802(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 2238
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2228
    if-nez p1, :cond_0

    .line 2229
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2231
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->access$5702(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;Z)Z

    .line 2232
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->access$5802(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 2233
    return-object p0
.end method
