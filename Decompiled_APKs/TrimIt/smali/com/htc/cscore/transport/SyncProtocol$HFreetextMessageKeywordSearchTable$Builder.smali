.class public final Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10674
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$30800(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10669
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$30900()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 1

    .prologue
    .line 10669
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10720
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10721
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 10724
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 3

    .prologue
    .line 10677
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;-><init>()V

    .line 10678
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    .line 10679
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1

    .prologue
    .line 10712
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10713
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 10715
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 3

    .prologue
    .line 10728
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    if-nez v1, :cond_0

    .line 10729
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10732
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    .line 10733
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    .line 10734
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 2

    .prologue
    .line 10687
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    if-nez v0, :cond_0

    .line 10688
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10691
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    .line 10692
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 2

    .prologue
    .line 10822
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->access$31102(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;Z)Z

    .line 10823
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->access$31202(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 10824
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 2

    .prologue
    .line 10696
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

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
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1

    .prologue
    .line 10705
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10701
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 10795
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 10792
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->hasId()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;
    .locals 1

    .prologue
    .line 10683
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 10669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 10709
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 10747
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 10752
    :goto_0
    return-object p0

    .line 10748
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10749
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    .line 10751
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10759
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 10763
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10764
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 10769
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10771
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 10772
    :goto_1
    return-object p0

    .line 10766
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 10777
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 10778
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10779
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 10781
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 10782
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    goto :goto_0

    .line 10764
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2892 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 10738
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    if-eqz v0, :cond_0

    .line 10739
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object p0

    .line 10742
    .end local p0
    :goto_0
    return-object p0

    .line 10741
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
    .line 10669
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10669
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

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
    .line 10669
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

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
    .line 10669
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10669
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

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
    .line 10669
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 10811
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->access$31200(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10813
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->access$31200(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->access$31202(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 10818
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->access$31102(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;Z)Z

    .line 10819
    return-object p0

    .line 10816
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->access$31202(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 10806
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->access$31102(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;Z)Z

    .line 10807
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->access$31202(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 10808
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 10798
    if-nez p1, :cond_0

    .line 10799
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10801
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->access$31102(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;Z)Z

    .line 10802
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;->access$31202(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 10803
    return-object p0
.end method
