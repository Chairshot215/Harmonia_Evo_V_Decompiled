.class public final Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesizeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynthesizeResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

.field public static final synthesizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private applicationErrorCode_:I

.field private audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field private audioRate_:I

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

.field private status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 19616
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 20080
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    .line 20081
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->initFields()V

    .line 20089
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xd

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->synthesizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 19546
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19689
    iput-byte v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->memoizedIsInitialized:B

    .line 19724
    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->memoizedSerializedSize:I

    .line 19547
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->initFields()V

    .line 19548
    const/4 v2, 0x0

    .line 19550
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 19551
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 19552
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 19553
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 19558
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 19560
    const/4 v0, 0x1

    goto :goto_0

    .line 19555
    :sswitch_0
    const/4 v0, 0x1

    .line 19556
    goto :goto_0

    .line 19565
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 19566
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    move-result-object v6

    .line 19567
    .local v6, value:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;
    if-eqz v6, :cond_0

    .line 19568
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    .line 19569
    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 19607
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v6           #value:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;
    :catch_0
    move-exception v1

    .line 19608
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19613
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->makeExtensionsImmutable()V

    throw v7

    .line 19574
    .restart local v5       #tag:I
    :sswitch_2
    const/4 v4, 0x0

    .line 19575
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    :try_start_2
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 19576
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v4

    .line 19578
    :cond_1
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19579
    if-eqz v4, :cond_2

    .line 19580
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    .line 19581
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19583
    :cond_2
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 19609
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .end local v5           #tag:I
    :catch_1
    move-exception v1

    .line 19610
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19587
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    .line 19588
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->applicationErrorCode_:I

    goto :goto_0

    .line 19592
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 19593
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$Encoding;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$Encoding;

    move-result-object v6

    .line 19594
    .local v6, value:Lcom/google/protos/speech/service/SpeechService$Encoding;
    if-eqz v6, :cond_0

    .line 19595
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    .line 19596
    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    goto/16 :goto_0

    .line 19601
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protos/speech/service/SpeechService$Encoding;
    :sswitch_5
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    .line 19602
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->audioRate_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 19613
    .end local v5           #tag:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->makeExtensionsImmutable()V

    .line 19615
    return-void

    .line 19553
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 19524
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19529
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 19689
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->memoizedIsInitialized:B

    .line 19724
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->memoizedSerializedSize:I

    .line 19531
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19524
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 19532
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19689
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->memoizedIsInitialized:B

    .line 19724
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->memoizedSerializedSize:I

    .line 19532
    return-void
.end method

.method static synthetic access$24202(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;)Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19524
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    return-object p1
.end method

.method static synthetic access$24302(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19524
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object p1
.end method

.method static synthetic access$24402(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19524
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->applicationErrorCode_:I

    return p1
.end method

.method static synthetic access$24502(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$Encoding;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19524
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    return-object p1
.end method

.method static synthetic access$24602(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19524
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->audioRate_:I

    return p1
.end method

.method static synthetic access$24702(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19524
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;
    .locals 1

    .prologue
    .line 19536
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19683
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->SYNTHESIS_SUCCESS:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    .line 19684
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 19685
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->applicationErrorCode_:I

    .line 19686
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 19687
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->audioRate_:I

    .line 19688
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1

    .prologue
    .line 19813
    #calls: Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->access$24000()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 19816
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationErrorCode()I
    .locals 1

    .prologue
    .line 19659
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->applicationErrorCode_:I

    return v0
.end method

.method public getAudioEncoding()Lcom/google/protos/speech/service/SpeechService$Encoding;
    .locals 1

    .prologue
    .line 19669
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    return-object v0
.end method

.method public getAudioRate()I
    .locals 1

    .prologue
    .line 19679
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->audioRate_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19524
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;
    .locals 1

    .prologue
    .line 19540
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;

    return-object v0
.end method

.method public getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 19649
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 19726
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->memoizedSerializedSize:I

    .line 19727
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 19751
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 19729
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 19730
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 19731
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 19734
    :cond_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 19735
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19738
    :cond_2
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 19739
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->applicationErrorCode_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 19742
    :cond_3
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 19743
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$Encoding;->getNumber()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 19746
    :cond_4
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 19747
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->audioRate_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 19750
    :cond_5
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 19751
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getStatus()Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;
    .locals 1

    .prologue
    .line 19639
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    return-object v0
.end method

.method public hasApplicationErrorCode()Z
    .locals 2

    .prologue
    .line 19656
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

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

.method public hasAudioEncoding()Z
    .locals 2

    .prologue
    .line 19666
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

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

.method public hasAudioRate()Z
    .locals 2

    .prologue
    .line 19676
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

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

.method public hasResponse()Z
    .locals 2

    .prologue
    .line 19646
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 19636
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

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

    .line 19691
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->memoizedIsInitialized:B

    .line 19692
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 19701
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 19692
    goto :goto_0

    .line 19694
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->hasResponse()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19695
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 19696
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 19697
    goto :goto_0

    .line 19700
    :cond_2
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19524
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1

    .prologue
    .line 19814
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19524
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;
    .locals 1

    .prologue
    .line 19818
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;)Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse$Builder;

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
    .line 19757
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

    .line 19706
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->getSerializedSize()I

    .line 19707
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 19708
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->status_:Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 19710
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 19711
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19713
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 19714
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->applicationErrorCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 19716
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 19717
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->audioEncoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Encoding;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 19719
    :cond_3
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 19720
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->audioRate_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 19722
    :cond_4
    return-void
.end method
