.class public final Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PartialResult.java"

# interfaces
.implements Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;",
        "Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResultOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private part_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    .line 224
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->maybeForceBuilderInitialization()V

    .line 225
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->create()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePartIsMutable()V
    .locals 2

    .prologue
    .line 309
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    .line 311
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    .line 313
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->build()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    .line 250
    .local v0, result:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-static {v0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 253
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 4

    .prologue
    .line 257
    new-instance v1, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/PartialResult$1;)V

    .line 258
    .local v1, result:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    .line 259
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 260
    iget-object v2, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    .line 261
    iget v2, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    #setter for: Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->access$302(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;Ljava/util/List;)Ljava/util/List;

    .line 264
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->create()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

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
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 283
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
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    check-cast p1, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

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
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v2, 0x0

    .line 292
    .local v2, parsedMessage:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    .line 301
    :cond_0
    return-object p0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-object v2, v0

    .line 295
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 268
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-object p0

    .line 269
    :cond_1
    #getter for: Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->access$300(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    #getter for: Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->access$300(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    .line 272
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    goto :goto_0

    .line 274
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->ensurePartIsMutable()V

    .line 275
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    #getter for: Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->part_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->access$300(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
