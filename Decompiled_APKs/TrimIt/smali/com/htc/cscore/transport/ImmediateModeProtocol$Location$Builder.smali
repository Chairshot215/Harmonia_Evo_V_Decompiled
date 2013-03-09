.class public final Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "ImmediateModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1352
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1347
    invoke-direct {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 1

    .prologue
    .line 1347
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1402
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 3

    .prologue
    .line 1355
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;-><init>()V

    .line 1356
    .local v0, builder:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    new-instance v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;-><init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    .line 1357
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1393
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 3

    .prologue
    .line 1406
    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    if-nez v1, :cond_0

    .line 1407
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    .line 1411
    .local v0, returnMe:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    .line 1412
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 2

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    if-nez v0, :cond_0

    .line 1366
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1369
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;-><init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    .line 1370
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLatitude()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 3

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLatitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->access$3502(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;Z)Z

    .line 1484
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->latitude_:D
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->access$3602(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;D)D

    .line 1485
    return-object p0
.end method

.method public clearLongitude()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 3

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLongitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->access$3702(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;Z)Z

    .line 1502
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->longitude_:D
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->access$3802(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;D)D

    .line 1503
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 2

    .prologue
    .line 1374
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

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
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1

    .prologue
    .line 1383
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1379
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasLatitude()Z
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLatitude()Z

    move-result v0

    return v0
.end method

.method public hasLongitude()Z
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLongitude()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->internalGetResult()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1425
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1433
    :goto_0
    return-object p0

    .line 1426
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->setLatitude(D)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    .line 1429
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1430
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->setLongitude(D)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    .line 1432
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1440
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 1444
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1445
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1450
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1452
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 1453
    :goto_1
    return-object p0

    .line 1447
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1458
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->setLatitude(D)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    goto :goto_0

    .line 1462
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->setLongitude(D)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    goto :goto_0

    .line 1445
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1416
    instance-of v0, p1, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    if-eqz v0, :cond_0

    .line 1417
    check-cast p1, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object p0

    .line 1420
    .end local p0
    :goto_0
    return-object p0

    .line 1419
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
    .line 1347
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1347
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

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
    .line 1347
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

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
    .line 1347
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1347
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

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
    .line 1347
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLatitude(D)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLatitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->access$3502(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;Z)Z

    .line 1479
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->latitude_:D
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->access$3602(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;D)D

    .line 1480
    return-object p0
.end method

.method public setLongitude(D)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLongitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->access$3702(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;Z)Z

    .line 1497
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->longitude_:D
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->access$3802(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;D)D

    .line 1498
    return-object p0
.end method
