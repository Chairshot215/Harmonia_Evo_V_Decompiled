.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12960
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$36800(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12955
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$36900()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 1

    .prologue
    .line 12955
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13006
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13007
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 13010
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 3

    .prologue
    .line 12963
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;-><init>()V

    .line 12964
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    .line 12965
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1

    .prologue
    .line 12998
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12999
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 13001
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 3

    .prologue
    .line 13014
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    if-nez v1, :cond_0

    .line 13015
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13018
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    .line 13019
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    .line 13020
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 2

    .prologue
    .line 12973
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    if-nez v0, :cond_0

    .line 12974
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12977
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    .line 12978
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMessageId()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 2

    .prologue
    .line 13115
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37102(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Z)Z

    .line 13116
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37202(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13117
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 3

    .prologue
    .line 13133
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37302(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Z)Z

    .line 13134
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37402(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;J)J

    .line 13135
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 2

    .prologue
    .line 12982
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

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
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1

    .prologue
    .line 12991
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12987
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 13088
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 13125
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 13085
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasMessageId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 13122
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1

    .prologue
    .line 12969
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 12955
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 12995
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 13033
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 13041
    :goto_0
    return-object p0

    .line 13034
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13035
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    .line 13037
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13038
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    .line 13040
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13048
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 13052
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 13053
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 13058
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 13060
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 13061
    :goto_1
    return-object p0

    .line 13055
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 13066
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 13067
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->hasMessageId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 13070
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 13071
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->setMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    goto :goto_0

    .line 13075
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    goto :goto_0

    .line 13053
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1d72 -> :sswitch_1
        0x3990 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 13024
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    if-eqz v0, :cond_0

    .line 13025
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object p0

    .line 13028
    .end local p0
    :goto_0
    return-object p0

    .line 13027
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
    .line 12955
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12955
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

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
    .line 12955
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

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
    .line 12955
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12955
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

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
    .line 12955
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13104
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37200(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13106
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37200(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37202(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13111
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37102(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Z)Z

    .line 13112
    return-object p0

    .line 13109
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37202(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 13099
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37102(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Z)Z

    .line 13100
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37202(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13101
    return-object p0
.end method

.method public setMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13091
    if-nez p1, :cond_0

    .line 13092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13094
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37102(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Z)Z

    .line 13095
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37202(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13096
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13128
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37302(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;Z)Z

    .line 13129
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->access$37402(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;J)J

    .line 13130
    return-object p0
.end method
