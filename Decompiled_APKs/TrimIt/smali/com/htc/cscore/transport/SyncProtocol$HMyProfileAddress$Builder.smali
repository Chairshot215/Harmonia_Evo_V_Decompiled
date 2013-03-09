.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17073
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$47700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17068
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$47800()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 1

    .prologue
    .line 17068
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17119
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17120
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 17123
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 3

    .prologue
    .line 17076
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;-><init>()V

    .line 17077
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    .line 17078
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1

    .prologue
    .line 17111
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17112
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 17114
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 3

    .prologue
    .line 17127
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    if-nez v1, :cond_0

    .line 17128
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17131
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    .line 17132
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    .line 17133
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    .line 17086
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    if-nez v0, :cond_0

    .line 17087
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17090
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    .line 17091
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    .line 17293
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasAddressType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17294
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;->AddressWork:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->addressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

    .line 17295
    return-object p0
.end method

.method public clearCity()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    .line 17314
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCity:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17315
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getCity()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->city_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17316
    return-object p0
.end method

.method public clearCountry()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    .line 17335
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCountry:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17336
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getCountry()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->country_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17337
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    .line 17372
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 17374
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    .line 17409
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17410
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 17411
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17428
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;I)I

    .line 17429
    return-object p0
.end method

.method public clearRegion()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    .line 17448
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasRegion:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getRegion()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->region_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17450
    return-object p0
.end method

.method public clearState()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    .line 17469
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17470
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getState()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->state_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17471
    return-object p0
.end method

.method public clearStreet1()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    .line 17490
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet1:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17491
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getStreet1()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->street1_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17492
    return-object p0
.end method

.method public clearStreet2()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    .line 17511
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet2:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17512
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getStreet2()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->street2_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17513
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 3

    .prologue
    .line 17529
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$50002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17530
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$50102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;J)J

    .line 17531
    return-object p0
.end method

.method public clearZipCode()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    .line 17550
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasZipCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$50202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17551
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getZipCode()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->zipCode_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$50302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17552
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2

    .prologue
    .line 17095
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

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
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;
    .locals 1

    .prologue
    .line 17282
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17303
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17324
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1

    .prologue
    .line 17104
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 17100
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 17345
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 17382
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 17419
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getPriority()I

    move-result v0

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17437
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17458
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreet1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17479
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getStreet1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreet2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17500
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getStreet2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 17521
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17539
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getZipCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAddressType()Z
    .locals 1

    .prologue
    .line 17279
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasAddressType()Z

    move-result v0

    return v0
.end method

.method public hasCity()Z
    .locals 1

    .prologue
    .line 17300
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCity()Z

    move-result v0

    return v0
.end method

.method public hasCountry()Z
    .locals 1

    .prologue
    .line 17321
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCountry()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 17342
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 17379
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 17416
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasRegion()Z
    .locals 1

    .prologue
    .line 17434
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasRegion()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 17455
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasState()Z

    move-result v0

    return v0
.end method

.method public hasStreet1()Z
    .locals 1

    .prologue
    .line 17476
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet1()Z

    move-result v0

    return v0
.end method

.method public hasStreet2()Z
    .locals 1

    .prologue
    .line 17497
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet2()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 17518
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasZipCode()Z
    .locals 1

    .prologue
    .line 17536
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasZipCode()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1

    .prologue
    .line 17082
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 17068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 17108
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 17146
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 17184
    :goto_0
    return-object p0

    .line 17147
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasAddressType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17148
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setAddressType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    .line 17150
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17151
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setCity(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    .line 17153
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17154
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setCountry(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    .line 17156
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17157
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    .line 17159
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17160
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    .line 17162
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17163
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    .line 17165
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17166
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setRegion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    .line 17168
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17169
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setState(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    .line 17171
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet1()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17172
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getStreet1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setStreet1(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    .line 17174
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet2()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17175
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getStreet2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setStreet2(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    .line 17177
    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 17178
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    .line 17180
    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasZipCode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 17181
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getZipCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setZipCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    .line 17183
    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17191
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 17195
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 17196
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 17201
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 17203
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 17204
    :goto_1
    return-object p0

    .line 17198
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 17209
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setRegion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    goto :goto_0

    .line 17213
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setZipCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    goto :goto_0

    .line 17217
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setStreet2(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    goto :goto_0

    .line 17221
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    goto :goto_0

    .line 17225
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setCity(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    goto :goto_0

    .line 17229
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 17230
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 17231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 17233
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 17234
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    goto :goto_0

    .line 17238
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setCountry(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    goto :goto_0

    .line 17242
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setState(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    goto :goto_0

    .line 17246
    :sswitch_9
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 17247
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->hasMyProfileId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17248
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 17250
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 17251
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    goto/16 :goto_0

    .line 17255
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    goto/16 :goto_0

    .line 17259
    :sswitch_b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 17260
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

    move-result-object v4

    .line 17261
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;
    if-nez v4, :cond_3

    .line 17262
    const/16 v5, 0x631

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 17264
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setAddressType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    goto/16 :goto_0

    .line 17269
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;
    :sswitch_c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->setStreet1(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    goto/16 :goto_0

    .line 17196
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x69a -> :sswitch_1
        0xd32 -> :sswitch_2
        0xe32 -> :sswitch_3
        0x1088 -> :sswitch_4
        0x1fe2 -> :sswitch_5
        0x2892 -> :sswitch_6
        0x2b82 -> :sswitch_7
        0x2d1a -> :sswitch_8
        0x2d3a -> :sswitch_9
        0x2eb0 -> :sswitch_a
        0x3188 -> :sswitch_b
        0x3cc2 -> :sswitch_c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 17137
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    if-eqz v0, :cond_0

    .line 17138
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object p0

    .line 17141
    .end local p0
    :goto_0
    return-object p0

    .line 17140
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
    .line 17068
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17068
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

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
    .line 17068
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

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
    .line 17068
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17068
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

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
    .line 17068
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17361
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 17363
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 17368
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17369
    return-object p0

    .line 17366
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17398
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 17400
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 17405
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17406
    return-object p0

    .line 17403
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAddressType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17285
    if-nez p1, :cond_0

    .line 17286
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17288
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasAddressType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17289
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->addressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

    .line 17290
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17306
    if-nez p1, :cond_0

    .line 17307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17309
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCity:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17310
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->city_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17311
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17327
    if-nez p1, :cond_0

    .line 17328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17330
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCountry:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17331
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->country_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17332
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 17356
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17357
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 17358
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17348
    if-nez p1, :cond_0

    .line 17349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17351
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17352
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 17353
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 17393
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17394
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 17395
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17385
    if-nez p1, :cond_0

    .line 17386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17388
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17389
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$48902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 17390
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17422
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17423
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;I)I

    .line 17424
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17440
    if-nez p1, :cond_0

    .line 17441
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17443
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasRegion:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17444
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->region_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17445
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17461
    if-nez p1, :cond_0

    .line 17462
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17464
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17465
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->state_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17466
    return-object p0
.end method

.method public setStreet1(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17482
    if-nez p1, :cond_0

    .line 17483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17485
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet1:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17486
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->street1_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17487
    return-object p0
.end method

.method public setStreet2(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17503
    if-nez p1, :cond_0

    .line 17504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17506
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet2:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17507
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->street2_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$49902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17508
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17524
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$50002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17525
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$50102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;J)J

    .line 17526
    return-object p0
.end method

.method public setZipCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 17542
    if-nez p1, :cond_0

    .line 17543
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17545
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasZipCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$50202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z

    .line 17546
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->zipCode_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->access$50302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 17547
    return-object p0
.end method
