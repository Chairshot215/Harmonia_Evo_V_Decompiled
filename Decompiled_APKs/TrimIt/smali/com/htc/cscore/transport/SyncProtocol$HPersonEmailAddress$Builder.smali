.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27771
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$79300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27766
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$79400()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 1

    .prologue
    .line 27766
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27818
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 27821
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 3

    .prologue
    .line 27774
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;-><init>()V

    .line 27775
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    .line 27776
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1

    .prologue
    .line 27809
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27810
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 27812
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 3

    .prologue
    .line 27825
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    if-nez v1, :cond_0

    .line 27826
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27829
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    .line 27830
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    .line 27831
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2

    .prologue
    .line 27784
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    if-nez v0, :cond_0

    .line 27785
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27788
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    .line 27789
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEmailAddress()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2

    .prologue
    .line 27949
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$79602(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 27950
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->emailAddress_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$79702(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27951
    return-object p0
.end method

.method public clearEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2

    .prologue
    .line 27970
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddressType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$79802(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 27971
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailHome:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$79902(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    .line 27972
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2

    .prologue
    .line 28007
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80002(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 28008
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80102(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28009
    return-object p0
.end method

.method public clearPersonId()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2

    .prologue
    .line 28044
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80202(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 28045
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80302(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28046
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28062
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80402(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 28063
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80502(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;I)I

    .line 28064
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 3

    .prologue
    .line 28080
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80602(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 28081
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80702(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;J)J

    .line 28082
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2

    .prologue
    .line 27793
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

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
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1

    .prologue
    .line 27802
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 27798
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27938
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
    .locals 1

    .prologue
    .line 27959
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 27980
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 28017
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 28054
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 28072
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasEmailAddress()Z
    .locals 1

    .prologue
    .line 27935
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddress()Z

    move-result v0

    return v0
.end method

.method public hasEmailAddressType()Z
    .locals 1

    .prologue
    .line 27956
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddressType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 27977
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 28014
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPersonId()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 28051
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 28069
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1

    .prologue
    .line 27780
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 27766
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 27806
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 27844
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 27864
    :goto_0
    return-object p0

    .line 27845
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27846
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->setEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    .line 27848
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddressType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27849
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->setEmailAddressType(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    .line 27851
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27852
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    .line 27854
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27855
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    .line 27857
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27858
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    .line 27860
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27861
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    .line 27863
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27871
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 27875
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 27876
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 27881
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 27883
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 27884
    :goto_1
    return-object p0

    .line 27878
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 27889
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    goto :goto_0

    .line 27893
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 27894
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    move-result-object v4

    .line 27895
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
    if-nez v4, :cond_1

    .line 27896
    const/16 v5, 0x246

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 27898
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->setEmailAddressType(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    goto :goto_0

    .line 27903
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 27904
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->hasPersonId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 27905
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 27907
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 27908
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    goto :goto_0

    .line 27912
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 27913
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 27914
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 27916
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 27917
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    goto :goto_0

    .line 27921
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    goto :goto_0

    .line 27925
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->setEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    goto :goto_0

    .line 27876
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1230 -> :sswitch_2
        0x2512 -> :sswitch_3
        0x2892 -> :sswitch_4
        0x2eb0 -> :sswitch_5
        0x3ac2 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 27835
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    if-eqz v0, :cond_0

    .line 27836
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object p0

    .line 27839
    .end local p0
    :goto_0
    return-object p0

    .line 27838
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
    .line 27766
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27766
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

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
    .line 27766
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

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
    .line 27766
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27766
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

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
    .line 27766
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27996
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80100(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 27998
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80100(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80102(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28003
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80002(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 28004
    return-object p0

    .line 28001
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80102(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28033
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 28035
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80302(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28040
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80202(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 28041
    return-object p0

    .line 28038
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80302(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27941
    if-nez p1, :cond_0

    .line 27942
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27944
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$79602(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 27945
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->emailAddress_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$79702(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27946
    return-object p0
.end method

.method public setEmailAddressType(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27962
    if-nez p1, :cond_0

    .line 27963
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27965
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddressType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$79802(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 27966
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$79902(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    .line 27967
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 27991
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80002(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 27992
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80102(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27993
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27983
    if-nez p1, :cond_0

    .line 27984
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27986
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80002(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 27987
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80102(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27988
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 28028
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80202(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 28029
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80302(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28030
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28020
    if-nez p1, :cond_0

    .line 28021
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28023
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80202(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 28024
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80302(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28025
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28057
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80402(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 28058
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80502(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;I)I

    .line 28059
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28075
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80602(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z

    .line 28076
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->access$80702(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;J)J

    .line 28077
    return-object p0
.end method
