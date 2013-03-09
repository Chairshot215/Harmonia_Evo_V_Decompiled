.class public final Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ClientReportResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientReportResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final clientReportResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 22601
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 22780
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    .line 22781
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->initFields()V

    .line 22789
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x11

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->clientReportResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 22573
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22618
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->memoizedIsInitialized:B

    .line 22632
    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->memoizedSerializedSize:I

    .line 22574
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->initFields()V

    .line 22576
    const/4 v0, 0x0

    .line 22577
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 22578
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 22579
    .local v2, tag:I
    packed-switch v2, :pswitch_data_0

    .line 22584
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 22586
    const/4 v0, 0x1

    goto :goto_0

    .line 22581
    :pswitch_0
    const/4 v0, 0x1

    .line 22582
    goto :goto_0

    .line 22598
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->makeExtensionsImmutable()V

    .line 22600
    return-void

    .line 22592
    :catch_0
    move-exception v1

    .line 22593
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22598
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->makeExtensionsImmutable()V

    throw v3

    .line 22594
    :catch_1
    move-exception v1

    .line 22595
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22579
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
    .line 22551
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22556
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22618
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->memoizedIsInitialized:B

    .line 22632
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->memoizedSerializedSize:I

    .line 22558
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22551
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22559
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22618
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->memoizedIsInitialized:B

    .line 22632
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->memoizedSerializedSize:I

    .line 22559
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;
    .locals 1

    .prologue
    .line 22563
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 22617
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
    .locals 1

    .prologue
    .line 22701
    #calls: Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->access$28200()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;)Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 22704
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;)Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22551
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;
    .locals 1

    .prologue
    .line 22567
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 22634
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->memoizedSerializedSize:I

    .line 22635
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 22639
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 22637
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 22638
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 22639
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 22620
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->memoizedIsInitialized:B

    .line 22621
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 22624
    :goto_0
    return v1

    .line 22621
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 22623
    :cond_1
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22551
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
    .locals 1

    .prologue
    .line 22702
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22551
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;
    .locals 1

    .prologue
    .line 22706
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;)Lcom/google/protos/speech/service/SpeechService$ClientReportResponse$Builder;

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
    .line 22645
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 0
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22629
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->getSerializedSize()I

    .line 22630
    return-void
.end method
