.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionSlot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;"
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private literal_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private subslot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2336
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    .line 3059
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    .line 3060
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->initFields()V

    .line 3061
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

    const/16 v6, 0x10

    .line 2276
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2489
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    .line 2540
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedSerializedSize:I

    .line 2277
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->initFields()V

    .line 2278
    const/4 v2, 0x0

    .line 2280
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 2281
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 2282
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 2283
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 2288
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2290
    const/4 v0, 0x1

    goto :goto_0

    .line 2285
    :sswitch_0
    const/4 v0, 0x1

    .line 2286
    goto :goto_0

    .line 2295
    :sswitch_1
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    .line 2296
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2324
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 2325
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2330
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    and-int/lit8 v5, v2, 0x10

    if-ne v5, v6, :cond_1

    .line 2331
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    .line 2333
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->makeExtensionsImmutable()V

    throw v4

    .line 2300
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    .line 2301
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2326
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 2327
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

    .line 2305
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    .line 2306
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F

    goto :goto_0

    .line 2310
    :sswitch_4
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    .line 2311
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    goto :goto_0

    .line 2315
    :sswitch_5
    and-int/lit8 v4, v2, 0x10

    if-eq v4, v6, :cond_2

    .line 2316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    .line 2317
    or-int/lit8 v2, v2, 0x10

    .line 2319
    :cond_2
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2330
    .end local v3           #tag:I
    :cond_3
    and-int/lit8 v4, v2, 0x10

    if-ne v4, v6, :cond_4

    .line 2331
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    .line 2333
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->makeExtensionsImmutable()V

    .line 2335
    return-void

    .line 2283
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 2254
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;*>;"
    const/4 v0, -0x1

    .line 2259
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 2489
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    .line 2540
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedSerializedSize:I

    .line 2261
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2254
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2262
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2489
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    .line 2540
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedSerializedSize:I

    .line 2262
    return-void
.end method

.method static synthetic access$2700(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2254
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F

    return p1
.end method

.method static synthetic access$3000(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2254
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1

    .prologue
    .line 2266
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2483
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;

    .line 2484
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;

    .line 2485
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F

    .line 2486
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    .line 2487
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    .line 2488
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2630
    #calls: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->access$2500()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2633
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    .prologue
    .line 2425
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1

    .prologue
    .line 2270
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object v0
.end method

.method public getLiteralBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2450
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    .line 2451
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2452
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2454
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;

    .line 2457
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

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2374
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;

    .line 2375
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2376
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2378
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;

    .line 2381
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

    .line 2542
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedSerializedSize:I

    .line 2543
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 2568
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 2545
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 2546
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 2547
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2550
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 2551
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2554
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 2555
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v1, v3

    .line 2558
    :cond_3
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 2559
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getLiteralBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2562
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2563
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2562
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2566
    :cond_5
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->extensionsSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 2567
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedSerializedSize:I

    move v2, v1

    .line 2568
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getSubslot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter "index"

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object v0
.end method

.method public getSubslotCount()I
    .locals 1

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2407
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;

    .line 2408
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2409
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2411
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;

    .line 2414
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

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 2422
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

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

.method public hasLiteral()Z
    .locals 2

    .prologue
    .line 2432
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2356
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 2389
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2491
    iget-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    .line 2492
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    :goto_0
    move v3, v2

    .line 2513
    :goto_1
    return v3

    :cond_0
    move v2, v3

    .line 2492
    goto :goto_0

    .line 2494
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->hasName()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2495
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    goto :goto_1

    .line 2498
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->hasValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2499
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    goto :goto_1

    .line 2502
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getSubslotCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 2503
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getSubslot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2504
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    goto :goto_1

    .line 2502
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2508
    :cond_5
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2509
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    goto :goto_1

    .line 2512
    :cond_6
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->memoizedIsInitialized:B

    move v3, v2

    .line 2513
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2631
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2635
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

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
    .line 2574
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

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

    .line 2518
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getSerializedSize()I

    .line 2520
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 2522
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;>.ExtensionWriter;"
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 2523
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2525
    :cond_0
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 2526
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2528
    :cond_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    .line 2529
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 2531
    :cond_2
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 2532
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getLiteralBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2534
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2535
    const/4 v3, 0x5

    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2537
    :cond_4
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 2538
    return-void
.end method
