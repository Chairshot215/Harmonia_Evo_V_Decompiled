.class public final Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$MessageHeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$MessageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$MessageHeader;",
        "Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$MessageHeaderOrBuilder;"
    }
.end annotation


# instance fields
.field private applicationId_:Ljava/lang/Object;

.field private bitField0_:I

.field private requestId_:I

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5411
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5510
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    .line 5412
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->maybeForceBuilderInitialization()V

    .line 5413
    return-void
.end method

.method static synthetic access$5800()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1

    .prologue
    .line 5406
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1

    .prologue
    .line 5418
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5416
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 2

    .prologue
    .line 5441
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    .line 5442
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5443
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5445
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 5

    .prologue
    .line 5449
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 5450
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5451
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5452
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5453
    or-int/lit8 v2, v2, 0x1

    .line 5455
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->access$6002(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5456
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5457
    or-int/lit8 v2, v2, 0x2

    .line 5459
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->requestId_:I

    #setter for: Lcom/google/protos/speech/service/SpeechService$MessageHeader;->requestId_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->access$6102(Lcom/google/protos/speech/service/SpeechService$MessageHeader;I)I

    .line 5460
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5461
    or-int/lit8 v2, v2, 0x4

    .line 5463
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->access$6202(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5464
    #setter for: Lcom/google/protos/speech/service/SpeechService$MessageHeader;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->access$6302(Lcom/google/protos/speech/service/SpeechService$MessageHeader;I)I

    .line 5465
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 2

    .prologue
    .line 5433
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

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
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1

    .prologue
    .line 5437
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5487
    const/4 v0, 0x1

    return v0
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
    .line 5406
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5406
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

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
    .line 5406
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5494
    const/4 v2, 0x0

    .line 5496
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5501
    if-eqz v2, :cond_0

    .line 5502
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 5505
    :cond_0
    return-object p0

    .line 5497
    :catch_0
    move-exception v1

    .line 5498
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-object v2, v0

    .line 5499
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5501
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 5502
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5469
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5483
    :cond_0
    :goto_0
    return-object p0

    .line 5470
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5471
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5472
    #getter for: Lcom/google/protos/speech/service/SpeechService$MessageHeader;->sessionId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->access$6000(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5475
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5476
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getRequestId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->setRequestId(I)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 5478
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->hasApplicationId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5479
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5480
    #getter for: Lcom/google/protos/speech/service/SpeechService$MessageHeader;->applicationId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->access$6200(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5611
    if-nez p1, :cond_0

    .line 5612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5614
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5615
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    .line 5617
    return-object p0
.end method

.method public setRequestId(I)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5571
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5572
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->requestId_:I

    .line 5574
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5537
    if-nez p1, :cond_0

    .line 5538
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5540
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5541
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5543
    return-object p0
.end method
