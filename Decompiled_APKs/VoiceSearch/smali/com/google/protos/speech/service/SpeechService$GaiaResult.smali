.class public final Lcom/google/protos/speech/service/SpeechService$GaiaResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$GaiaResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GaiaResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$GaiaResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$GaiaResult;


# instance fields
.field private bitField0_:I

.field private code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

.field private errorMessage_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16308
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 16656
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 16657
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->initFields()V

    .line 16658
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 16265
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16371
    iput-byte v6, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->memoizedIsInitialized:B

    .line 16395
    iput v6, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->memoizedSerializedSize:I

    .line 16266
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->initFields()V

    .line 16267
    const/4 v2, 0x0

    .line 16269
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 16270
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 16271
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 16272
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 16277
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 16279
    const/4 v0, 0x1

    goto :goto_0

    .line 16274
    :sswitch_0
    const/4 v0, 0x1

    .line 16275
    goto :goto_0

    .line 16284
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 16285
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    move-result-object v5

    .line 16286
    .local v5, value:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;
    if-eqz v5, :cond_0

    .line 16287
    iget v6, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->bitField0_:I

    .line 16288
    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 16299
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;
    :catch_0
    move-exception v1

    .line 16300
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16305
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->makeExtensionsImmutable()V

    throw v6

    .line 16293
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->bitField0_:I

    .line 16294
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->errorMessage_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 16301
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 16302
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16305
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->makeExtensionsImmutable()V

    .line 16307
    return-void

    .line 16272
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16243
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 16248
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16371
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->memoizedIsInitialized:B

    .line 16395
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->memoizedSerializedSize:I

    .line 16250
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16243
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16251
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16371
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->memoizedIsInitialized:B

    .line 16395
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->memoizedSerializedSize:I

    .line 16251
    return-void
.end method

.method static synthetic access$19802(Lcom/google/protos/speech/service/SpeechService$GaiaResult;Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;)Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16243
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    return-object p1
.end method

.method static synthetic access$19900(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16243
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->errorMessage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$19902(Lcom/google/protos/speech/service/SpeechService$GaiaResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16243
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->errorMessage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20002(Lcom/google/protos/speech/service/SpeechService$GaiaResult;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16243
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .locals 1

    .prologue
    .line 16255
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 16368
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->AUTHENTICATION_OK:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 16369
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->errorMessage_:Ljava/lang/Object;

    .line 16370
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1

    .prologue
    .line 16472
    #calls: Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->create()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->access$19600()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 16475
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->newBuilder()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCode()Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;
    .locals 1

    .prologue
    .line 16331
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16243
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .locals 1

    .prologue
    .line 16259
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 16356
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->errorMessage_:Ljava/lang/Object;

    .line 16357
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 16358
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16360
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->errorMessage_:Ljava/lang/Object;

    .line 16363
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 16397
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->memoizedSerializedSize:I

    .line 16398
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 16410
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 16400
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 16401
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 16402
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 16405
    :cond_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 16406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16409
    :cond_2
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->memoizedSerializedSize:I

    move v1, v0

    .line 16410
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 16328
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorMessage()Z
    .locals 2

    .prologue
    .line 16338
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 16373
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->memoizedIsInitialized:B

    .line 16374
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 16381
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 16374
    goto :goto_0

    .line 16376
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->hasCode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 16377
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->memoizedIsInitialized:B

    move v1, v2

    .line 16378
    goto :goto_0

    .line 16380
    :cond_2
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16243
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1

    .prologue
    .line 16473
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->newBuilder()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16243
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->toBuilder()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1

    .prologue
    .line 16477
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->newBuilder(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 16416
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 16386
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getSerializedSize()I

    .line 16387
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 16388
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16390
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 16391
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16393
    :cond_1
    return-void
.end method
