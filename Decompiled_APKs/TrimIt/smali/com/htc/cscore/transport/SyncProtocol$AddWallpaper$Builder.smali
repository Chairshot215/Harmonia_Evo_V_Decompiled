.class public final Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49134
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$141400(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49129
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$141500()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 1

    .prologue
    .line 49129
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49180
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49181
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 49184
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 3

    .prologue
    .line 49137
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;-><init>()V

    .line 49138
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    .line 49139
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1

    .prologue
    .line 49172
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49173
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 49175
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 3

    .prologue
    .line 49188
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    if-nez v1, :cond_0

    .line 49189
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49192
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    .line 49193
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    .line 49194
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 2

    .prologue
    .line 49147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    if-nez v0, :cond_0

    .line 49148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49151
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    .line 49152
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 2

    .prologue
    .line 49282
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->hasWallpaper:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->access$141702(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;Z)Z

    .line 49283
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->wallpaper_:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->access$141802(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    .line 49284
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 2

    .prologue
    .line 49156
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

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
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1

    .prologue
    .line 49165
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 49161
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaper()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1

    .prologue
    .line 49255
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getWallpaper()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public hasWallpaper()Z
    .locals 1

    .prologue
    .line 49252
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->hasWallpaper()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1

    .prologue
    .line 49143
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 49129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 49169
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 49207
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 49212
    :goto_0
    return-object p0

    .line 49208
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->hasWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49209
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getWallpaper()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeWallpaper(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    .line 49211
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49219
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 49223
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 49224
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 49229
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49231
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 49232
    :goto_1
    return-object p0

    .line 49226
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 49237
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    .line 49238
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->hasWallpaper()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49239
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->getWallpaper()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    .line 49241
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 49242
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->setWallpaper(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    goto :goto_0

    .line 49224
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x892 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 49198
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    if-eqz v0, :cond_0

    .line 49199
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object p0

    .line 49202
    .end local p0
    :goto_0
    return-object p0

    .line 49201
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
    .line 49129
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49129
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

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
    .line 49129
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

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
    .line 49129
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49129
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

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
    .line 49129
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeWallpaper(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 49271
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->hasWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->wallpaper_:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->access$141800(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 49273
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->wallpaper_:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->access$141800(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->wallpaper_:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->access$141802(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    .line 49278
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->hasWallpaper:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->access$141702(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;Z)Z

    .line 49279
    return-object p0

    .line 49276
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->wallpaper_:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->access$141802(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    goto :goto_0
.end method

.method public setWallpaper(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 49266
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->hasWallpaper:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->access$141702(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;Z)Z

    .line 49267
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->wallpaper_:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->access$141802(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    .line 49268
    return-object p0
.end method

.method public setWallpaper(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 49258
    if-nez p1, :cond_0

    .line 49259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49261
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->hasWallpaper:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->access$141702(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;Z)Z

    .line 49262
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->wallpaper_:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->access$141802(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    .line 49263
    return-object p0
.end method
