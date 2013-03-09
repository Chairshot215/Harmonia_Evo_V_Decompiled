.class public final Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44837
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$130400(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44832
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$130500()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;
    .locals 1

    .prologue
    .line 44832
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44883
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44884
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 44887
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;
    .locals 3

    .prologue
    .line 44840
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;-><init>()V

    .line 44841
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    .line 44842
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 1

    .prologue
    .line 44875
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44876
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 44878
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 3

    .prologue
    .line 44891
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    if-nez v1, :cond_0

    .line 44892
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44895
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    .line 44896
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    .line 44897
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;
    .locals 2

    .prologue
    .line 44850
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    if-nez v0, :cond_0

    .line 44851
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44854
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    .line 44855
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;
    .locals 2

    .prologue
    .line 44859
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

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
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 1

    .prologue
    .line 44868
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 44864
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 1

    .prologue
    .line 44846
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 44832
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 44872
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 44910
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 44912
    :goto_0
    return-object p0

    .line 44911
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44919
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 44923
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 44924
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 44929
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44931
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 44932
    :goto_0
    return-object p0

    .line 44926
    :pswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 44924
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 44901
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    if-eqz v0, :cond_0

    .line 44902
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object p0

    .line 44905
    .end local p0
    :goto_0
    return-object p0

    .line 44904
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
    .line 44832
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44832
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

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
    .line 44832
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

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
    .line 44832
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44832
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

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
    .line 44832
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v0

    return-object v0
.end method
