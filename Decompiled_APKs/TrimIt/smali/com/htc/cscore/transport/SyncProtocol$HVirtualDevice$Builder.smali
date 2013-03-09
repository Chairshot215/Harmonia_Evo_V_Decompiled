.class public final Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40658
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$115000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40653
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$115100()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 1

    .prologue
    .line 40653
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40704
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40705
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 40708
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 40661
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;-><init>()V

    .line 40662
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 40663
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1

    .prologue
    .line 40696
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40697
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 40699
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 3

    .prologue
    .line 40712
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    if-nez v1, :cond_0

    .line 40713
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40716
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 40717
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 40718
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 40671
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    if-nez v0, :cond_0

    .line 40672
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40675
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 40676
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccountId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41198
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41199
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41200
    return-object p0
.end method

.method public clearAlternateNumber()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41219
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAlternateNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41220
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAlternateNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->alternateNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41221
    return-object p0
.end method

.method public clearAreaCode()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41240
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAreaCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41241
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->areaCode_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41242
    return-object p0
.end method

.method public clearBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41277
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41278
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41279
    return-object p0
.end method

.method public clearCallForwardPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41319
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41320
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41321
    return-object p0
.end method

.method public clearCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41356
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41357
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41358
    return-object p0
.end method

.method public clearCallForwardingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41298
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardingState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41299
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 41300
    return-object p0
.end method

.method public clearCountryCode()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41377
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCountryCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41378
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->countryCode_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41379
    return-object p0
.end method

.method public clearCurrentLocationLatitude()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 41395
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLatitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41396
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLatitude_:D
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;D)D

    .line 41397
    return-object p0
.end method

.method public clearCurrentLocationLongitude()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 41413
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLongitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41414
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLongitude_:D
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;D)D

    .line 41415
    return-object p0
.end method

.method public clearDeviceVersion()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41434
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasDeviceVersion:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41435
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDeviceVersion()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->deviceVersion_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41436
    return-object p0
.end method

.method public clearForceRingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41455
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasForceRingState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41456
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->forceRingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 41457
    return-object p0
.end method

.method public clearHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41492
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41493
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41494
    return-object p0
.end method

.method public clearHandsetLocale()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41513
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetLocale:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41514
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetLocale()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetLocale_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41515
    return-object p0
.end method

.method public clearIDD()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41571
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIDD:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41572
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIDD()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->iDD_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41573
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41550
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41551
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41552
    return-object p0
.end method

.method public clearIsCDMA()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41589
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsCDMA:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41590
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isCDMA_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41591
    return-object p0
.end method

.method public clearIsLocationTrackingEnabled()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41607
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsLocationTrackingEnabled:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41608
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isLocationTrackingEnabled_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41609
    return-object p0
.end method

.method public clearIsVerified()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41625
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsVerified:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41626
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isVerified_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41627
    return-object p0
.end method

.method public clearLastConnectedTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 41643
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastConnectedTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41644
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastConnectedTimestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 41645
    return-object p0
.end method

.method public clearLastKnownLocation()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 41661
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastKnownLocation:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41662
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastKnownLocation_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 41663
    return-object p0
.end method

.method public clearLastSeenAtTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 41679
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastSeenAtTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41680
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastSeenAtTimestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 41681
    return-object p0
.end method

.method public clearLockHandsetMessage()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41721
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41722
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetMessage()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetMessage_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41723
    return-object p0
.end method

.method public clearLockHandsetPin()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41742
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetPin:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41743
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetPin()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetPin_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41744
    return-object p0
.end method

.method public clearLockedHandsetState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41700
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockedHandsetState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41701
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockedHandsetState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 41702
    return-object p0
.end method

.method public clearMMSMaxSize()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41881
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMMSMaxSize:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41882
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->mMSMaxSize_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I

    .line 41883
    return-object p0
.end method

.method public clearMessageForwardEmailAddress()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41763
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardEmailAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41764
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardEmailAddress()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardEmailAddress_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41765
    return-object p0
.end method

.method public clearMessageForwardPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41784
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41785
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41786
    return-object p0
.end method

.method public clearMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41821
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41822
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41823
    return-object p0
.end method

.method public clearMessageForwardStateEmail()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41842
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStateEmail:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41843
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStateEmail_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 41844
    return-object p0
.end method

.method public clearMessageForwardStatePhone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41863
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStatePhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41864
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStatePhone_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 41865
    return-object p0
.end method

.method public clearMusicVendor()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41899
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMusicVendor:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41900
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->musicVendor_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I

    .line 41901
    return-object p0
.end method

.method public clearNDD()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41920
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNDD:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41921
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNDD()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->nDD_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41922
    return-object p0
.end method

.method public clearNewVoicemailCount()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41938
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNewVoicemailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41939
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newVoicemailCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I

    .line 41940
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 41956
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41957
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumber_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 41958
    return-object p0
.end method

.method public clearPhoneNumberString()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 41977
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumberString:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41978
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumberString_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41979
    return-object p0
.end method

.method public clearPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 42014
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42015
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 42016
    return-object p0
.end method

.method public clearRecommendsAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 42032
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppCommentLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42033
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppCommentLastViewDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 42034
    return-object p0
.end method

.method public clearRecommendsAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 42050
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42051
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppLastViewDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 42052
    return-object p0
.end method

.method public clearRemoteDataWipeEraseSDState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42068
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeEraseSDState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42069
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeEraseSDState_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42070
    return-object p0
.end method

.method public clearRemoteDataWipeState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 42089
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42090
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 42091
    return-object p0
.end method

.method public clearResyncId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 42126
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42127
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 42128
    return-object p0
.end method

.method public clearResyncState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 42147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42148
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateInSync:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    .line 42149
    return-object p0
.end method

.method public clearResyncStateDate()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 42165
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncStateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42166
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncStateDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 42167
    return-object p0
.end method

.method public clearTimeOffsetFromUtc()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 42183
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimeOffsetFromUtc:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42184
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timeOffsetFromUtc_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 42185
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 3

    .prologue
    .line 42201
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42202
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 42203
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2

    .prologue
    .line 40680
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

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
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 41171
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAccountId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41208
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAlternateNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41229
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 41250
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getCallForwardPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41308
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 41329
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getCallForwardingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 41287
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocationLatitude()D
    .locals 2

    .prologue
    .line 41387
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCurrentLocationLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentLocationLongitude()D
    .locals 2

    .prologue
    .line 41405
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCurrentLocationLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1

    .prologue
    .line 40689
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 40685
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41423
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceRingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 41444
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getForceRingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 41465
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getHandsetLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41502
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41560
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIDD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 41523
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getIsCDMA()Z
    .locals 1

    .prologue
    .line 41581
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsCDMA()Z

    move-result v0

    return v0
.end method

.method public getIsLocationTrackingEnabled()Z
    .locals 1

    .prologue
    .line 41599
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsLocationTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method public getIsVerified()Z
    .locals 1

    .prologue
    .line 41617
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsVerified()Z

    move-result v0

    return v0
.end method

.method public getLastConnectedTimestamp()J
    .locals 2

    .prologue
    .line 41635
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastConnectedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastKnownLocation()J
    .locals 2

    .prologue
    .line 41653
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastKnownLocation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSeenAtTimestamp()J
    .locals 2

    .prologue
    .line 41671
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastSeenAtTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLockHandsetMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41710
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockHandsetPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41731
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetPin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockedHandsetState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 41689
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockedHandsetState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getMMSMaxSize()I
    .locals 1

    .prologue
    .line 41873
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMMSMaxSize()I

    move-result v0

    return v0
.end method

.method public getMessageForwardEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41752
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardEmailAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageForwardPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41773
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 41794
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMessageForwardStateEmail()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 41831
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardStateEmail()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getMessageForwardStatePhone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 41852
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardStatePhone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getMusicVendor()I
    .locals 1

    .prologue
    .line 41891
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMusicVendor()I

    move-result v0

    return v0
.end method

.method public getNDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41909
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNDD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewVoicemailCount()I
    .locals 1

    .prologue
    .line 41930
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNewVoicemailCount()I

    move-result v0

    return v0
.end method

.method public getPhoneNumber()J
    .locals 2

    .prologue
    .line 41948
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneNumberString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41966
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 41987
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendsAppCommentLastViewDate()J
    .locals 2

    .prologue
    .line 42024
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRecommendsAppCommentLastViewDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecommendsAppLastViewDate()J
    .locals 2

    .prologue
    .line 42042
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRecommendsAppLastViewDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteDataWipeEraseSDState()Z
    .locals 1

    .prologue
    .line 42060
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRemoteDataWipeEraseSDState()Z

    move-result v0

    return v0
.end method

.method public getRemoteDataWipeState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 42078
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRemoteDataWipeState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 42099
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getResyncState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    .locals 1

    .prologue
    .line 42136
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    move-result-object v0

    return-object v0
.end method

.method public getResyncStateDate()J
    .locals 2

    .prologue
    .line 42157
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncStateDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeOffsetFromUtc()J
    .locals 2

    .prologue
    .line 42175
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getTimeOffsetFromUtc()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 42193
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAccountId()Z
    .locals 1

    .prologue
    .line 41168
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId()Z

    move-result v0

    return v0
.end method

.method public hasAlternateNumber()Z
    .locals 1

    .prologue
    .line 41205
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAlternateNumber()Z

    move-result v0

    return v0
.end method

.method public hasAreaCode()Z
    .locals 1

    .prologue
    .line 41226
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAreaCode()Z

    move-result v0

    return v0
.end method

.method public hasBindRequestId()Z
    .locals 1

    .prologue
    .line 41247
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId()Z

    move-result v0

    return v0
.end method

.method public hasCallForwardPhoneNumber()Z
    .locals 1

    .prologue
    .line 41305
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasCallForwardRegionId()Z
    .locals 1

    .prologue
    .line 41326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId()Z

    move-result v0

    return v0
.end method

.method public hasCallForwardingState()Z
    .locals 1

    .prologue
    .line 41284
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardingState()Z

    move-result v0

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 41363
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCountryCode()Z

    move-result v0

    return v0
.end method

.method public hasCurrentLocationLatitude()Z
    .locals 1

    .prologue
    .line 41384
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLatitude()Z

    move-result v0

    return v0
.end method

.method public hasCurrentLocationLongitude()Z
    .locals 1

    .prologue
    .line 41402
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLongitude()Z

    move-result v0

    return v0
.end method

.method public hasDeviceVersion()Z
    .locals 1

    .prologue
    .line 41420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasDeviceVersion()Z

    move-result v0

    return v0
.end method

.method public hasForceRingState()Z
    .locals 1

    .prologue
    .line 41441
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasForceRingState()Z

    move-result v0

    return v0
.end method

.method public hasHandsetDeviceId()Z
    .locals 1

    .prologue
    .line 41462
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId()Z

    move-result v0

    return v0
.end method

.method public hasHandsetLocale()Z
    .locals 1

    .prologue
    .line 41499
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetLocale()Z

    move-result v0

    return v0
.end method

.method public hasIDD()Z
    .locals 1

    .prologue
    .line 41557
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIDD()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 41520
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasIsCDMA()Z
    .locals 1

    .prologue
    .line 41578
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsCDMA()Z

    move-result v0

    return v0
.end method

.method public hasIsLocationTrackingEnabled()Z
    .locals 1

    .prologue
    .line 41596
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsLocationTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method public hasIsVerified()Z
    .locals 1

    .prologue
    .line 41614
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsVerified()Z

    move-result v0

    return v0
.end method

.method public hasLastConnectedTimestamp()Z
    .locals 1

    .prologue
    .line 41632
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastConnectedTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasLastKnownLocation()Z
    .locals 1

    .prologue
    .line 41650
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastKnownLocation()Z

    move-result v0

    return v0
.end method

.method public hasLastSeenAtTimestamp()Z
    .locals 1

    .prologue
    .line 41668
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastSeenAtTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasLockHandsetMessage()Z
    .locals 1

    .prologue
    .line 41707
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetMessage()Z

    move-result v0

    return v0
.end method

.method public hasLockHandsetPin()Z
    .locals 1

    .prologue
    .line 41728
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetPin()Z

    move-result v0

    return v0
.end method

.method public hasLockedHandsetState()Z
    .locals 1

    .prologue
    .line 41686
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockedHandsetState()Z

    move-result v0

    return v0
.end method

.method public hasMMSMaxSize()Z
    .locals 1

    .prologue
    .line 41870
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMMSMaxSize()Z

    move-result v0

    return v0
.end method

.method public hasMessageForwardEmailAddress()Z
    .locals 1

    .prologue
    .line 41749
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardEmailAddress()Z

    move-result v0

    return v0
.end method

.method public hasMessageForwardPhoneNumber()Z
    .locals 1

    .prologue
    .line 41770
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasMessageForwardPhoneRegionId()Z
    .locals 1

    .prologue
    .line 41791
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId()Z

    move-result v0

    return v0
.end method

.method public hasMessageForwardStateEmail()Z
    .locals 1

    .prologue
    .line 41828
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStateEmail()Z

    move-result v0

    return v0
.end method

.method public hasMessageForwardStatePhone()Z
    .locals 1

    .prologue
    .line 41849
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStatePhone()Z

    move-result v0

    return v0
.end method

.method public hasMusicVendor()Z
    .locals 1

    .prologue
    .line 41888
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMusicVendor()Z

    move-result v0

    return v0
.end method

.method public hasNDD()Z
    .locals 1

    .prologue
    .line 41906
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNDD()Z

    move-result v0

    return v0
.end method

.method public hasNewVoicemailCount()Z
    .locals 1

    .prologue
    .line 41927
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNewVoicemailCount()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 41945
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumberString()Z
    .locals 1

    .prologue
    .line 41963
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumberString()Z

    move-result v0

    return v0
.end method

.method public hasPhysicalDeviceModelId()Z
    .locals 1

    .prologue
    .line 41984
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId()Z

    move-result v0

    return v0
.end method

.method public hasRecommendsAppCommentLastViewDate()Z
    .locals 1

    .prologue
    .line 42021
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppCommentLastViewDate()Z

    move-result v0

    return v0
.end method

.method public hasRecommendsAppLastViewDate()Z
    .locals 1

    .prologue
    .line 42039
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppLastViewDate()Z

    move-result v0

    return v0
.end method

.method public hasRemoteDataWipeEraseSDState()Z
    .locals 1

    .prologue
    .line 42057
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeEraseSDState()Z

    move-result v0

    return v0
.end method

.method public hasRemoteDataWipeState()Z
    .locals 1

    .prologue
    .line 42075
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeState()Z

    move-result v0

    return v0
.end method

.method public hasResyncId()Z
    .locals 1

    .prologue
    .line 42096
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId()Z

    move-result v0

    return v0
.end method

.method public hasResyncState()Z
    .locals 1

    .prologue
    .line 42133
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncState()Z

    move-result v0

    return v0
.end method

.method public hasResyncStateDate()Z
    .locals 1

    .prologue
    .line 42154
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncStateDate()Z

    move-result v0

    return v0
.end method

.method public hasTimeOffsetFromUtc()Z
    .locals 1

    .prologue
    .line 42172
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimeOffsetFromUtc()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 42190
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1

    .prologue
    .line 40667
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 40653
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 40693
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAccountId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41187
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115400(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 41189
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115400(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41194
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41195
    return-object p0

    .line 41192
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeBindRequestId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41266
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 41268
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41273
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41274
    return-object p0

    .line 41271
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeCallForwardRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41345
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 41347
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41352
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41353
    return-object p0

    .line 41350
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 40731
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 40871
    :goto_0
    return-object p0

    .line 40732
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40733
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAccountId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeAccountId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40735
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAlternateNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40736
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAlternateNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setAlternateNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40738
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAreaCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40739
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setAreaCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40741
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40742
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeBindRequestId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40744
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardingState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40745
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCallForwardingState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40747
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40748
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCallForwardPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40750
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 40751
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeCallForwardRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40753
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 40754
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCountryCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40756
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLatitude()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 40757
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCurrentLocationLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCurrentLocationLatitude(D)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40759
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLongitude()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40760
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCurrentLocationLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCurrentLocationLongitude(D)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40762
    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasDeviceVersion()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 40763
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setDeviceVersion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40765
    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasForceRingState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 40766
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getForceRingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setForceRingState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40768
    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 40769
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeHandsetDeviceId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40771
    :cond_d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetLocale()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 40772
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setHandsetLocale(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40774
    :cond_e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40775
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40777
    :cond_f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIDD()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 40778
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIDD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIDD(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40780
    :cond_10
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsCDMA()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 40781
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsCDMA()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIsCDMA(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40783
    :cond_11
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsLocationTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 40784
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsLocationTrackingEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIsLocationTrackingEnabled(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40786
    :cond_12
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsVerified()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 40787
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsVerified()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIsVerified(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40789
    :cond_13
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastConnectedTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40790
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastConnectedTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLastConnectedTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40792
    :cond_14
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastKnownLocation()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 40793
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastKnownLocation()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLastKnownLocation(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40795
    :cond_15
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastSeenAtTimestamp()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 40796
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastSeenAtTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLastSeenAtTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40798
    :cond_16
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockedHandsetState()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 40799
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockedHandsetState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLockedHandsetState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40801
    :cond_17
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetMessage()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 40802
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLockHandsetMessage(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40804
    :cond_18
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetPin()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 40805
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetPin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLockHandsetPin(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40807
    :cond_19
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 40808
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40810
    :cond_1a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 40811
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40813
    :cond_1b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 40814
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeMessageForwardPhoneRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40816
    :cond_1c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStateEmail()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 40817
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardStateEmail()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardStateEmail(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40819
    :cond_1d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStatePhone()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 40820
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardStatePhone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardStatePhone(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40822
    :cond_1e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMMSMaxSize()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 40823
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMMSMaxSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMMSMaxSize(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40825
    :cond_1f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMusicVendor()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 40826
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMusicVendor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMusicVendor(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40828
    :cond_20
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNDD()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 40829
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNDD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setNDD(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40831
    :cond_21
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNewVoicemailCount()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 40832
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNewVoicemailCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setNewVoicemailCount(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40834
    :cond_22
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 40835
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40837
    :cond_23
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumberString()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 40838
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setPhoneNumberString(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40840
    :cond_24
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 40841
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergePhysicalDeviceModelId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40843
    :cond_25
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppCommentLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 40844
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRecommendsAppCommentLastViewDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRecommendsAppCommentLastViewDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40846
    :cond_26
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 40847
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRecommendsAppLastViewDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRecommendsAppLastViewDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40849
    :cond_27
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeEraseSDState()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 40850
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRemoteDataWipeEraseSDState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRemoteDataWipeEraseSDState(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40852
    :cond_28
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeState()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 40853
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRemoteDataWipeState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRemoteDataWipeState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40855
    :cond_29
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 40856
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40858
    :cond_2a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncState()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 40859
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setResyncState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40861
    :cond_2b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncStateDate()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 40862
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncStateDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setResyncStateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40864
    :cond_2c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimeOffsetFromUtc()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 40865
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getTimeOffsetFromUtc()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setTimeOffsetFromUtc(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40867
    :cond_2d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 40868
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    .line 40870
    :cond_2e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 40882
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 40883
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 40888
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 40890
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 40891
    :goto_1
    return-object p0

    .line 40885
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 40896
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLastSeenAtTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 40900
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLockHandsetMessage(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 40904
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIsCDMA(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 40908
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMusicVendor(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 40912
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCurrentLocationLatitude(D)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 40916
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setPhoneNumberString(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 40920
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLastKnownLocation(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 40924
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 40928
    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLastConnectedTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 40932
    :sswitch_a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 40933
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v4

    .line 40934
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    if-nez v4, :cond_1

    .line 40935
    const/16 v5, 0x1b1

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 40937
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRemoteDataWipeState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 40942
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    :sswitch_b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCallForwardPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto :goto_0

    .line 40946
    :sswitch_c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setAlternateNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 40950
    :sswitch_d
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 40951
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    move-result-object v4

    .line 40952
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    if-nez v4, :cond_2

    .line 40953
    const/16 v5, 0x1ea

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 40955
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setResyncState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 40960
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    :sswitch_e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 40964
    :sswitch_f
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCountryCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 40968
    :sswitch_10
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 40969
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasHandsetDeviceId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 40970
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 40972
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 40973
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setHandsetDeviceId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 40977
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_11
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 40978
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasMessageForwardPhoneRegionId()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 40979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 40981
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 40982
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardPhoneRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 40986
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_12
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRecommendsAppLastViewDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 40990
    :sswitch_13
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setResyncStateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 40994
    :sswitch_14
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setTimeOffsetFromUtc(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 40998
    :sswitch_15
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 40999
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v4

    .line 41000
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    if-nez v4, :cond_5

    .line 41001
    const/16 v5, 0x367

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 41003
    :cond_5
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCallForwardingState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41008
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    :sswitch_16
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRecommendsAppCommentLastViewDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41012
    :sswitch_17
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setNDD(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41016
    :sswitch_18
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 41017
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasCallForwardRegionId()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 41018
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 41020
    :cond_6
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 41021
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCallForwardRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41025
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_19
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41029
    :sswitch_1a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMMSMaxSize(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41033
    :sswitch_1b
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 41034
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasAccountId()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 41035
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getAccountId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 41037
    :cond_7
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 41038
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setAccountId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41042
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_1c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setNewVoicemailCount(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41046
    :sswitch_1d
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setHandsetLocale(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41050
    :sswitch_1e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIsLocationTrackingEnabled(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41054
    :sswitch_1f
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setAreaCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41058
    :sswitch_20
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 41059
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasBindRequestId()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 41060
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 41062
    :cond_8
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 41063
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setBindRequestId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41067
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_21
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 41068
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 41069
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 41071
    :cond_9
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 41072
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41076
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_22
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 41077
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v4

    .line 41078
    .restart local v4       #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    if-nez v4, :cond_a

    .line 41079
    const/16 v5, 0x577

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 41081
    :cond_a
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setForceRingState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41086
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    :sswitch_23
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 41087
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v4

    .line 41088
    .restart local v4       #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    if-nez v4, :cond_b

    .line 41089
    const/16 v5, 0x597

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 41091
    :cond_b
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardStatePhone(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41096
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    :sswitch_24
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIsVerified(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41100
    :sswitch_25
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLockHandsetPin(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41104
    :sswitch_26
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41108
    :sswitch_27
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 41109
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v4

    .line 41110
    .restart local v4       #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    if-nez v4, :cond_c

    .line 41111
    const/16 v5, 0x655

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 41113
    :cond_c
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setLockedHandsetState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41118
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    :sswitch_28
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 41119
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasResyncId()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 41120
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 41122
    :cond_d
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 41123
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41127
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_29
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 41128
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->hasPhysicalDeviceModelId()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 41129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->getPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 41131
    :cond_e
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 41132
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setPhysicalDeviceModelId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41136
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 41137
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v4

    .line 41138
    .restart local v4       #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    if-nez v4, :cond_f

    .line 41139
    const/16 v5, 0x702

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 41141
    :cond_f
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setMessageForwardStateEmail(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41146
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    :sswitch_2b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setRemoteDataWipeEraseSDState(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41150
    :sswitch_2c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setDeviceVersion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41154
    :sswitch_2d
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setCurrentLocationLongitude(D)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 41158
    :sswitch_2e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->setIDD(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    goto/16 :goto_0

    .line 40883
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x90 -> :sswitch_1
        0x132 -> :sswitch_2
        0x2b8 -> :sswitch_3
        0x738 -> :sswitch_4
        0x8f9 -> :sswitch_5
        0xb2a -> :sswitch_6
        0xb38 -> :sswitch_7
        0xb9a -> :sswitch_8
        0xc58 -> :sswitch_9
        0xd88 -> :sswitch_a
        0xeda -> :sswitch_b
        0xf1a -> :sswitch_c
        0xf50 -> :sswitch_d
        0x1088 -> :sswitch_e
        0x132a -> :sswitch_f
        0x1512 -> :sswitch_10
        0x18da -> :sswitch_11
        0x18e0 -> :sswitch_12
        0x19e8 -> :sswitch_13
        0x1ae8 -> :sswitch_14
        0x1b38 -> :sswitch_15
        0x1c60 -> :sswitch_16
        0x1e92 -> :sswitch_17
        0x1ef2 -> :sswitch_18
        0x1f62 -> :sswitch_19
        0x2158 -> :sswitch_1a
        0x221a -> :sswitch_1b
        0x2230 -> :sswitch_1c
        0x241a -> :sswitch_1d
        0x24b8 -> :sswitch_1e
        0x261a -> :sswitch_1f
        0x26ba -> :sswitch_20
        0x2892 -> :sswitch_21
        0x2bb8 -> :sswitch_22
        0x2cb8 -> :sswitch_23
        0x2d28 -> :sswitch_24
        0x2e52 -> :sswitch_25
        0x2e68 -> :sswitch_26
        0x32a8 -> :sswitch_27
        0x3752 -> :sswitch_28
        0x3762 -> :sswitch_29
        0x3810 -> :sswitch_2a
        0x3880 -> :sswitch_2b
        0x3bc2 -> :sswitch_2c
        0x3e11 -> :sswitch_2d
        0x3f8a -> :sswitch_2e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 40722
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    if-eqz v0, :cond_0

    .line 40723
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object p0

    .line 40726
    .end local p0
    :goto_0
    return-object p0

    .line 40725
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
    .line 40653
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40653
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

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
    .line 40653
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

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
    .line 40653
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40653
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

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
    .line 40653
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeHandsetDeviceId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41481
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117800(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 41483
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117800(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41488
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41489
    return-object p0

    .line 41486
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41539
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118200(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 41541
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118200(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41546
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41547
    return-object p0

    .line 41544
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMessageForwardPhoneRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41810
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120800(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 41812
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120800(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41817
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41818
    return-object p0

    .line 41815
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePhysicalDeviceModelId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42003
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 42005
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 42010
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42011
    return-object p0

    .line 42008
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42115
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 42117
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 42122
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42123
    return-object p0

    .line 42120
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAccountId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 41182
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41183
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41184
    return-object p0
.end method

.method public setAccountId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41174
    if-nez p1, :cond_0

    .line 41175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41177
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41178
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41179
    return-object p0
.end method

.method public setAlternateNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41211
    if-nez p1, :cond_0

    .line 41212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41214
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAlternateNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41215
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->alternateNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41216
    return-object p0
.end method

.method public setAreaCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41232
    if-nez p1, :cond_0

    .line 41233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41235
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAreaCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41236
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->areaCode_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41237
    return-object p0
.end method

.method public setBindRequestId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 41261
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41262
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41263
    return-object p0
.end method

.method public setBindRequestId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41253
    if-nez p1, :cond_0

    .line 41254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41256
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$115902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41257
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41258
    return-object p0
.end method

.method public setCallForwardPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41311
    if-nez p1, :cond_0

    .line 41312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41314
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41315
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41316
    return-object p0
.end method

.method public setCallForwardRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 41340
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41341
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41342
    return-object p0
.end method

.method public setCallForwardRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41332
    if-nez p1, :cond_0

    .line 41333
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41335
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41336
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41337
    return-object p0
.end method

.method public setCallForwardingState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41290
    if-nez p1, :cond_0

    .line 41291
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41293
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardingState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41294
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 41295
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41369
    if-nez p1, :cond_0

    .line 41370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41372
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCountryCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->countryCode_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41374
    return-object p0
.end method

.method public setCurrentLocationLatitude(D)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLatitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$116902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41391
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLatitude_:D
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;D)D

    .line 41392
    return-object p0
.end method

.method public setCurrentLocationLongitude(D)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41408
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLongitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41409
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLongitude_:D
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;D)D

    .line 41410
    return-object p0
.end method

.method public setDeviceVersion(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41426
    if-nez p1, :cond_0

    .line 41427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41429
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasDeviceVersion:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41430
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->deviceVersion_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41431
    return-object p0
.end method

.method public setForceRingState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41447
    if-nez p1, :cond_0

    .line 41448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41450
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasForceRingState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41451
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->forceRingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 41452
    return-object p0
.end method

.method public setHandsetDeviceId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 41476
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41477
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41478
    return-object p0
.end method

.method public setHandsetDeviceId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41468
    if-nez p1, :cond_0

    .line 41469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41471
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41472
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41473
    return-object p0
.end method

.method public setHandsetLocale(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41505
    if-nez p1, :cond_0

    .line 41506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41508
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetLocale:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$117902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41509
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetLocale_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41510
    return-object p0
.end method

.method public setIDD(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41563
    if-nez p1, :cond_0

    .line 41564
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41566
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIDD:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41567
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->iDD_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41568
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 41534
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41535
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41536
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41526
    if-nez p1, :cond_0

    .line 41527
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41529
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41530
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41531
    return-object p0
.end method

.method public setIsCDMA(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41584
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsCDMA:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41585
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isCDMA_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41586
    return-object p0
.end method

.method public setIsLocationTrackingEnabled(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41602
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsLocationTrackingEnabled:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41603
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isLocationTrackingEnabled_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41604
    return-object p0
.end method

.method public setIsVerified(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41620
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsVerified:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$118902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41621
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isVerified_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41622
    return-object p0
.end method

.method public setLastConnectedTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41638
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastConnectedTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41639
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastConnectedTimestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 41640
    return-object p0
.end method

.method public setLastKnownLocation(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41656
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastKnownLocation:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41657
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastKnownLocation_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 41658
    return-object p0
.end method

.method public setLastSeenAtTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41674
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastSeenAtTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41675
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastSeenAtTimestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 41676
    return-object p0
.end method

.method public setLockHandsetMessage(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41713
    if-nez p1, :cond_0

    .line 41714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41716
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41717
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetMessage_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41718
    return-object p0
.end method

.method public setLockHandsetPin(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41734
    if-nez p1, :cond_0

    .line 41735
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41737
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetPin:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41738
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetPin_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41739
    return-object p0
.end method

.method public setLockedHandsetState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41692
    if-nez p1, :cond_0

    .line 41693
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41695
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockedHandsetState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41696
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockedHandsetState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$119802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 41697
    return-object p0
.end method

.method public setMMSMaxSize(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41876
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMMSMaxSize:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41877
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->mMSMaxSize_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I

    .line 41878
    return-object p0
.end method

.method public setMessageForwardEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41755
    if-nez p1, :cond_0

    .line 41756
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41758
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardEmailAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41759
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardEmailAddress_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41760
    return-object p0
.end method

.method public setMessageForwardPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41776
    if-nez p1, :cond_0

    .line 41777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41779
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41780
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41781
    return-object p0
.end method

.method public setMessageForwardPhoneRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 41805
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41806
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41807
    return-object p0
.end method

.method public setMessageForwardPhoneRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41797
    if-nez p1, :cond_0

    .line 41798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41800
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41801
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41802
    return-object p0
.end method

.method public setMessageForwardStateEmail(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41834
    if-nez p1, :cond_0

    .line 41835
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41837
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStateEmail:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$120902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41838
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStateEmail_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 41839
    return-object p0
.end method

.method public setMessageForwardStatePhone(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41855
    if-nez p1, :cond_0

    .line 41856
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41858
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStatePhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41859
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStatePhone_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 41860
    return-object p0
.end method

.method public setMusicVendor(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41894
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMusicVendor:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41895
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->musicVendor_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I

    .line 41896
    return-object p0
.end method

.method public setNDD(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41912
    if-nez p1, :cond_0

    .line 41913
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41915
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNDD:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41916
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->nDD_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41917
    return-object p0
.end method

.method public setNewVoicemailCount(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41933
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNewVoicemailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$121902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41934
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newVoicemailCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I

    .line 41935
    return-object p0
.end method

.method public setPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41951
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41952
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumber_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 41953
    return-object p0
.end method

.method public setPhoneNumberString(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41969
    if-nez p1, :cond_0

    .line 41970
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41972
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumberString:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41973
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumberString_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 41974
    return-object p0
.end method

.method public setPhysicalDeviceModelId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 41998
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41999
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 42000
    return-object p0
.end method

.method public setPhysicalDeviceModelId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 41990
    if-nez p1, :cond_0

    .line 41991
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41993
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 41994
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41995
    return-object p0
.end method

.method public setRecommendsAppCommentLastViewDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42027
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppCommentLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42028
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppCommentLastViewDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 42029
    return-object p0
.end method

.method public setRecommendsAppLastViewDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42045
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$122902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42046
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppLastViewDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 42047
    return-object p0
.end method

.method public setRemoteDataWipeEraseSDState(Z)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42063
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeEraseSDState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42064
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeEraseSDState_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42065
    return-object p0
.end method

.method public setRemoteDataWipeState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42081
    if-nez p1, :cond_0

    .line 42082
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42084
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42085
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 42086
    return-object p0
.end method

.method public setResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 42110
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42111
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 42112
    return-object p0
.end method

.method public setResyncId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42102
    if-nez p1, :cond_0

    .line 42103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42105
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42106
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 42107
    return-object p0
.end method

.method public setResyncState(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42139
    if-nez p1, :cond_0

    .line 42140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42142
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42143
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    .line 42144
    return-object p0
.end method

.method public setResyncStateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42160
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncStateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$123902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42161
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncStateDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 42162
    return-object p0
.end method

.method public setTimeOffsetFromUtc(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42178
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimeOffsetFromUtc:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42179
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timeOffsetFromUtc_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 42180
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42196
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z

    .line 42197
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->access$124402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J

    .line 42198
    return-object p0
.end method
