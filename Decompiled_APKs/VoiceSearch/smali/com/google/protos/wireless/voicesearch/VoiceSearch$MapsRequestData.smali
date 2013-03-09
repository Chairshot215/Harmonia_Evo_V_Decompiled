.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapsRequestData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;


# instance fields
.field private bitField0_:I

.field private gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

.field private gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

.field private gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private mapsServerUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private userAgent_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8139
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    .line 8718
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 8719
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->initFields()V

    .line 8720
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

    .line 8081
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8258
    iput-byte v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    .line 8303
    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    .line 8082
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->initFields()V

    .line 8083
    const/4 v2, 0x0

    .line 8085
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 8086
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 8087
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 8088
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 8093
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8095
    const/4 v0, 0x1

    goto :goto_0

    .line 8090
    :sswitch_0
    const/4 v0, 0x1

    .line 8091
    goto :goto_0

    .line 8100
    :sswitch_1
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8101
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 8130
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 8131
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8136
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->makeExtensionsImmutable()V

    throw v6

    .line 8105
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8106
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 8132
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 8133
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

    .line 8110
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8111
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 8115
    :sswitch_4
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8116
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    goto :goto_0

    .line 8120
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 8121
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v5

    .line 8122
    .local v5, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    if-eqz v5, :cond_0

    .line 8123
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8124
    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 8136
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->makeExtensionsImmutable()V

    .line 8138
    return-void

    .line 8088
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
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
    .line 8059
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8064
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8258
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    .line 8303
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    .line 8066
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8067
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8258
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    .line 8303
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    .line 8067
    return-void
.end method

.method static synthetic access$10000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8059
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object p1
.end method

.method static synthetic access$10202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    return p1
.end method

.method static synthetic access$9700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8059
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$9902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1

    .prologue
    .line 8071
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 8252
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    .line 8253
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    .line 8254
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    .line 8255
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    .line 8256
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 8257
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1

    .prologue
    .line 8392
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->access$9500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8395
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8059
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1

    .prologue
    .line 8075
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object v0
.end method

.method public getGmmBinaryHeader()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 8195
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGmmSearchRequestProto()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 8205
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGmmServerResponseEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .locals 1

    .prologue
    .line 8248
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object v0
.end method

.method public getMapsServerUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 8177
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    .line 8178
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8179
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8181
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    .line 8184
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

    .line 8305
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    .line 8306
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 8330
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 8308
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 8309
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 8310
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getMapsServerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8313
    :cond_1
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 8314
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8317
    :cond_2
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 8318
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8321
    :cond_3
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 8322
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8325
    :cond_4
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 8326
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8329
    :cond_5
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    move v1, v0

    .line 8330
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 8230
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    .line 8231
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8232
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8234
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    .line 8237
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

.method public hasGmmBinaryHeader()Z
    .locals 2

    .prologue
    .line 8192
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

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

.method public hasGmmSearchRequestProto()Z
    .locals 2

    .prologue
    .line 8202
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

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

.method public hasGmmServerResponseEncoding()Z
    .locals 2

    .prologue
    .line 8245
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

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

.method public hasMapsServerUrl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8159
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserAgent()Z
    .locals 2

    .prologue
    .line 8212
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8260
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    .line 8261
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 8280
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 8261
    goto :goto_0

    .line 8263
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasMapsServerUrl()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8264
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    goto :goto_1

    .line 8267
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasGmmBinaryHeader()Z

    move-result v3

    if-nez v3, :cond_3

    .line 8268
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    goto :goto_1

    .line 8271
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasGmmSearchRequestProto()Z

    move-result v3

    if-nez v3, :cond_4

    .line 8272
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    goto :goto_1

    .line 8275
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasUserAgent()Z

    move-result v3

    if-nez v3, :cond_5

    .line 8276
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    goto :goto_1

    .line 8279
    :cond_5
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    move v2, v1

    .line 8280
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8059
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1

    .prologue
    .line 8393
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8059
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1

    .prologue
    .line 8397
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

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
    .line 8336
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

    .line 8285
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getSerializedSize()I

    .line 8286
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8287
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getMapsServerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8289
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8290
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8292
    :cond_1
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 8293
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8295
    :cond_2
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 8296
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8298
    :cond_3
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 8299
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8301
    :cond_4
    return-void
.end method
