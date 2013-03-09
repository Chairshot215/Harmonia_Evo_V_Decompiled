.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammarOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

.field private kansasId_:Ljava/lang/Object;

.field private useSpeechpersonalizationGaiaAuthenticationTokens_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3490
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3596
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    .line 3661
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->kansasId_:Ljava/lang/Object;

    .line 3491
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->maybeForceBuilderInitialization()V

    .line 3492
    return-void
.end method

.method static synthetic access$3700()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    .locals 1

    .prologue
    .line 3485
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    .locals 1

    .prologue
    .line 3497
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;-><init>()V

    return-object v0
.end method

.method private ensureGaiaAuthenticationTokenIsMutable()V
    .locals 2

    .prologue
    .line 3598
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3599
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    .line 3600
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    .line 3602
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3495
    return-void
.end method


# virtual methods
.method public addGaiaAuthenticationToken(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3628
    if-nez p1, :cond_0

    .line 3629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3631
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->ensureGaiaAuthenticationTokenIsMutable()V

    .line 3632
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3634
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3485
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 2

    .prologue
    .line 3520
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v0

    .line 3521
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3522
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3524
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3485
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 5

    .prologue
    .line 3528
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 3529
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    .line 3530
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3531
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3532
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    .line 3534
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    .line 3536
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->access$3902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 3537
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3538
    or-int/lit8 v2, v2, 0x1

    .line 3540
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->kansasId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->kansasId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->access$4002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3541
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3542
    or-int/lit8 v2, v2, 0x2

    .line 3544
    :cond_2
    iget-boolean v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->useSpeechpersonalizationGaiaAuthenticationTokens_:Z

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->useSpeechpersonalizationGaiaAuthenticationTokens_:Z
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->access$4102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;Z)Z

    .line 3545
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->access$4202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;I)I

    .line 3546
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3485
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3485
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    .locals 2

    .prologue
    .line 3512
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

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
    .line 3485
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3485
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3485
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    .locals 1

    .prologue
    .line 3516
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3573
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
    .line 3485
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3485
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

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
    .line 3485
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3580
    const/4 v2, 0x0

    .line 3582
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3587
    if-eqz v2, :cond_0

    .line 3588
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    .line 3591
    :cond_0
    return-object p0

    .line 3583
    :catch_0
    move-exception v1

    .line 3584
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-object v2, v0

    .line 3585
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3587
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3588
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 3550
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3569
    :cond_0
    :goto_0
    return-object p0

    .line 3551
    :cond_1
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->access$3900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3552
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3553
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->access$3900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    .line 3554
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    .line 3561
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->hasKansasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3562
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    .line 3563
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->kansasId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->access$4000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->kansasId_:Ljava/lang/Object;

    .line 3566
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->hasUseSpeechpersonalizationGaiaAuthenticationTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3567
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->getUseSpeechpersonalizationGaiaAuthenticationTokens()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->setUseSpeechpersonalizationGaiaAuthenticationTokens(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    goto :goto_0

    .line 3556
    :cond_4
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->ensureGaiaAuthenticationTokenIsMutable()V

    .line 3557
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->gaiaAuthenticationToken_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->access$3900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setUseSpeechpersonalizationGaiaAuthenticationTokens(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3722
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->bitField0_:I

    .line 3723
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->useSpeechpersonalizationGaiaAuthenticationTokens_:Z

    .line 3725
    return-object p0
.end method
