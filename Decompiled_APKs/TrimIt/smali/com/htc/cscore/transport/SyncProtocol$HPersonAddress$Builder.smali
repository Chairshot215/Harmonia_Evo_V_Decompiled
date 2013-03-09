.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27006
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$76400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27001
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$76500()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 1

    .prologue
    .line 27001
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27052
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27053
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 27056
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 3

    .prologue
    .line 27009
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;-><init>()V

    .line 27010
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .line 27011
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1

    .prologue
    .line 27044
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27045
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 27047
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 3

    .prologue
    .line 27060
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    if-nez v1, :cond_0

    .line 27061
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27064
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .line 27065
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .line 27066
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 27019
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    if-nez v0, :cond_0

    .line 27020
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27023
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .line 27024
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 27226
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasAddressType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$76702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27227
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->addressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$76802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    .line 27228
    return-object p0
.end method

.method public clearCity()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 27247
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCity:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$76902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27248
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCity()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->city_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27249
    return-object p0
.end method

.method public clearCountry()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 27268
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCountry:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77102(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27269
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCountry()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->country_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77202(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27270
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 27305
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27306
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27307
    return-object p0
.end method

.method public clearPersonId()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 27342
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27343
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27344
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27360
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27361
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;I)I

    .line 27362
    return-object p0
.end method

.method public clearRegion()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 27381
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasRegion:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27382
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getRegion()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->region_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27383
    return-object p0
.end method

.method public clearState()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 27402
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78102(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27403
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getState()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->state_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78202(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27404
    return-object p0
.end method

.method public clearStreet1()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 27423
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet1:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27424
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet1()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street1_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27425
    return-object p0
.end method

.method public clearStreet2()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 27444
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet2:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27445
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet2()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street2_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27446
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 3

    .prologue
    .line 27462
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27463
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;J)J

    .line 27464
    return-object p0
.end method

.method public clearZipCode()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 27483
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasZipCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27484
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getZipCode()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->zipCode_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$79002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27485
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2

    .prologue
    .line 27028
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

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
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    .locals 1

    .prologue
    .line 27215
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27236
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27257
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1

    .prologue
    .line 27037
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 27033
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 27278
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 27315
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 27352
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPriority()I

    move-result v0

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27370
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27391
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreet1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27412
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreet2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27433
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 27454
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27472
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getZipCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAddressType()Z
    .locals 1

    .prologue
    .line 27212
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasAddressType()Z

    move-result v0

    return v0
.end method

.method public hasCity()Z
    .locals 1

    .prologue
    .line 27233
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCity()Z

    move-result v0

    return v0
.end method

.method public hasCountry()Z
    .locals 1

    .prologue
    .line 27254
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCountry()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 27275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 27312
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 27349
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasRegion()Z
    .locals 1

    .prologue
    .line 27367
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasRegion()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 27388
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasState()Z

    move-result v0

    return v0
.end method

.method public hasStreet1()Z
    .locals 1

    .prologue
    .line 27409
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet1()Z

    move-result v0

    return v0
.end method

.method public hasStreet2()Z
    .locals 1

    .prologue
    .line 27430
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet2()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 27451
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasZipCode()Z
    .locals 1

    .prologue
    .line 27469
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasZipCode()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1

    .prologue
    .line 27015
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 27001
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 27041
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 27079
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 27117
    :goto_0
    return-object p0

    .line 27080
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasAddressType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27081
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setAddressType(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 27083
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27084
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setCity(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 27086
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27087
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setCountry(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 27089
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27090
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 27092
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27093
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 27095
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27096
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 27098
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27099
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setRegion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 27101
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27102
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setState(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 27104
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet1()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27105
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setStreet1(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 27107
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet2()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 27108
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getStreet2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setStreet2(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 27110
    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27111
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 27113
    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasZipCode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27114
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getZipCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setZipCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    .line 27116
    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27124
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 27128
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 27129
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 27134
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 27136
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 27137
    :goto_1
    return-object p0

    .line 27131
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 27142
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setRegion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 27146
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setZipCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 27150
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setStreet2(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 27154
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 27158
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setCity(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 27162
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 27163
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->hasPersonId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 27164
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 27166
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 27167
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 27171
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 27172
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 27173
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 27175
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 27176
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto :goto_0

    .line 27180
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setCountry(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto/16 :goto_0

    .line 27184
    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setState(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto/16 :goto_0

    .line 27188
    :sswitch_a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto/16 :goto_0

    .line 27192
    :sswitch_b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 27193
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    move-result-object v4

    .line 27194
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    if-nez v4, :cond_3

    .line 27195
    const/16 v5, 0x631

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 27197
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setAddressType(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto/16 :goto_0

    .line 27202
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    :sswitch_c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->setStreet1(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    goto/16 :goto_0

    .line 27129
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x69a -> :sswitch_1
        0xd32 -> :sswitch_2
        0xe32 -> :sswitch_3
        0x1088 -> :sswitch_4
        0x1fe2 -> :sswitch_5
        0x2512 -> :sswitch_6
        0x2892 -> :sswitch_7
        0x2b82 -> :sswitch_8
        0x2d1a -> :sswitch_9
        0x2eb0 -> :sswitch_a
        0x3188 -> :sswitch_b
        0x3cc2 -> :sswitch_c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 27070
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    if-eqz v0, :cond_0

    .line 27071
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object p0

    .line 27074
    .end local p0
    :goto_0
    return-object p0

    .line 27073
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
    .line 27001
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27001
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

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
    .line 27001
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

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
    .line 27001
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27001
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

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
    .line 27001
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27294
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 27296
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77400(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27301
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27302
    return-object p0

    .line 27299
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27331
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77600(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 27333
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77600(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27338
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27339
    return-object p0

    .line 27336
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAddressType(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27218
    if-nez p1, :cond_0

    .line 27219
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27221
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasAddressType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$76702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27222
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->addressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$76802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    .line 27223
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27239
    if-nez p1, :cond_0

    .line 27240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27242
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCity:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$76902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27243
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->city_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27244
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27260
    if-nez p1, :cond_0

    .line 27261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27263
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasCountry:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77102(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27264
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->country_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77202(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27265
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 27289
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27290
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27291
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27281
    if-nez p1, :cond_0

    .line 27282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27284
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27285
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27286
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 27326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27327
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27328
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27318
    if-nez p1, :cond_0

    .line 27319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27321
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27322
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27323
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27355
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27356
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;I)I

    .line 27357
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27373
    if-nez p1, :cond_0

    .line 27374
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27376
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasRegion:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$77902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27377
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->region_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27378
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27394
    if-nez p1, :cond_0

    .line 27395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27397
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78102(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27398
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->state_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78202(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27399
    return-object p0
.end method

.method public setStreet1(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27415
    if-nez p1, :cond_0

    .line 27416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27418
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet1:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78302(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27419
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street1_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78402(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27420
    return-object p0
.end method

.method public setStreet2(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27436
    if-nez p1, :cond_0

    .line 27437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27439
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasStreet2:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78502(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27440
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->street2_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78602(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27441
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27457
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78702(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27458
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78802(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;J)J

    .line 27459
    return-object p0
.end method

.method public setZipCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 27475
    if-nez p1, :cond_0

    .line 27476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27478
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->hasZipCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$78902(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Z)Z

    .line 27479
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->zipCode_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->access$79002(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 27480
    return-object p0
.end method
