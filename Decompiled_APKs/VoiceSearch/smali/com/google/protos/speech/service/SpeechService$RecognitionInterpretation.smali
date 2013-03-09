.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionInterpretation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3137
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    .line 3465
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    .line 3466
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->initFields()V

    .line 3467
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

    const/4 v6, 0x1

    .line 3097
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3176
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->memoizedIsInitialized:B

    .line 3199
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->memoizedSerializedSize:I

    .line 3098
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->initFields()V

    .line 3099
    const/4 v2, 0x0

    .line 3101
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 3102
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 3103
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3104
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 3109
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3111
    const/4 v0, 0x1

    goto :goto_0

    .line 3106
    :sswitch_0
    const/4 v0, 0x1

    .line 3107
    goto :goto_0

    .line 3116
    :sswitch_1
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v6, :cond_1

    .line 3117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    .line 3118
    or-int/lit8 v2, v2, 0x1

    .line 3120
    :cond_1
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3125
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 3126
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3131
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v6, :cond_2

    .line 3132
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    .line 3134
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->makeExtensionsImmutable()V

    throw v4

    .line 3131
    :cond_3
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v6, :cond_4

    .line 3132
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    .line 3134
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->makeExtensionsImmutable()V

    .line 3136
    return-void

    .line 3127
    :catch_1
    move-exception v1

    .line 3128
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

    .line 3104
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
    .line 3075
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3080
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3176
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->memoizedIsInitialized:B

    .line 3199
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->memoizedSerializedSize:I

    .line 3082
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3075
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3083
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3176
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->memoizedIsInitialized:B

    .line 3199
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->memoizedSerializedSize:I

    .line 3083
    return-void
.end method

.method static synthetic access$3600(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3075
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .locals 1

    .prologue
    .line 3087
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    .line 3175
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1

    .prologue
    .line 3272
    #calls: Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->access$3400()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 3275
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3075
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .locals 1

    .prologue
    .line 3091
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3201
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->memoizedSerializedSize:I

    .line 3202
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 3210
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 3204
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 3205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3206
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3209
    :cond_1
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->memoizedSerializedSize:I

    move v2, v1

    .line 3210
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getSlot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter "index"

    .prologue
    .line 3166
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object v0
.end method

.method public getSlotCount()I
    .locals 1

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3178
    iget-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->memoizedIsInitialized:B

    .line 3179
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 3188
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 3179
    goto :goto_0

    .line 3181
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->getSlotCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 3182
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->getSlot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3183
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->memoizedIsInitialized:B

    move v2, v3

    .line 3184
    goto :goto_0

    .line 3181
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3187
    :cond_3
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3075
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1

    .prologue
    .line 3273
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3075
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1

    .prologue
    .line 3277
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

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
    .line 3216
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
    .line 3193
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->getSerializedSize()I

    .line 3194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3195
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->slot_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3197
    :cond_0
    return-void
.end method
