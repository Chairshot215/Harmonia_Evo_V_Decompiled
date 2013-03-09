.class public final Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;",
        "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field private appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

.field private bitField0_:I

.field private dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

.field private errorType_:I

.field private index_:I

.field private inputLanguage_:Ljava/lang/Object;

.field private inputLength_:I

.field private inputSelectionBegin_:I

.field private inputSelectionEnd_:I

.field private nBestChooseAfterValue_:Ljava/lang/Object;

.field private nBestChooseBeforeValue_:Ljava/lang/Object;

.field private nBestChooseReplacedPhraseLength_:I

.field private sessionIdRequestId_:Ljava/lang/Object;

.field private textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12304
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12515
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_SHOWN:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 12539
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 12584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12637
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 12766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12819
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->UNKNOWN_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 12843
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12305
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->maybeForceBuilderInitialization()V

    .line 12306
    return-void
.end method

.method static synthetic access$12700()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12299
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1

    .prologue
    .line 12311
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 12309
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12299
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 2

    .prologue
    .line 12358
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    .line 12359
    .local v0, result:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12360
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12362
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12299
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 5

    .prologue
    .line 12366
    new-instance v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 12367
    .local v1, result:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12368
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12369
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 12370
    or-int/lit8 v2, v2, 0x1

    .line 12372
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$12902(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 12373
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 12374
    or-int/lit8 v2, v2, 0x2

    .line 12376
    :cond_1
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13002(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 12377
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 12378
    or-int/lit8 v2, v2, 0x4

    .line 12380
    :cond_2
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->errorType_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13102(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12381
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 12382
    or-int/lit8 v2, v2, 0x8

    .line 12384
    :cond_3
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13202(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12385
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 12386
    or-int/lit8 v2, v2, 0x10

    .line 12388
    :cond_4
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13302(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 12389
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 12390
    or-int/lit8 v2, v2, 0x20

    .line 12392
    :cond_5
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionBegin_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13402(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12393
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 12394
    or-int/lit8 v2, v2, 0x40

    .line 12396
    :cond_6
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionEnd_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13502(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12397
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 12398
    or-int/lit16 v2, v2, 0x80

    .line 12400
    :cond_7
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLength_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13602(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12401
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 12402
    or-int/lit16 v2, v2, 0x100

    .line 12404
    :cond_8
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->index_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13702(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12405
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 12406
    or-int/lit16 v2, v2, 0x200

    .line 12408
    :cond_9
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->timestamp_:J

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13802(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;J)J

    .line 12409
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 12410
    or-int/lit16 v2, v2, 0x400

    .line 12412
    :cond_a
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13902(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12413
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 12414
    or-int/lit16 v2, v2, 0x800

    .line 12416
    :cond_b
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14002(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 12417
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 12418
    or-int/lit16 v2, v2, 0x1000

    .line 12420
    :cond_c
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14102(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12421
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 12422
    or-int/lit16 v2, v2, 0x2000

    .line 12424
    :cond_d
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14202(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12425
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 12426
    or-int/lit16 v2, v2, 0x4000

    .line 12428
    :cond_e
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseReplacedPhraseLength_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14302(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12429
    #setter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14402(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I

    .line 12430
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12299
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12299
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2

    .prologue
    .line 12350
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

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
    .line 12299
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 12299
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12299
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1

    .prologue
    .line 12354
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 12492
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
    .line 12299
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12299
    check-cast p1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

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
    .line 12299
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12499
    const/4 v2, 0x0

    .line 12501
    .local v2, parsedMessage:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    :try_start_0
    sget-object v3, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12506
    if-eqz v2, :cond_0

    .line 12507
    invoke-virtual {p0, v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12510
    :cond_0
    return-object p0

    .line 12502
    :catch_0
    move-exception v1

    .line 12503
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-object v2, v0

    .line 12504
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12506
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 12507
    invoke-virtual {p0, v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 12434
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 12488
    :cond_0
    :goto_0
    return-object p0

    .line 12435
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12436
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getAction()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12438
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasDialogType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12439
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDialogType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setDialogType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12441
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasErrorType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12442
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getErrorType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setErrorType(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12444
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasSessionIdRequestId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12445
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12446
    #getter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13200(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12449
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasTextModificationActionType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12450
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getTextModificationActionType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setTextModificationActionType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12452
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasInputSelectionBegin()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12453
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getInputSelectionBegin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setInputSelectionBegin(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12455
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasInputSelectionEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12456
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getInputSelectionEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setInputSelectionEnd(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12458
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasInputLength()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12459
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getInputLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setInputLength(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12461
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12462
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setIndex(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12464
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 12465
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setTimestamp(J)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12467
    :cond_b
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasInputLanguage()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 12468
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12469
    #getter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$13900(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12472
    :cond_c
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasAppIdentityType()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 12473
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getAppIdentityType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setAppIdentityType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 12475
    :cond_d
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasNBestChooseBeforeValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12476
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12477
    #getter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14100(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12480
    :cond_e
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasNBestChooseAfterValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 12481
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12482
    #getter for: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->access$14200(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12485
    :cond_f
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->hasNBestChooseReplacedPhraseLength()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12486
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getNBestChooseReplacedPhraseLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->setNBestChooseReplacedPhraseLength(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    goto/16 :goto_0
.end method

.method public setAction(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12523
    if-nez p1, :cond_0

    .line 12524
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12526
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12527
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 12529
    return-object p0
.end method

.method public setAppIdentityType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12827
    if-nez p1, :cond_0

    .line 12828
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12830
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12831
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 12833
    return-object p0
.end method

.method public setDialogType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12547
    if-nez p1, :cond_0

    .line 12548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12550
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12551
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 12553
    return-object p0
.end method

.method public setErrorType(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12571
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12572
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->errorType_:I

    .line 12574
    return-object p0
.end method

.method public setIndex(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12732
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12733
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->index_:I

    .line 12735
    return-object p0
.end method

.method public setInputLanguage(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12793
    if-nez p1, :cond_0

    .line 12794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12796
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12797
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLanguage_:Ljava/lang/Object;

    .line 12799
    return-object p0
.end method

.method public setInputLength(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12711
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12712
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputLength_:I

    .line 12714
    return-object p0
.end method

.method public setInputSelectionBegin(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12669
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12670
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionBegin_:I

    .line 12672
    return-object p0
.end method

.method public setInputSelectionEnd(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12690
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12691
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->inputSelectionEnd_:I

    .line 12693
    return-object p0
.end method

.method public setNBestChooseAfterValue(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12923
    if-nez p1, :cond_0

    .line 12924
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12926
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12927
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12929
    return-object p0
.end method

.method public setNBestChooseBeforeValue(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12870
    if-nez p1, :cond_0

    .line 12871
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12873
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12874
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12876
    return-object p0
.end method

.method public setNBestChooseReplacedPhraseLength(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12957
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12958
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->nBestChooseReplacedPhraseLength_:I

    .line 12960
    return-object p0
.end method

.method public setTextModificationActionType(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12645
    if-nez p1, :cond_0

    .line 12646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12648
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12649
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 12651
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12753
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->bitField0_:I

    .line 12754
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->timestamp_:J

    .line 12756
    return-object p0
.end method
