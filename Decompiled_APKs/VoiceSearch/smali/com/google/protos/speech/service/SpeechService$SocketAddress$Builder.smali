.class public final Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SocketAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$SocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SocketAddress;",
        "Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$SocketAddressOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private host_:Ljava/lang/Object;

.field private port_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1536
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    .line 1537
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->maybeForceBuilderInitialization()V

    .line 1538
    return-void
.end method

.method static synthetic access$1300()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1

    .prologue
    .line 1531
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1

    .prologue
    .line 1543
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1541
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 2

    .prologue
    .line 1564
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    .line 1565
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1566
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1568
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 5

    .prologue
    .line 1572
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 1573
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    .line 1574
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1575
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1576
    or-int/lit8 v2, v2, 0x1

    .line 1578
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->access$1502(Lcom/google/protos/speech/service/SpeechService$SocketAddress;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1580
    or-int/lit8 v2, v2, 0x2

    .line 1582
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->port_:I

    #setter for: Lcom/google/protos/speech/service/SpeechService$SocketAddress;->port_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->access$1602(Lcom/google/protos/speech/service/SpeechService$SocketAddress;I)I

    .line 1583
    #setter for: Lcom/google/protos/speech/service/SpeechService$SocketAddress;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->access$1702(Lcom/google/protos/speech/service/SpeechService$SocketAddress;I)I

    .line 1584
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 2

    .prologue
    .line 1556
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

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
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1

    .prologue
    .line 1560
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public hasHost()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1634
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPort()Z
    .locals 2

    .prologue
    .line 1687
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1601
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->hasHost()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return v0

    .line 1605
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->hasPort()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1609
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1531
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1531
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1531
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1616
    const/4 v2, 0x0

    .line 1618
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    if-eqz v2, :cond_0

    .line 1624
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    .line 1627
    :cond_0
    return-object p0

    .line 1619
    :catch_0
    move-exception v1

    .line 1620
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-object v2, v0

    .line 1621
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1623
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1624
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1588
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return-object p0

    .line 1589
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->hasHost()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1590
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    .line 1591
    #getter for: Lcom/google/protos/speech/service/SpeechService$SocketAddress;->host_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->access$1500(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->host_:Ljava/lang/Object;

    .line 1594
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->setPort(I)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    goto :goto_0
.end method

.method public setPort(I)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1693
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->bitField0_:I

    .line 1694
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->port_:I

    .line 1696
    return-object p0
.end method
