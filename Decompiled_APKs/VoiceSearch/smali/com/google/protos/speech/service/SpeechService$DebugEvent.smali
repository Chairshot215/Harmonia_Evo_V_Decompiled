.class public final Lcom/google/protos/speech/service/SpeechService$DebugEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$DebugEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$DebugEvent;


# instance fields
.field private bitField0_:I

.field private durationMs_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private startTimeMs_:J

.field private subevent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
            ">;"
        }
    .end annotation
.end field

.field private text_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6680
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 7200
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .line 7201
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->initFields()V

    .line 7202
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/16 v6, 0x8

    .line 6625
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6776
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedIsInitialized:B

    .line 6802
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedSerializedSize:I

    .line 6626
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->initFields()V

    .line 6627
    const/4 v2, 0x0

    .line 6629
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 6630
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 6631
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 6632
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 6637
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6639
    const/4 v0, 0x1

    goto :goto_0

    .line 6634
    :sswitch_0
    const/4 v0, 0x1

    .line 6635
    goto :goto_0

    .line 6644
    :sswitch_1
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    .line 6645
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 6668
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 6669
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6674
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    and-int/lit8 v5, v2, 0x8

    if-ne v5, v6, :cond_1

    .line 6675
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    .line 6677
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->makeExtensionsImmutable()V

    throw v4

    .line 6649
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    .line 6650
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 6670
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 6671
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

    .line 6654
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    .line 6655
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 6659
    :sswitch_4
    and-int/lit8 v4, v2, 0x8

    if-eq v4, v6, :cond_2

    .line 6660
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    .line 6661
    or-int/lit8 v2, v2, 0x8

    .line 6663
    :cond_2
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 6674
    .end local v3           #tag:I
    :cond_3
    and-int/lit8 v4, v2, 0x8

    if-ne v4, v6, :cond_4

    .line 6675
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    .line 6677
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->makeExtensionsImmutable()V

    .line 6679
    return-void

    .line 6632
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 6603
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6608
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6776
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedIsInitialized:B

    .line 6802
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedSerializedSize:I

    .line 6610
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6603
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6611
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6776
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedIsInitialized:B

    .line 6802
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedSerializedSize:I

    .line 6611
    return-void
.end method

.method static synthetic access$7802(Lcom/google/protos/speech/service/SpeechService$DebugEvent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6603
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J

    return-wide p1
.end method

.method static synthetic access$7902(Lcom/google/protos/speech/service/SpeechService$DebugEvent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6603
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J

    return-wide p1
.end method

.method static synthetic access$8000(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6603
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/google/protos/speech/service/SpeechService$DebugEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6603
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6603
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/google/protos/speech/service/SpeechService$DebugEvent;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6603
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8202(Lcom/google/protos/speech/service/SpeechService$DebugEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6603
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1

    .prologue
    .line 6615
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 6771
    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J

    .line 6772
    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J

    .line 6773
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    .line 6774
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    .line 6775
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1

    .prologue
    .line 6887
    #calls: Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->create()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->access$7600()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 6890
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6603
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1

    .prologue
    .line 6619
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    return-object v0
.end method

.method public getDurationMs()J
    .locals 2

    .prologue
    .line 6713
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 6804
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedSerializedSize:I

    .line 6805
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 6825
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 6807
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 6808
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1

    .line 6809
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 6812
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_2

    .line 6813
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 6816
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_3

    .line 6817
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 6820
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 6821
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 6820
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6824
    :cond_4
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedSerializedSize:I

    move v2, v1

    .line 6825
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getStartTimeMs()J
    .locals 2

    .prologue
    .line 6703
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J

    return-wide v0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6738
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    .line 6739
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6740
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6742
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;

    .line 6745
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

.method public hasDurationMs()Z
    .locals 2

    .prologue
    .line 6710
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

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

.method public hasStartTimeMs()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6700
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 6720
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 6778
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedIsInitialized:B

    .line 6779
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 6782
    :goto_0
    return v1

    .line 6779
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 6781
    :cond_1
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6603
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1

    .prologue
    .line 6888
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6603
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->toBuilder()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1

    .prologue
    .line 6892
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->newBuilder(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

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
    .line 6831
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
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6787
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getSerializedSize()I

    .line 6788
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    .line 6789
    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6791
    :cond_0
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 6792
    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6794
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 6795
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6797
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 6798
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6797
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6800
    :cond_3
    return-void
.end method
