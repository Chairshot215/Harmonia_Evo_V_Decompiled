.class public final Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientParametersProto.java"

# interfaces
.implements Lcom/google/protos/speech/ClientParametersProto$ClientParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/ClientParametersProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/ClientParametersProto$ClientParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;


# instance fields
.field private bandwidthEstimatorMeanRttThresholdSecs_:D

.field private bandwidthEstimatorPacketLossThreshold_:D

.field private bandwidthEstimatorStdevRttThresholdSecs_:D

.field private bitField0_:I

.field private enableHifiForWifi_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private showHintOnHelp_:Z

.field private useWidebandSpeex_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$1;

    invoke-direct {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 591
    new-instance v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    .line 592
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    invoke-direct {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->initFields()V

    .line 593
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

    .line 60
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 203
    iput-byte v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedIsInitialized:B

    .line 235
    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedSerializedSize:I

    .line 61
    invoke-direct {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->initFields()V

    .line 62
    const/4 v2, 0x0

    .line 64
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 65
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 66
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 67
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 72
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :sswitch_0
    const/4 v0, 0x1

    .line 70
    goto :goto_0

    .line 79
    :sswitch_1
    iget v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    .line 80
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 110
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->makeExtensionsImmutable()V

    throw v4

    .line 84
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    .line 85
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 112
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 113
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    .line 90
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D

    goto :goto_0

    .line 94
    :sswitch_4
    iget v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    .line 95
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D

    goto :goto_0

    .line 99
    :sswitch_5
    iget v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D

    goto :goto_0

    .line 104
    :sswitch_6
    iget v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    .line 105
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 116
    .end local v3           #tag:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->makeExtensionsImmutable()V

    .line 118
    return-void

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x19 -> :sswitch_3
        0x21 -> :sswitch_4
        0x29 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/ClientParametersProto$1;)V
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
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 203
    iput-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedIsInitialized:B

    .line 235
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedSerializedSize:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/ClientParametersProto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 203
    iput-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedIsInitialized:B

    .line 235
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedSerializedSize:I

    .line 46
    return-void
.end method

.method static synthetic access$302(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D

    return-wide p1
.end method

.method static synthetic access$802(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    return-object v0
.end method

.method private initFields()V
    .locals 5

    .prologue
    const-wide v3, 0x3fc3333333333333L

    const/4 v2, 0x0

    .line 196
    iput-boolean v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z

    .line 197
    iput-boolean v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z

    .line 198
    iput-wide v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D

    .line 199
    const-wide v0, 0x3fb999999999999aL

    iput-wide v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D

    .line 200
    iput-wide v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D

    .line 201
    iput-boolean v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z

    .line 202
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 1

    .prologue
    .line 328
    #calls: Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->create()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->access$100()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 331
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->newBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBandwidthEstimatorMeanRttThresholdSecs()D
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D

    return-wide v0
.end method

.method public getBandwidthEstimatorPacketLossThreshold()D
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D

    return-wide v0
.end method

.method public getBandwidthEstimatorStdevRttThresholdSecs()D
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->defaultInstance:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    return-object v0
.end method

.method public getEnableHifiForWifi()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 237
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedSerializedSize:I

    .line 238
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 266
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 240
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 241
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 242
    iget-boolean v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 245
    :cond_1
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 246
    iget-boolean v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 249
    :cond_2
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 250
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 253
    :cond_3
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 254
    iget-wide v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 257
    :cond_4
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 258
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 261
    :cond_5
    iget v2, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 262
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 265
    :cond_6
    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedSerializedSize:I

    move v1, v0

    .line 266
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getShowHintOnHelp()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z

    return v0
.end method

.method public getUseWidebandSpeex()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z

    return v0
.end method

.method public hasBandwidthEstimatorMeanRttThresholdSecs()Z
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

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

.method public hasBandwidthEstimatorPacketLossThreshold()Z
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

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

.method public hasBandwidthEstimatorStdevRttThresholdSecs()Z
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

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

.method public hasEnableHifiForWifi()Z
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

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

.method public hasShowHintOnHelp()Z
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

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

.method public hasUseWidebandSpeex()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 139
    iget v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 205
    iget-byte v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedIsInitialized:B

    .line 206
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 209
    :goto_0
    return v1

    .line 206
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 208
    :cond_1
    iput-byte v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->newBuilderForType()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->newBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->toBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;
    .locals 1

    .prologue
    .line 333
    invoke-static {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->newBuilder(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

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
    .line 272
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 214
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getSerializedSize()I

    .line 215
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 216
    iget-boolean v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->useWidebandSpeex_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 218
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 219
    iget-boolean v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->enableHifiForWifi_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 221
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 222
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorMeanRttThresholdSecs_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 224
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 225
    iget-wide v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorStdevRttThresholdSecs_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 227
    :cond_3
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 228
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bandwidthEstimatorPacketLossThreshold_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 230
    :cond_4
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 231
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->showHintOnHelp_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 233
    :cond_5
    return-void
.end method
