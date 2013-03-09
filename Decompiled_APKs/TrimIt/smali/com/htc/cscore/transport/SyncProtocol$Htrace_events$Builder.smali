.class public final Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39575
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$114300(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39570
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$114400()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 1

    .prologue
    .line 39570
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39622
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 39625
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 3

    .prologue
    .line 39578
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;-><init>()V

    .line 39579
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    .line 39580
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1

    .prologue
    .line 39613
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39614
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 39616
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 3

    .prologue
    .line 39629
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    if-nez v1, :cond_0

    .line 39630
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39633
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    .line 39634
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    .line 39635
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 2

    .prologue
    .line 39588
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    if-nez v0, :cond_0

    .line 39589
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39592
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    .line 39593
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 2

    .prologue
    .line 39723
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->access$114602(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;Z)Z

    .line 39724
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->access$114702(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39725
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 2

    .prologue
    .line 39597
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

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
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1

    .prologue
    .line 39606
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 39602
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 39696
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 39693
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->hasId()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;
    .locals 1

    .prologue
    .line 39584
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 39570
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 39610
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 39648
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 39653
    :goto_0
    return-object p0

    .line 39649
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39650
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    .line 39652
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39660
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 39664
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 39665
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 39670
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 39672
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 39673
    :goto_1
    return-object p0

    .line 39667
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 39678
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 39679
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39680
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 39682
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 39683
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    goto :goto_0

    .line 39665
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2892 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 39639
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    if-eqz v0, :cond_0

    .line 39640
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object p0

    .line 39643
    .end local p0
    :goto_0
    return-object p0

    .line 39642
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
    .line 39570
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39570
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

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
    .line 39570
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

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
    .line 39570
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39570
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

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
    .line 39570
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39712
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->access$114700(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 39714
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->access$114700(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->access$114702(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39719
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->access$114602(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;Z)Z

    .line 39720
    return-object p0

    .line 39717
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->access$114702(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 39707
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->access$114602(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;Z)Z

    .line 39708
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->access$114702(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39709
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39699
    if-nez p1, :cond_0

    .line 39700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39702
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->access$114602(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;Z)Z

    .line 39703
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;->access$114702(Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39704
    return-object p0
.end method
