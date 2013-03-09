.class public final Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46943
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$134800(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46938
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$134900()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 1

    .prologue
    .line 46938
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46989
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46990
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 46993
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 3

    .prologue
    .line 46946
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;-><init>()V

    .line 46947
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 46948
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 1

    .prologue
    .line 46981
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46982
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 46984
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 3

    .prologue
    .line 46997
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    if-nez v1, :cond_0

    .line 46998
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47001
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 47002
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 47003
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2

    .prologue
    .line 46956
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    if-nez v0, :cond_0

    .line 46957
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46960
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 46961
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCreateDate()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 3

    .prologue
    .line 47100
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47101
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->createDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;J)J

    .line 47102
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2

    .prologue
    .line 47137
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47138
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 47139
    return-object p0
.end method

.method public clearIsViewed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47155
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasIsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47156
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->isViewed_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47157
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2

    .prologue
    .line 47176
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47177
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->phoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Ljava/lang/String;)Ljava/lang/String;

    .line 47178
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 3

    .prologue
    .line 47194
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47195
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$136002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;J)J

    .line 47196
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2

    .prologue
    .line 46965
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

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
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCreateDate()J
    .locals 2

    .prologue
    .line 47092
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getCreateDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 1

    .prologue
    .line 46974
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 46970
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 47110
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getIsViewed()Z
    .locals 1

    .prologue
    .line 47147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getIsViewed()Z

    move-result v0

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47165
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 47186
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCreateDate()Z
    .locals 1

    .prologue
    .line 47089
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasCreateDate()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 47107
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasIsViewed()Z
    .locals 1

    .prologue
    .line 47144
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasIsViewed()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 47162
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 47183
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 1

    .prologue
    .line 46952
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 46938
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 46978
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 47016
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 47033
    :goto_0
    return-object p0

    .line 47017
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasCreateDate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47018
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getCreateDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    .line 47020
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47021
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    .line 47023
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasIsViewed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47024
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getIsViewed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->setIsViewed(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    .line 47026
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47027
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    .line 47029
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47030
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    .line 47032
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47040
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 47044
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 47045
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 47050
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47052
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 47053
    :goto_1
    return-object p0

    .line 47047
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 47058
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    goto :goto_0

    .line 47062
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->setIsViewed(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    goto :goto_0

    .line 47066
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    goto :goto_0

    .line 47070
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 47071
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47072
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 47074
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 47075
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    goto :goto_0

    .line 47079
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    goto :goto_0

    .line 47045
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x17f0 -> :sswitch_2
        0x1ce8 -> :sswitch_3
        0x2892 -> :sswitch_4
        0x2e6a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 47007
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    if-eqz v0, :cond_0

    .line 47008
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object p0

    .line 47011
    .end local p0
    :goto_0
    return-object p0

    .line 47010
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
    .line 46938
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46938
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

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
    .line 46938
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

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
    .line 46938
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46938
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

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
    .line 46938
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 47126
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135400(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 47128
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135400(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 47133
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47134
    return-object p0

    .line 47131
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 47095
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47096
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->createDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;J)J

    .line 47097
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 47121
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47122
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 47123
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 47113
    if-nez p1, :cond_0

    .line 47114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47116
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47117
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 47118
    return-object p0
.end method

.method public setIsViewed(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 47150
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasIsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47151
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->isViewed_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47152
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 47168
    if-nez p1, :cond_0

    .line 47169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47171
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47172
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->phoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Ljava/lang/String;)Ljava/lang/String;

    .line 47173
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 47189
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$135902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;Z)Z

    .line 47190
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->access$136002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;J)J

    .line 47191
    return-object p0
.end method
