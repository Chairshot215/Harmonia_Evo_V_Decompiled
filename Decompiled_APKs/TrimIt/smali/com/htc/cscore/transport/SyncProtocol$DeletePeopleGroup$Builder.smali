.class public final Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24789
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24784
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$71200()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 1

    .prologue
    .line 24784
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24835
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24836
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 24839
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 3

    .prologue
    .line 24792
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;-><init>()V

    .line 24793
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 24794
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    .prologue
    .line 24827
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24828
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 24830
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 3

    .prologue
    .line 24843
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    if-nez v1, :cond_0

    .line 24844
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24847
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 24848
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 24849
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2

    .prologue
    .line 24802
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    if-nez v0, :cond_0

    .line 24803
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24806
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 24807
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2

    .prologue
    .line 24944
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z

    .line 24945
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 24946
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 3

    .prologue
    .line 24962
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71602(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z

    .line 24963
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71702(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;J)J

    .line 24964
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2

    .prologue
    .line 24811
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

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
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    .prologue
    .line 24820
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 24816
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 24917
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 24954
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPeopleGroupId()Z
    .locals 1

    .prologue
    .line 24914
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 24951
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    .prologue
    .line 24798
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 24784
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 24824
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 24862
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 24870
    :goto_0
    return-object p0

    .line 24863
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24864
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergePeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    .line 24866
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24867
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    .line 24869
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24877
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 24881
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 24882
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 24887
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 24889
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 24890
    :goto_1
    return-object p0

    .line 24884
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 24895
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    goto :goto_0

    .line 24899
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 24900
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->hasPeopleGroupId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24901
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 24903
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 24904
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->setPeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    goto :goto_0

    .line 24882
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3990 -> :sswitch_1
        0x3fba -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 24853
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    if-eqz v0, :cond_0

    .line 24854
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object p0

    .line 24857
    .end local p0
    :goto_0
    return-object p0

    .line 24856
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
    .line 24784
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24784
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

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
    .line 24784
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

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
    .line 24784
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24784
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

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
    .line 24784
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24933
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 24935
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 24940
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z

    .line 24941
    return-object p0

    .line 24938
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setPeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 24928
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z

    .line 24929
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 24930
    return-object p0
.end method

.method public setPeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24920
    if-nez p1, :cond_0

    .line 24921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24923
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z

    .line 24924
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 24925
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24957
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71602(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z

    .line 24958
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71702(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;J)J

    .line 24959
    return-object p0
.end method
