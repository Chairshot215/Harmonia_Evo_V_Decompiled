.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private slot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3284
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    .line 3285
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->maybeForceBuilderInitialization()V

    .line 3286
    return-void
.end method

.method static synthetic access$3400()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1

    .prologue
    .line 3279
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1

    .prologue
    .line 3291
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSlotIsMutable()V
    .locals 2

    .prologue
    .line 3376
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3377
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    .line 3378
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    .line 3380
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3289
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .locals 2

    .prologue
    .line 3310
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    .line 3311
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3312
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3314
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .locals 4

    .prologue
    .line 3318
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 3319
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    .line 3320
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3321
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    .line 3322
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    .line 3324
    :cond_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->access$3602(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;Ljava/util/List;)Ljava/util/List;

    .line 3325
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 2

    .prologue
    .line 3302
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

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
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .locals 1

    .prologue
    .line 3306
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public getSlot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter "index"

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object v0
.end method

.method public getSlotCount()I
    .locals 1

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 3344
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->getSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3345
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->getSlot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3347
    const/4 v1, 0x0

    .line 3350
    :goto_1
    return v1

    .line 3344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3350
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
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
    .line 3279
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3279
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

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
    .line 3279
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3357
    const/4 v2, 0x0

    .line 3359
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3364
    if-eqz v2, :cond_0

    .line 3365
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    .line 3368
    :cond_0
    return-object p0

    .line 3360
    :catch_0
    move-exception v1

    .line 3361
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-object v2, v0

    .line 3362
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3364
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3365
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 3329
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3340
    :cond_0
    :goto_0
    return-object p0

    .line 3330
    :cond_1
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->access$3600(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3331
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3332
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->access$3600(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    .line 3333
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    goto :goto_0

    .line 3335
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->ensureSlotIsMutable()V

    .line 3336
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->access$3600(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
