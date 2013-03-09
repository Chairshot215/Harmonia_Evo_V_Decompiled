.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private errorMessage_:Ljava/lang/Object;

.field private errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7539
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->UNKNOWN_ERROR:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 7563
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    .line 7452
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->maybeForceBuilderInitialization()V

    .line 7453
    return-void
.end method

.method static synthetic access$8500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1

    .prologue
    .line 7446
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1

    .prologue
    .line 7458
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 7456
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 2

    .prologue
    .line 7479
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    .line 7480
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7481
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7483
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 5

    .prologue
    .line 7487
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 7488
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    .line 7489
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7490
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7491
    or-int/lit8 v2, v2, 0x1

    .line 7493
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->access$8702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 7494
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7495
    or-int/lit8 v2, v2, 0x2

    .line 7497
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->access$8802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7498
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->access$8902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;I)I

    .line 7499
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 2

    .prologue
    .line 7471
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

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
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7446
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1

    .prologue
    .line 7475
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7516
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
    .line 7446
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7446
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

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
    .line 7446
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7523
    const/4 v2, 0x0

    .line 7525
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7530
    if-eqz v2, :cond_0

    .line 7531
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    .line 7534
    :cond_0
    return-object p0

    .line 7526
    :catch_0
    move-exception v1

    .line 7527
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-object v2, v0

    .line 7528
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7530
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 7531
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7503
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 7512
    :cond_0
    :goto_0
    return-object p0

    .line 7504
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->hasErrorStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7505
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getErrorStatus()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->setErrorStatus(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;

    .line 7507
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7508
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    .line 7509
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->errorMessage_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->access$8800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorMessage_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setErrorStatus(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7547
    if-nez p1, :cond_0

    .line 7548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7550
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->bitField0_:I

    .line 7551
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus$Builder;->errorStatus_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    .line 7553
    return-object p0
.end method
