.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;


# instance fields
.field private alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

.field private bitField0_:I

.field private endTimeUsec_:J

.field private hypothesis_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private startTimeUsec_:J

.field private status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field private utteranceId_:Ljava/lang/Object;

.field private waveformClippedRatio_:F

.field private waveformData_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4334
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 5106
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .line 5107
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->initFields()V

    .line 5108
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x2

    .line 4247
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4474
    iput-byte v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    .line 4528
    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedSerializedSize:I

    .line 4248
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->initFields()V

    .line 4249
    const/4 v2, 0x0

    .line 4251
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 4252
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 4253
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 4254
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 4259
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4261
    const/4 v0, 0x1

    goto :goto_0

    .line 4256
    :sswitch_0
    const/4 v0, 0x1

    .line 4257
    goto :goto_0

    .line 4266
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 4267
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    move-result-object v6

    .line 4268
    .local v6, value:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    if-eqz v6, :cond_0

    .line 4269
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    .line 4270
    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4322
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v6           #value:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    :catch_0
    move-exception v1

    .line 4323
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4328
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    and-int/lit8 v8, v2, 0x2

    if-ne v8, v9, :cond_1

    .line 4329
    iget-object v8, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    .line 4331
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->makeExtensionsImmutable()V

    throw v7

    .line 4275
    .restart local v5       #tag:I
    :sswitch_2
    and-int/lit8 v7, v2, 0x2

    if-eq v7, v9, :cond_2

    .line 4276
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    .line 4277
    or-int/lit8 v2, v2, 0x2

    .line 4279
    :cond_2
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    sget-object v8, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4324
    .end local v5           #tag:I
    :catch_1
    move-exception v1

    .line 4325
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4283
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    .line 4284
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    goto :goto_0

    .line 4288
    :sswitch_4
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    .line 4289
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 4293
    :sswitch_5
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    .line 4294
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F

    goto/16 :goto_0

    .line 4298
    :sswitch_6
    const/4 v4, 0x0

    .line 4299
    .local v4, subBuilder:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_3

    .line 4300
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {v7}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v4

    .line 4302
    :cond_3
    sget-object v7, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 4303
    if-eqz v4, :cond_4

    .line 4304
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    .line 4305
    invoke-virtual {v4}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 4307
    :cond_4
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    goto/16 :goto_0

    .line 4311
    .end local v4           #subBuilder:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    :sswitch_7
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    .line 4312
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J

    goto/16 :goto_0

    .line 4316
    :sswitch_8
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    .line 4317
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4328
    .end local v5           #tag:I
    :cond_5
    and-int/lit8 v7, v2, 0x2

    if-ne v7, v9, :cond_6

    .line 4329
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    .line 4331
    :cond_6
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->makeExtensionsImmutable()V

    .line 4333
    return-void

    .line 4254
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2d -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
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
    .line 4225
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4230
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4474
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    .line 4528
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedSerializedSize:I

    .line 4232
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4225
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4233
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4474
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    .line 4528
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedSerializedSize:I

    .line 4233
    return-void
.end method

.method static synthetic access$4802(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;)Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4225
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4225
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4225
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4225
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4225
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4225
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4225
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F

    return p1
.end method

.method static synthetic access$5302(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4225
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4225
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J

    return-wide p1
.end method

.method static synthetic access$5502(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4225
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J

    return-wide p1
.end method

.method static synthetic access$5602(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4225
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1

    .prologue
    .line 4237
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 4465
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 4466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    .line 4467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    .line 4468
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;

    .line 4469
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F

    .line 4470
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 4471
    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J

    .line 4472
    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J

    .line 4473
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4629
    #calls: Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->access$4600()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 4632
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 4441
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4225
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1

    .prologue
    .line 4241
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object v0
.end method

.method public getEndTimeUsec()J
    .locals 2

    .prologue
    .line 4461
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J

    return-wide v0
.end method

.method public getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter "index"

    .prologue
    .line 4374
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object v0
.end method

.method public getHypothesisCount()I
    .locals 1

    .prologue
    .line 4371
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 4530
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedSerializedSize:I

    .line 4531
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 4567
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 4533
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 4534
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 4535
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 4538
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 4539
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4538
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4542
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3

    .line 4543
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getUtteranceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4546
    :cond_3
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4

    .line 4547
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4550
    :cond_4
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_5

    .line 4551
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v1, v3

    .line 4554
    :cond_5
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    .line 4555
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4558
    :cond_6
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7

    .line 4559
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 4562
    :cond_7
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_8

    .line 4563
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J

    invoke-static {v7, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 4566
    :cond_8
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedSerializedSize:I

    move v2, v1

    .line 4567
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getStartTimeUsec()J
    .locals 2

    .prologue
    .line 4451
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J

    return-wide v0
.end method

.method public getStatus()Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    .locals 1

    .prologue
    .line 4357
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    return-object v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4388
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    .line 4389
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4390
    check-cast v1, Ljava/lang/String;

    .line 4398
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4392
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4394
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4395
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4396
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4398
    goto :goto_0
.end method

.method public getUtteranceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4403
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    .line 4404
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4405
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4407
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->utteranceId_:Ljava/lang/Object;

    .line 4410
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

.method public getWaveformClippedRatio()F
    .locals 1

    .prologue
    .line 4431
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F

    return v0
.end method

.method public getWaveformData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4421
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAlternates()Z
    .locals 2

    .prologue
    .line 4438
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEndTimeUsec()Z
    .locals 2

    .prologue
    .line 4458
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartTimeUsec()Z
    .locals 2

    .prologue
    .line 4448
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4354
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUtteranceId()Z
    .locals 2

    .prologue
    .line 4385
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

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

.method public hasWaveformClippedRatio()Z
    .locals 2

    .prologue
    .line 4428
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWaveformData()Z
    .locals 2

    .prologue
    .line 4418
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4476
    iget-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    .line 4477
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    :goto_0
    move v3, v2

    .line 4496
    :goto_1
    return v3

    :cond_0
    move v2, v3

    .line 4477
    goto :goto_0

    .line 4479
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasStatus()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4480
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    goto :goto_1

    .line 4483
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesisCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 4484
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4485
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    goto :goto_1

    .line 4483
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4489
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasAlternates()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4490
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4491
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    goto :goto_1

    .line 4495
    :cond_5
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->memoizedIsInitialized:B

    move v3, v2

    .line 4496
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4225
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4630
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4225
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4634
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

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
    .line 4573
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4501
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getSerializedSize()I

    .line 4502
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 4503
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4505
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4506
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4508
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 4509
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getUtteranceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4511
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 4512
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4514
    :cond_3
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 4515
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->waveformClippedRatio_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4517
    :cond_4
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 4518
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4520
    :cond_5
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 4521
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->startTimeUsec_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4523
    :cond_6
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 4524
    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->endTimeUsec_:J

    invoke-virtual {p1, v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4526
    :cond_7
    return-void
.end method
