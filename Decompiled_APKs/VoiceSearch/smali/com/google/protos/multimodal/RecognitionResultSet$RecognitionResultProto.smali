.class public final Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RecognitionResultSet.java"

# interfaces
.implements Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/multimodal/RecognitionResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionResultProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;


# instance fields
.field private bitField0_:I

.field private confidence_:I

.field private grammarContext_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nlconfidence_:I

.field private result_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$1;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 611
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    .line 612
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->initFields()V

    .line 613
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

    .line 56
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 213
    iput-byte v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    .line 247
    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedSerializedSize:I

    .line 57
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->initFields()V

    .line 58
    const/4 v2, 0x0

    .line 60
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 61
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 62
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 63
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 68
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :sswitch_0
    const/4 v0, 0x1

    .line 66
    goto :goto_0

    .line 75
    :sswitch_1
    iget v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    .line 76
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->makeExtensionsImmutable()V

    throw v4

    .line 80
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    .line 81
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->confidence_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 98
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 99
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

    .line 85
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    .line 86
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->nlconfidence_:I

    goto :goto_0

    .line 90
    :sswitch_4
    iget v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    .line 91
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 102
    .end local v3           #tag:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->makeExtensionsImmutable()V

    .line 104
    return-void

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/multimodal/RecognitionResultSet$1;)V
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
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 213
    iput-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    .line 247
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedSerializedSize:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/multimodal/RecognitionResultSet$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 213
    iput-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    .line 247
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedSerializedSize:I

    .line 42
    return-void
.end method

.method static synthetic access$300(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->confidence_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->nlconfidence_:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;

    .line 209
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->confidence_:I

    .line 210
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->nlconfidence_:I

    .line 211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1

    .prologue
    .line 332
    #calls: Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->create()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->access$100()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 335
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfidence()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->confidence_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object v0
.end method

.method public getGrammarContextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;

    .line 197
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 198
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 200
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->grammarContext_:Ljava/lang/Object;

    .line 203
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

.method public getNlconfidence()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->nlconfidence_:I

    return v0
.end method

.method public getResultBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;

    .line 144
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 145
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 147
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->result_:Ljava/lang/Object;

    .line 150
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
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 249
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedSerializedSize:I

    .line 250
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 270
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 252
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 253
    iget v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getResultBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 257
    :cond_1
    iget v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 258
    iget v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->confidence_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 261
    :cond_2
    iget v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 262
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->nlconfidence_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 265
    :cond_3
    iget v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getGrammarContextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 269
    :cond_4
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedSerializedSize:I

    move v1, v0

    .line 270
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

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

.method public hasGrammarContext()Z
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

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

.method public hasNlconfidence()Z
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 125
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    iget-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    .line 216
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 227
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 216
    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->hasResult()Z

    move-result v3

    if-nez v3, :cond_2

    .line 219
    iput-byte v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    move v1, v2

    .line 220
    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->hasConfidence()Z

    move-result v3

    if-nez v3, :cond_3

    .line 223
    iput-byte v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    move v1, v2

    .line 224
    goto :goto_0

    .line 226
    :cond_3
    iput-byte v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->newBuilderForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->toBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1

    .prologue
    .line 337
    invoke-static {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->newBuilder(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

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
    .line 276
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

    .line 232
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getSerializedSize()I

    .line 233
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getResultBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 236
    :cond_0
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 237
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->confidence_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 239
    :cond_1
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 240
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->nlconfidence_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 242
    :cond_2
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getGrammarContextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 245
    :cond_3
    return-void
.end method
