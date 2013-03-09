.class public final Lcom/google/protos/speech/service/SpeechService$RequestMessage;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RequestMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RequestMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RequestMessage;


# instance fields
.field private bitField0_:I

.field private enableDebugPassword_:Ljava/lang/Object;

.field private enableDebug_:Z

.field private header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5739
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 6167
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    .line 6168
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->initFields()V

    .line 6169
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
    const/4 v5, -0x1

    .line 5687
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 5813
    iput-byte v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->memoizedIsInitialized:B

    .line 5848
    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->memoizedSerializedSize:I

    .line 5688
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->initFields()V

    .line 5689
    const/4 v2, 0x0

    .line 5691
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 5692
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 5693
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 5694
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 5699
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5701
    const/4 v0, 0x1

    goto :goto_0

    .line 5696
    :sswitch_0
    const/4 v0, 0x1

    .line 5697
    goto :goto_0

    .line 5706
    :sswitch_1
    const/4 v3, 0x0

    .line 5707
    .local v3, subBuilder:Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 5708
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-virtual {v5}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->toBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v3

    .line 5710
    :cond_1
    sget-object v5, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 5711
    if-eqz v3, :cond_2

    .line 5712
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-virtual {v3, v5}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 5713
    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 5715
    :cond_2
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 5730
    .end local v3           #subBuilder:Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 5731
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5736
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->makeExtensionsImmutable()V

    throw v5

    .line 5719
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    .line 5720
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebug_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 5732
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 5733
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5724
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    .line 5725
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebugPassword_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 5736
    .end local v4           #tag:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->makeExtensionsImmutable()V

    .line 5738
    return-void

    .line 5694
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 5665
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<Lcom/google/protos/speech/service/SpeechService$RequestMessage;*>;"
    const/4 v0, -0x1

    .line 5670
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 5813
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->memoizedIsInitialized:B

    .line 5848
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->memoizedSerializedSize:I

    .line 5672
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5665
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5673
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 5813
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->memoizedIsInitialized:B

    .line 5848
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->memoizedSerializedSize:I

    .line 5673
    return-void
.end method

.method static synthetic access$6702(Lcom/google/protos/speech/service/SpeechService$RequestMessage;Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5665
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object p1
.end method

.method static synthetic access$6802(Lcom/google/protos/speech/service/SpeechService$RequestMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5665
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebug_:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5665
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebugPassword_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/google/protos/speech/service/SpeechService$RequestMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5665
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebugPassword_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/google/protos/speech/service/SpeechService$RequestMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5665
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 1

    .prologue
    .line 5677
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5809
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 5810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebug_:Z

    .line 5811
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebugPassword_:Ljava/lang/Object;

    .line 5812
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1

    .prologue
    .line 5930
    #calls: Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->access$6500()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 5933
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5896
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5665
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 1

    .prologue
    .line 5681
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    return-object v0
.end method

.method public getEnableDebug()Z
    .locals 1

    .prologue
    .line 5772
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebug_:Z

    return v0
.end method

.method public getEnableDebugPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5797
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebugPassword_:Ljava/lang/Object;

    .line 5798
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5799
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5801
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebugPassword_:Ljava/lang/Object;

    .line 5804
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

.method public getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1

    .prologue
    .line 5762
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5850
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->memoizedSerializedSize:I

    .line 5851
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5868
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 5853
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 5854
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 5855
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5858
    :cond_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 5859
    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebug_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5862
    :cond_2
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 5863
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getEnableDebugPasswordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5866
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 5867
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 5868
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasEnableDebug()Z
    .locals 2

    .prologue
    .line 5769
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

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

.method public hasEnableDebugPassword()Z
    .locals 2

    .prologue
    .line 5779
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

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

.method public hasHeader()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5759
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

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

    .line 5815
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->memoizedIsInitialized:B

    .line 5816
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 5827
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 5816
    goto :goto_0

    .line 5818
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->hasHeader()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5819
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->memoizedIsInitialized:B

    move v1, v2

    .line 5820
    goto :goto_0

    .line 5822
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->extensionsAreInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5823
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->memoizedIsInitialized:B

    move v1, v2

    .line 5824
    goto :goto_0

    .line 5826
    :cond_3
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5665
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1

    .prologue
    .line 5931
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5665
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1

    .prologue
    .line 5935
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

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
    .line 5874
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5832
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getSerializedSize()I

    .line 5834
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 5836
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>.ExtensionWriter;"
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 5837
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5839
    :cond_0
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 5840
    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebug_:Z

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5842
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 5843
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getEnableDebugPasswordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5845
    :cond_2
    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 5846
    return-void
.end method
