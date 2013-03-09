.class public final Lcom/google/protos/speech/service/SpeechService$Transcript;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$TranscriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transcript"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$Transcript;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$Transcript;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private transcript_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15065
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Transcript$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    .line 15362
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Transcript;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$Transcript;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$Transcript;

    .line 15363
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$Transcript;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->initFields()V

    .line 15364
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 15031
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15117
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedIsInitialized:B

    .line 15138
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedSerializedSize:I

    .line 15032
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->initFields()V

    .line 15033
    const/4 v2, 0x0

    .line 15035
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 15036
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 15037
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 15038
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 15043
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$Transcript;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 15045
    const/4 v0, 0x1

    goto :goto_0

    .line 15040
    :sswitch_0
    const/4 v0, 0x1

    .line 15041
    goto :goto_0

    .line 15050
    :sswitch_1
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I

    .line 15051
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 15056
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 15057
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15062
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->makeExtensionsImmutable()V

    throw v4

    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->makeExtensionsImmutable()V

    .line 15064
    return-void

    .line 15058
    :catch_1
    move-exception v1

    .line 15059
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15038
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 15009
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$Transcript;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15014
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15117
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedIsInitialized:B

    .line 15138
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedSerializedSize:I

    .line 15016
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15009
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$Transcript;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15017
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15117
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedIsInitialized:B

    .line 15138
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedSerializedSize:I

    .line 15017
    return-void
.end method

.method static synthetic access$18200(Lcom/google/protos/speech/service/SpeechService$Transcript;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15009
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18202(Lcom/google/protos/speech/service/SpeechService$Transcript;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15009
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18302(Lcom/google/protos/speech/service/SpeechService$Transcript;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15009
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1

    .prologue
    .line 15021
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 15115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;

    .line 15116
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1

    .prologue
    .line 15211
    #calls: Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->create()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->access$18000()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 15214
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->newBuilder()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15009
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1

    .prologue
    .line 15025
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Transcript;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 15140
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedSerializedSize:I

    .line 15141
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 15149
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 15143
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 15144
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 15145
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15148
    :cond_1
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedSerializedSize:I

    move v1, v0

    .line 15149
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15103
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;

    .line 15104
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15105
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15107
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->transcript_:Ljava/lang/Object;

    .line 15110
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

.method public hasTranscript()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 15085
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    .line 15119
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedIsInitialized:B

    .line 15120
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 15127
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 15120
    goto :goto_0

    .line 15122
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->hasTranscript()Z

    move-result v3

    if-nez v3, :cond_2

    .line 15123
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedIsInitialized:B

    move v1, v2

    .line 15124
    goto :goto_0

    .line 15126
    :cond_2
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15009
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1

    .prologue
    .line 15212
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->newBuilder()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15009
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->toBuilder()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    .locals 1

    .prologue
    .line 15216
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->newBuilder(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

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
    .line 15155
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 15132
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getSerializedSize()I

    .line 15133
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Transcript;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 15134
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15136
    :cond_0
    return-void
.end method
