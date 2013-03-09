.class public final Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2673
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2668
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 2668
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2719
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2720
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2723
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 3

    .prologue
    .line 2676
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;-><init>()V

    .line 2677
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    .line 2678
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1

    .prologue
    .line 2711
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2712
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2714
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 3

    .prologue
    .line 2727
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    if-nez v1, :cond_0

    .line 2728
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2731
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    .line 2732
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    .line 2733
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    if-nez v0, :cond_0

    .line 2687
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2690
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    .line 2691
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFilename()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->hasFilename:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->access$7102(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;Z)Z

    .line 2801
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getFilename()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->filename_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->access$7202(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 2802
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 2695
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

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
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1

    .prologue
    .line 2704
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2700
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFilename()Z
    .locals 1

    .prologue
    .line 2786
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->hasFilename()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2746
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2751
    :goto_0
    return-object p0

    .line 2747
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->hasFilename()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2748
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->setFilename(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    .line 2750
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2758
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 2762
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2763
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2768
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2770
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 2771
    :goto_1
    return-object p0

    .line 2765
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 2776
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->setFilename(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    goto :goto_0

    .line 2763
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x27ca -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2737
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    if-eqz v0, :cond_0

    .line 2738
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object p0

    .line 2741
    .end local p0
    :goto_0
    return-object p0

    .line 2740
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
    .line 2668
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2668
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

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
    .line 2668
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

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
    .line 2668
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2668
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

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
    .line 2668
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFilename(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2792
    if-nez p1, :cond_0

    .line 2793
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2795
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->hasFilename:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->access$7102(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;Z)Z

    .line 2796
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->filename_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->access$7202(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 2797
    return-object p0
.end method
