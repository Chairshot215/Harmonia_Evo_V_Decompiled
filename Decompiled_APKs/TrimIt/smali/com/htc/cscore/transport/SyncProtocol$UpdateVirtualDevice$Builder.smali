.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46593
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$134100(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46588
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$134200()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 1

    .prologue
    .line 46588
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46639
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46640
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 46643
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 46596
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;-><init>()V

    .line 46597
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    .line 46598
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    .prologue
    .line 46631
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46632
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 46634
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 3

    .prologue
    .line 46647
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    if-nez v1, :cond_0

    .line 46648
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46651
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    .line 46652
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    .line 46653
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 46606
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    if-nez v0, :cond_0

    .line 46607
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46610
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    .line 46611
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 46741
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134402(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Z)Z

    .line 46742
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134502(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 46743
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 46615
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

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
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    .prologue
    .line 46624
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 46620
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1

    .prologue
    .line 46714
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public hasVirtualDevice()Z
    .locals 1

    .prologue
    .line 46711
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    .prologue
    .line 46602
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 46588
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 46628
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 46666
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 46671
    :goto_0
    return-object p0

    .line 46667
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46668
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    .line 46670
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46678
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 46682
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 46683
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 46688
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46690
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 46691
    :goto_1
    return-object p0

    .line 46685
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 46696
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    .line 46697
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->hasVirtualDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46698
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->getVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 46700
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 46701
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->setVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    goto :goto_0

    .line 46683
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x13e2 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 46657
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    if-eqz v0, :cond_0

    .line 46658
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object p0

    .line 46661
    .end local p0
    :goto_0
    return-object p0

    .line 46660
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
    .line 46588
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46588
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

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
    .line 46588
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

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
    .line 46588
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46588
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

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
    .line 46588
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 46730
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134500(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 46732
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134500(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134502(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 46737
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134402(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Z)Z

    .line 46738
    return-object p0

    .line 46735
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134502(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    goto :goto_0
.end method

.method public setVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 46725
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134402(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Z)Z

    .line 46726
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134502(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 46727
    return-object p0
.end method

.method public setVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 46717
    if-nez p1, :cond_0

    .line 46718
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46720
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134402(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Z)Z

    .line 46721
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134502(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 46722
    return-object p0
.end method
