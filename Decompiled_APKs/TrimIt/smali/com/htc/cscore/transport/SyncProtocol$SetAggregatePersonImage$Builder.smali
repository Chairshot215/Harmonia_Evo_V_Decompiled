.class public final Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2945
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7500(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2940
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 2940
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2991
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2992
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2995
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 3

    .prologue
    .line 2948
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;-><init>()V

    .line 2949
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    .line 2950
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2984
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2986
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 3

    .prologue
    .line 2999
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    if-nez v1, :cond_0

    .line 3000
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3003
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    .line 3004
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    .line 3005
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    if-nez v0, :cond_0

    .line 2959
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2962
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    .line 2963
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->access$7802(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;Z)Z

    .line 3094
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->access$7902(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 3095
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 2967
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

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
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1

    .prologue
    .line 2976
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2972
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public hasPersonImage()Z
    .locals 1

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->hasPersonImage()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3018
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3023
    :goto_0
    return-object p0

    .line 3019
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->hasPersonImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3020
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    .line 3022
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3030
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 3034
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3035
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 3040
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3042
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 3043
    :goto_1
    return-object p0

    .line 3037
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 3048
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    .line 3049
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->hasPersonImage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3050
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 3052
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 3053
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->setPersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    goto :goto_0

    .line 3035
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1192 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3009
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    if-eqz v0, :cond_0

    .line 3010
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object p0

    .line 3013
    .end local p0
    :goto_0
    return-object p0

    .line 3012
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
    .line 2940
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2940
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

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
    .line 2940
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

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
    .line 2940
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2940
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

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
    .line 2940
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3082
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->hasPersonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->access$7900(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3084
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->access$7900(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->access$7902(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 3089
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->access$7802(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;Z)Z

    .line 3090
    return-object p0

    .line 3087
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->access$7902(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    goto :goto_0
.end method

.method public setPersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3077
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->access$7802(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;Z)Z

    .line 3078
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->access$7902(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 3079
    return-object p0
.end method

.method public setPersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3069
    if-nez p1, :cond_0

    .line 3070
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3072
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->access$7802(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;Z)Z

    .line 3073
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->access$7902(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 3074
    return-object p0
.end method
