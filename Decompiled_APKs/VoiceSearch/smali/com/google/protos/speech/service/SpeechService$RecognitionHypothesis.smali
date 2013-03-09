.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesisOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionHypothesis"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;


# instance fields
.field private bitField0_:I

.field private confidence_:D

.field private grammarId_:Ljava/lang/Object;

.field private interpretation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sentence_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3574
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    .line 4179
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    .line 4180
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->initFields()V

    .line 4181
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

    const/4 v6, 0x4

    .line 3519
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3693
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    .line 3733
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    .line 3520
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->initFields()V

    .line 3521
    const/4 v2, 0x0

    .line 3523
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 3524
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 3525
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3526
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 3531
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3533
    const/4 v0, 0x1

    goto :goto_0

    .line 3528
    :sswitch_0
    const/4 v0, 0x1

    .line 3529
    goto :goto_0

    .line 3538
    :sswitch_1
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    .line 3539
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3562
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 3563
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3568
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    and-int/lit8 v5, v2, 0x4

    if-ne v5, v6, :cond_1

    .line 3569
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    .line 3571
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->makeExtensionsImmutable()V

    throw v4

    .line 3543
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    .line 3544
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3564
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 3565
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

    .line 3548
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    and-int/lit8 v4, v2, 0x4

    if-eq v4, v6, :cond_2

    .line 3549
    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    .line 3550
    or-int/lit8 v2, v2, 0x4

    .line 3552
    :cond_2
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3556
    :sswitch_4
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    .line 3557
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3568
    .end local v3           #tag:I
    :cond_3
    and-int/lit8 v4, v2, 0x4

    if-ne v4, v6, :cond_4

    .line 3569
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    .line 3571
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->makeExtensionsImmutable()V

    .line 3573
    return-void

    .line 3526
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
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
    .line 3497
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3502
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3693
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    .line 3733
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    .line 3504
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3497
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3505
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3693
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    .line 3733
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    .line 3505
    return-void
.end method

.method static synthetic access$4000(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3497
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3497
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1

    .prologue
    .line 3509
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 3688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    .line 3689
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    .line 3690
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    .line 3691
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    .line 3692
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1

    .prologue
    .line 3818
    #calls: Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->access$3800()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 3821
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfidence()D
    .locals 2

    .prologue
    .line 3630
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3497
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1

    .prologue
    .line 3513
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object v0
.end method

.method public getGrammarIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3676
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    .line 3677
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3678
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3680
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->grammarId_:Ljava/lang/Object;

    .line 3683
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

.method public getInterpretation(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .locals 1
    .parameter "index"

    .prologue
    .line 3647
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    return-object v0
.end method

.method public getInterpretationCount()I
    .locals 1

    .prologue
    .line 3644
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSentence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3597
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    .line 3598
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3599
    check-cast v1, Ljava/lang/String;

    .line 3607
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3601
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3603
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3604
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3605
    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3607
    goto :goto_0
.end method

.method public getSentenceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3612
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    .line 3613
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3614
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3616
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->sentence_:Ljava/lang/Object;

    .line 3619
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
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3735
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    .line 3736
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 3756
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 3738
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 3739
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 3740
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3743
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 3744
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 3747
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3748
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3747
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3751
    :cond_3
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4

    .line 3752
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getGrammarIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3755
    :cond_4
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedSerializedSize:I

    move v2, v1

    .line 3756
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 3627
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

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

.method public hasGrammarId()Z
    .locals 2

    .prologue
    .line 3658
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

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

.method public hasSentence()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3594
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    .line 3695
    iget-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    .line 3696
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    :goto_0
    move v3, v2

    .line 3713
    :goto_1
    return v3

    :cond_0
    move v2, v3

    .line 3696
    goto :goto_0

    .line 3698
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasSentence()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3699
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    goto :goto_1

    .line 3702
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasConfidence()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3703
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    goto :goto_1

    .line 3706
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getInterpretationCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 3707
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getInterpretation(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3708
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    goto :goto_1

    .line 3706
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3712
    :cond_5
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->memoizedIsInitialized:B

    move v3, v2

    .line 3713
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3497
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1

    .prologue
    .line 3819
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3497
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1

    .prologue
    .line 3823
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

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
    .line 3762
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3718
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSerializedSize()I

    .line 3719
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 3720
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3722
    :cond_0
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 3723
    iget-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->confidence_:D

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3725
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3726
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3728
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 3729
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getGrammarIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3731
    :cond_3
    return-void
.end method
