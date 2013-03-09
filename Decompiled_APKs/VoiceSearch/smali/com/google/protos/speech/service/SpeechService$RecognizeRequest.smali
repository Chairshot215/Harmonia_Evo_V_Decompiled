.class public final Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognizeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizeRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

.field public static final recognizeRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

.field private audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

.field private bitField0_:I

.field private clientApplicationId_:Ljava/lang/Object;

.field private enableProfanityFilter_:Z

.field private gaiaAuthenticationToken_:Ljava/lang/Object;

.field private grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

.field private inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

.field private inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

.field private inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

.field private inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

.field private language_:Ljava/lang/Object;

.field private maxRecognitionResults_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private noiseLevel_:I

.field private personalizationOptIn_:Z

.field private prologueLengthSamples_:I

.field private sendAudioToBackend_:Z

.field private snrDeprecated_:F

.field private snr_:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 13625
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 14981
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    .line 14982
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->initFields()V

    .line 14990
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xc

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->recognizeRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/high16 v9, 0x2

    .line 13462
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13910
    iput-byte v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedIsInitialized:B

    .line 13998
    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedSerializedSize:I

    .line 13463
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->initFields()V

    .line 13464
    const/4 v2, 0x0

    .line 13466
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 13467
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_9

    .line 13468
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 13469
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 13474
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 13476
    const/4 v0, 0x1

    goto :goto_0

    .line 13471
    :sswitch_0
    const/4 v0, 0x1

    .line 13472
    goto :goto_0

    .line 13481
    :sswitch_1
    const/4 v4, 0x0

    .line 13482
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 13483
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$Grammar;->toBuilder()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v4

    .line 13485
    :cond_1
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$Grammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$Grammar;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 13486
    if-eqz v4, :cond_2

    .line 13487
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    .line 13488
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 13490
    :cond_2
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 13616
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;
    .end local v5           #tag:I
    :catch_0
    move-exception v1

    .line 13617
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13622
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->makeExtensionsImmutable()V

    throw v7

    .line 13494
    .restart local v5       #tag:I
    :sswitch_2
    const/4 v4, 0x0

    .line 13495
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    :try_start_2
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 13496
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v4

    .line 13498
    :cond_3
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 13499
    if-eqz v4, :cond_4

    .line 13500
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    .line 13501
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 13503
    :cond_4
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 13618
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .end local v5           #tag:I
    :catch_1
    move-exception v1

    .line 13619
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

    .line 13507
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13508
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->language_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 13512
    :sswitch_4
    const/4 v4, 0x0

    .line 13513
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v7, v7, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_5

    .line 13514
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->toBuilder()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v4

    .line 13516
    :cond_5
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 13517
    if-eqz v4, :cond_6

    .line 13518
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 13519
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 13521
    :cond_6
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    goto/16 :goto_0

    .line 13525
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 13526
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$InputModality;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$InputModality;

    move-result-object v6

    .line 13527
    .local v6, value:Lcom/google/protos/speech/service/SpeechService$InputModality;
    if-eqz v6, :cond_0

    .line 13528
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13529
    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    goto/16 :goto_0

    .line 13534
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protos/speech/service/SpeechService$InputModality;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 13535
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$InputDevice;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$InputDevice;

    move-result-object v6

    .line 13536
    .local v6, value:Lcom/google/protos/speech/service/SpeechService$InputDevice;
    if-eqz v6, :cond_0

    .line 13537
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13538
    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    goto/16 :goto_0

    .line 13543
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protos/speech/service/SpeechService$InputDevice;
    :sswitch_7
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13544
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->clientApplicationId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 13548
    :sswitch_8
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13549
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snrDeprecated_:F

    goto/16 :goto_0

    .line 13553
    :sswitch_9
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13554
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->noiseLevel_:I

    goto/16 :goto_0

    .line 13558
    :sswitch_a
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13559
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snr_:I

    goto/16 :goto_0

    .line 13563
    :sswitch_b
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit16 v7, v7, 0x800

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13564
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->prologueLengthSamples_:I

    goto/16 :goto_0

    .line 13568
    :sswitch_c
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13569
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->sendAudioToBackend_:Z

    goto/16 :goto_0

    .line 13573
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 13574
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    move-result-object v6

    .line 13575
    .local v6, value:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;
    if-eqz v6, :cond_0

    .line 13576
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13577
    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    goto/16 :goto_0

    .line 13582
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;
    :sswitch_e
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit16 v7, v7, 0x2000

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13583
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->maxRecognitionResults_:I

    goto/16 :goto_0

    .line 13587
    :sswitch_f
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/lit16 v7, v7, 0x4000

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13588
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->enableProfanityFilter_:Z

    goto/16 :goto_0

    .line 13592
    :sswitch_10
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    const v8, 0x8000

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13593
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->personalizationOptIn_:Z

    goto/16 :goto_0

    .line 13597
    :sswitch_11
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    const/high16 v8, 0x1

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    .line 13598
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->gaiaAuthenticationToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 13602
    :sswitch_12
    const/4 v4, 0x0

    .line 13603
    .local v4, subBuilder:Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_7

    .line 13604
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    invoke-virtual {v7}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->toBuilder()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v4

    .line 13606
    :cond_7
    sget-object v7, Lcom/google/protos/speech/common/Alternates$AlternateParams;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/common/Alternates$AlternateParams;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 13607
    if-eqz v4, :cond_8

    .line 13608
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    .line 13609
    invoke-virtual {v4}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 13611
    :cond_8
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    or-int/2addr v7, v9

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 13622
    .end local v4           #subBuilder:Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;
    .end local v5           #tag:I
    :cond_9
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->makeExtensionsImmutable()V

    .line 13624
    return-void

    .line 13469
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x45 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
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
    .line 13440
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13445
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13910
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedIsInitialized:B

    .line 13998
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedSerializedSize:I

    .line 13447
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13448
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13910
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedIsInitialized:B

    .line 13998
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedSerializedSize:I

    .line 13448
    return-void
.end method

.method static synthetic access$16002(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$Grammar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    return-object p1
.end method

.method static synthetic access$16102(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object p1
.end method

.method static synthetic access$16200(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13440
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->language_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$16202(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16302(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    return-object p1
.end method

.method static synthetic access$16402(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$InputModality;)Lcom/google/protos/speech/service/SpeechService$InputModality;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    return-object p1
.end method

.method static synthetic access$16502(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$InputDevice;)Lcom/google/protos/speech/service/SpeechService$InputDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    return-object p1
.end method

.method static synthetic access$16602(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$InputEnvironment;)Lcom/google/protos/speech/service/SpeechService$InputEnvironment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    return-object p1
.end method

.method static synthetic access$16700(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13440
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->clientApplicationId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$16702(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->clientApplicationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16802(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snrDeprecated_:F

    return p1
.end method

.method static synthetic access$16902(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->noiseLevel_:I

    return p1
.end method

.method static synthetic access$17002(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snr_:I

    return p1
.end method

.method static synthetic access$17102(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->prologueLengthSamples_:I

    return p1
.end method

.method static synthetic access$17202(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->sendAudioToBackend_:Z

    return p1
.end method

.method static synthetic access$17302(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->maxRecognitionResults_:I

    return p1
.end method

.method static synthetic access$17402(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->enableProfanityFilter_:Z

    return p1
.end method

.method static synthetic access$17502(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->personalizationOptIn_:Z

    return p1
.end method

.method static synthetic access$17600(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13440
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->gaiaAuthenticationToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$17602(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->gaiaAuthenticationToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17702(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    return-object p1
.end method

.method static synthetic access$17802(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13440
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    .locals 1

    .prologue
    .line 13452
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13891
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 13892
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 13893
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->language_:Ljava/lang/Object;

    .line 13894
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 13895
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->PHONE_CALL:Lcom/google/protos/speech/service/SpeechService$InputModality;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 13896
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 13897
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_UNDOCKED:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 13898
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->clientApplicationId_:Ljava/lang/Object;

    .line 13899
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snrDeprecated_:F

    .line 13900
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->noiseLevel_:I

    .line 13901
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snr_:I

    .line 13902
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->prologueLengthSamples_:I

    .line 13903
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->sendAudioToBackend_:Z

    .line 13904
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->maxRecognitionResults_:I

    .line 13905
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->enableProfanityFilter_:Z

    .line 13906
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->personalizationOptIn_:Z

    .line 13907
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 13908
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 13909
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14139
    #calls: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->access$15800()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 14142
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlternateParams()Lcom/google/protos/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    .line 13887
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    return-object v0
.end method

.method public getAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .locals 1

    .prologue
    .line 13701
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    return-object v0
.end method

.method public getClientApplicationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 13756
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->clientApplicationId_:Ljava/lang/Object;

    .line 13757
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13758
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13760
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->clientApplicationId_:Ljava/lang/Object;

    .line 13763
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13440
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    .locals 1

    .prologue
    .line 13456
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    return-object v0
.end method

.method public getEnableProfanityFilter()Z
    .locals 1

    .prologue
    .line 13834
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->enableProfanityFilter_:Z

    return v0
.end method

.method public getGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 13869
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 13870
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13871
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13873
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 13876
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

.method public getGrammar()Lcom/google/protos/speech/service/SpeechService$Grammar;
    .locals 1

    .prologue
    .line 13648
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    return-object v0
.end method

.method public getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 13658
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public getInputDevice()Lcom/google/protos/speech/service/SpeechService$InputDevice;
    .locals 1

    .prologue
    .line 13721
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    return-object v0
.end method

.method public getInputEnvironment()Lcom/google/protos/speech/service/SpeechService$InputEnvironment;
    .locals 1

    .prologue
    .line 13731
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    return-object v0
.end method

.method public getInputModality()Lcom/google/protos/speech/service/SpeechService$InputModality;
    .locals 1

    .prologue
    .line 13711
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    return-object v0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 13683
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->language_:Ljava/lang/Object;

    .line 13684
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13685
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13687
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->language_:Ljava/lang/Object;

    .line 13690
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

.method public getMaxRecognitionResults()I
    .locals 1

    .prologue
    .line 13824
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->maxRecognitionResults_:I

    return v0
.end method

.method public getNoiseLevel()I
    .locals 1

    .prologue
    .line 13784
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->noiseLevel_:I

    return v0
.end method

.method public getPersonalizationOptIn()Z
    .locals 1

    .prologue
    .line 13844
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->personalizationOptIn_:Z

    return v0
.end method

.method public getPrologueLengthSamples()I
    .locals 1

    .prologue
    .line 13804
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->prologueLengthSamples_:I

    return v0
.end method

.method public getSendAudioToBackend()Z
    .locals 1

    .prologue
    .line 13814
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->sendAudioToBackend_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14000
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedSerializedSize:I

    .line 14001
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 14077
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 14003
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 14004
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 14005
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14008
    :cond_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 14009
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14012
    :cond_2
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 14013
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14016
    :cond_3
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 14017
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14020
    :cond_4
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_5

    .line 14021
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$InputModality;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14024
    :cond_5
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 14025
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$InputDevice;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14028
    :cond_6
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 14029
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getClientApplicationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14032
    :cond_7
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 14033
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snrDeprecated_:F

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 14036
    :cond_8
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 14037
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->noiseLevel_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14040
    :cond_9
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 14041
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snr_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14044
    :cond_a
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 14045
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->prologueLengthSamples_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14048
    :cond_b
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    .line 14049
    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->sendAudioToBackend_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 14052
    :cond_c
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_d

    .line 14053
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14056
    :cond_d
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_e

    .line 14057
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->maxRecognitionResults_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14060
    :cond_e
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_f

    .line 14061
    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->enableProfanityFilter_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 14064
    :cond_f
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_10

    .line 14065
    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->personalizationOptIn_:Z

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 14068
    :cond_10
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 14069
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14072
    :cond_11
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_12

    .line 14073
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14076
    :cond_12
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 14077
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSnr()I
    .locals 1

    .prologue
    .line 13794
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snr_:I

    return v0
.end method

.method public getSnrDeprecated()F
    .locals 1

    .prologue
    .line 13774
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snrDeprecated_:F

    return v0
.end method

.method public hasAlternateParams()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 13884
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAudioParameters()Z
    .locals 2

    .prologue
    .line 13698
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

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

.method public hasClientApplicationId()Z
    .locals 2

    .prologue
    .line 13738
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnableProfanityFilter()Z
    .locals 2

    .prologue
    .line 13831
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGaiaAuthenticationToken()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 13851
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGrammar()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 13645
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputData()Z
    .locals 2

    .prologue
    .line 13655
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

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

.method public hasInputDevice()Z
    .locals 2

    .prologue
    .line 13718
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

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

.method public hasInputEnvironment()Z
    .locals 2

    .prologue
    .line 13728
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputModality()Z
    .locals 2

    .prologue
    .line 13708
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

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

.method public hasLanguage()Z
    .locals 2

    .prologue
    .line 13665
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

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

.method public hasMaxRecognitionResults()Z
    .locals 2

    .prologue
    .line 13821
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoiseLevel()Z
    .locals 2

    .prologue
    .line 13781
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPersonalizationOptIn()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 13841
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrologueLengthSamples()Z
    .locals 2

    .prologue
    .line 13801
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSendAudioToBackend()Z
    .locals 2

    .prologue
    .line 13811
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSnr()Z
    .locals 2

    .prologue
    .line 13791
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSnrDeprecated()Z
    .locals 2

    .prologue
    .line 13771
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

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

    .line 13912
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedIsInitialized:B

    .line 13913
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 13936
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 13913
    goto :goto_0

    .line 13915
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasGrammar()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13916
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedIsInitialized:B

    goto :goto_1

    .line 13919
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getGrammar()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$Grammar;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 13920
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedIsInitialized:B

    goto :goto_1

    .line 13923
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasInputData()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13924
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 13925
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedIsInitialized:B

    goto :goto_1

    .line 13929
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasAudioParameters()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13930
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 13931
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedIsInitialized:B

    goto :goto_1

    .line 13935
    :cond_5
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->memoizedIsInitialized:B

    move v2, v1

    .line 13936
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13440
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14140
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13440
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14144
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

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
    .line 14083
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
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 13941
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getSerializedSize()I

    .line 13942
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 13943
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13945
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 13946
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13948
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 13949
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13951
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 13952
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13954
    :cond_3
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_4

    .line 13955
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$InputModality;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13957
    :cond_4
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 13958
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$InputDevice;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13960
    :cond_5
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6

    .line 13961
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getClientApplicationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13963
    :cond_6
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_7

    .line 13964
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snrDeprecated_:F

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 13966
    :cond_7
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8

    .line 13967
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->noiseLevel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13969
    :cond_8
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_9

    .line 13970
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snr_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13972
    :cond_9
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    .line 13973
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->prologueLengthSamples_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13975
    :cond_a
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_b

    .line 13976
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->sendAudioToBackend_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13978
    :cond_b
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_c

    .line 13979
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13981
    :cond_c
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 13982
    const/16 v0, 0xe

    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->maxRecognitionResults_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13984
    :cond_d
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    .line 13985
    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->enableProfanityFilter_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13987
    :cond_e
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_f

    .line 13988
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->personalizationOptIn_:Z

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13990
    :cond_f
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 13991
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13993
    :cond_10
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 13994
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13996
    :cond_11
    return-void
.end method
