.class public final Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$AlternateParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$AlternateParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/Alternates$AlternateParams;",
        "Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/Alternates$AlternateParamsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxSpanLength_:I

.field private maxTotalSpanLength_:I

.field private unit_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 301
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maybeForceBuilderInitialization()V

    .line 302
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->create()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->build()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/Alternates$AlternateParams;
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    .line 331
    .local v0, result:Lcom/google/protos/speech/common/Alternates$AlternateParams;
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 334
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateParams;
    .locals 5

    .prologue
    .line 338
    new-instance v1, Lcom/google/protos/speech/common/Alternates$AlternateParams;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/common/Alternates$AlternateParams;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V

    .line 339
    .local v1, result:Lcom/google/protos/speech/common/Alternates$AlternateParams;
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    .line 340
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 341
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 342
    or-int/lit8 v2, v2, 0x1

    .line 344
    :cond_0
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxSpanLength_:I

    #setter for: Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxSpanLength_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->access$302(Lcom/google/protos/speech/common/Alternates$AlternateParams;I)I

    .line 345
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 346
    or-int/lit8 v2, v2, 0x2

    .line 348
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxTotalSpanLength_:I

    #setter for: Lcom/google/protos/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->access$402(Lcom/google/protos/speech/common/Alternates$AlternateParams;I)I

    .line 349
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 350
    or-int/lit8 v2, v2, 0x4

    .line 352
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->unit_:I

    #setter for: Lcom/google/protos/speech/common/Alternates$AlternateParams;->unit_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->access$502(Lcom/google/protos/speech/common/Alternates$AlternateParams;I)I

    .line 353
    #setter for: Lcom/google/protos/speech/common/Alternates$AlternateParams;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->access$602(Lcom/google/protos/speech/common/Alternates$AlternateParams;I)I

    .line 354
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 2

    .prologue
    .line 322
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->create()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

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
    .line 295
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 372
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
    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 295
    check-cast p1, Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

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
    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    const/4 v2, 0x0

    .line 381
    .local v2, parsedMessage:Lcom/google/protos/speech/common/Alternates$AlternateParams;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/common/Alternates$AlternateParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    .line 390
    :cond_0
    return-object p0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-object v2, v0

    .line 384
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 387
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 358
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-object p0

    .line 359
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->hasMaxSpanLength()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getMaxSpanLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->setMaxSpanLength(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    .line 362
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->hasMaxTotalSpanLength()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getMaxTotalSpanLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->setMaxTotalSpanLength(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    .line 365
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->hasUnit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getUnit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->setUnit(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    goto :goto_0
.end method

.method public setMaxSpanLength(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 403
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    .line 404
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxSpanLength_:I

    .line 406
    return-object p0
.end method

.method public setMaxTotalSpanLength(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 424
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    .line 425
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->maxTotalSpanLength_:I

    .line 427
    return-object p0
.end method

.method public setUnit(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 445
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->bitField0_:I

    .line 446
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->unit_:I

    .line 448
    return-object p0
.end method
