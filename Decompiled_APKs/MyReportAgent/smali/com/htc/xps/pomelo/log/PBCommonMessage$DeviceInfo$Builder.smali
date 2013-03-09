.class public final Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "PBCommonMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->create()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;-><init>()V

    .line 268
    .local v0, builder:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    new-instance v1, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;-><init>(Lcom/htc/xps/pomelo/log/PBCommonMessage$1;)V

    iput-object v1, v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    .line 269
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->build()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->build()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 3

    .prologue
    .line 318
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    if-nez v1, :cond_0

    .line 319
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    .line 323
    .local v0, returnMe:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    .line 324
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->clear()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->clear()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->clear()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    new-instance v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;-><init>(Lcom/htc/xps/pomelo/log/PBCommonMessage$1;)V

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    .line 282
    return-object p0
.end method

.method public clearCid()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCid:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1702(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 578
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getCid()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->cid_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1802(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 579
    return-object p0
.end method

.method public clearCity()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCity:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$702(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 476
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->city_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$802(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 477
    return-object p0
.end method

.method public clearDeviceId()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceId:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1302(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 536
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->deviceId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1402(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 537
    return-object p0
.end method

.method public clearDeviceSN()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceSN:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1502(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 557
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDeviceSN()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->deviceSN_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1602(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 558
    return-object p0
.end method

.method public clearModelId()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasModelId:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1102(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 515
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getModelId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->modelId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1202(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    return-object p0
.end method

.method public clearPrivacyStatementVersion()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasPrivacyStatementVersion:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$2302(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 641
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getPrivacyStatementVersion()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->privacyStatementVersion_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$2402(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 642
    return-object p0
.end method

.method public clearRegion()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRegion:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$502(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 455
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getRegion()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->region_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$602(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    return-object p0
.end method

.method public clearRomVersion()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRomVersion:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1902(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 599
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getRomVersion()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->romVersion_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$2002(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 600
    return-object p0
.end method

.method public clearSenseVersion()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasSenseVersion:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$2102(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 620
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getSenseVersion()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->senseVersion_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$2202(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 621
    return-object p0
.end method

.method public clearTimeZone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasTimeZone:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$902(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 494
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->timeZone_:I
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1002(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;I)I

    .line 495
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->create()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

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
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 291
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDeviceSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getModelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyStatementVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getPrivacyStatementVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRomVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getRomVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSenseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getSenseVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()I
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getTimeZone()I

    move-result v0

    return v0
.end method

.method public hasCid()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCid()Z

    move-result v0

    return v0
.end method

.method public hasCity()Z
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCity()Z

    move-result v0

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceId()Z

    move-result v0

    return v0
.end method

.method public hasDeviceSN()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceSN()Z

    move-result v0

    return v0
.end method

.method public hasModelId()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasModelId()Z

    move-result v0

    return v0
.end method

.method public hasPrivacyStatementVersion()Z
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasPrivacyStatementVersion()Z

    move-result v0

    return v0
.end method

.method public hasRegion()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRegion()Z

    move-result v0

    return v0
.end method

.method public hasRomVersion()Z
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRomVersion()Z

    move-result v0

    return v0
.end method

.method public hasSenseVersion()Z
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasSenseVersion()Z

    move-result v0

    return v0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasTimeZone()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->internalGetResult()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->isInitialized()Z

    move-result v0

    return v0
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
    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

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
    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

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
    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

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
    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 380
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 381
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 386
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 388
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 389
    :goto_1
    return-object p0

    .line 383
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 394
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setRegion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    goto :goto_0

    .line 398
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setCity(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    goto :goto_0

    .line 402
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setTimeZone(I)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    goto :goto_0

    .line 406
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setModelId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    goto :goto_0

    .line 410
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    goto :goto_0

    .line 414
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceSN(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    goto :goto_0

    .line 418
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setCid(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    goto :goto_0

    .line 422
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setRomVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    goto :goto_0

    .line 426
    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setSenseVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    goto :goto_0

    .line 430
    :sswitch_a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setPrivacyStatementVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    goto :goto_0

    .line 381
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 328
    instance-of v0, p1, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    if-eqz v0, :cond_0

    .line 329
    check-cast p1, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object p0

    .line 332
    .end local p0
    :goto_0
    return-object p0

    .line 331
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 337
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 369
    :goto_0
    return-object p0

    .line 338
    :cond_0
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setRegion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 341
    :cond_1
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setCity(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 344
    :cond_2
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 345
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getTimeZone()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setTimeZone(I)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 347
    :cond_3
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasModelId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 348
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getModelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setModelId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 350
    :cond_4
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 351
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 353
    :cond_5
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceSN()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 354
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDeviceSN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceSN(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 356
    :cond_6
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 357
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setCid(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 359
    :cond_7
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRomVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 360
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getRomVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setRomVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 362
    :cond_8
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasSenseVersion()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 363
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getSenseVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setSenseVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 365
    :cond_9
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasPrivacyStatementVersion()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 366
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getPrivacyStatementVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setPrivacyStatementVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 368
    :cond_a
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setCid(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 569
    if-nez p1, :cond_0

    .line 570
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCid:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1702(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 573
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->cid_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1802(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 574
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 467
    if-nez p1, :cond_0

    .line 468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasCity:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$702(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 471
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->city_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$802(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceId:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1302(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 531
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->deviceId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1402(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 532
    return-object p0
.end method

.method public setDeviceSN(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 548
    if-nez p1, :cond_0

    .line 549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasDeviceSN:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1502(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 552
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->deviceSN_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1602(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    return-object p0
.end method

.method public setModelId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 506
    if-nez p1, :cond_0

    .line 507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasModelId:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1102(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 510
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->modelId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1202(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    return-object p0
.end method

.method public setPrivacyStatementVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 632
    if-nez p1, :cond_0

    .line 633
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasPrivacyStatementVersion:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$2302(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 636
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->privacyStatementVersion_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$2402(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 637
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 446
    if-nez p1, :cond_0

    .line 447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRegion:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$502(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 450
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->region_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$602(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    return-object p0
.end method

.method public setRomVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 590
    if-nez p1, :cond_0

    .line 591
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasRomVersion:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1902(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 594
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->romVersion_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$2002(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    return-object p0
.end method

.method public setSenseVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 611
    if-nez p1, :cond_0

    .line 612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasSenseVersion:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$2102(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 615
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->senseVersion_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$2202(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    return-object p0
.end method

.method public setTimeZone(I)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->hasTimeZone:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$902(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;Z)Z

    .line 489
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->timeZone_:I
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->access$1002(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;I)I

    .line 490
    return-object p0
.end method
