.class public final Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognizeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizeResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

.field public static final recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private applicationErrorCode_:I

.field private bitField0_:I

.field private deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

.field private gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

.field private partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

.field private recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

.field private response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 15530
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 16211
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    .line 16212
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->initFields()V

    .line 16220
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xc

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 15422
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15625
    iput-byte v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedIsInitialized:B

    .line 15684
    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedSerializedSize:I

    .line 15423
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->initFields()V

    .line 15424
    const/4 v2, 0x0

    .line 15426
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 15427
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_b

    .line 15428
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 15429
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 15434
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 15436
    const/4 v0, 0x1

    goto :goto_0

    .line 15431
    :sswitch_0
    const/4 v0, 0x1

    .line 15432
    goto :goto_0

    .line 15441
    :sswitch_1
    const/4 v4, 0x0

    .line 15442
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 15443
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v4

    .line 15445
    :cond_1
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .line 15446
    if-eqz v4, :cond_2

    .line 15447
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 15448
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .line 15450
    :cond_2
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 15521
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .end local v5           #tag:I
    :catch_0
    move-exception v1

    .line 15522
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15527
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->makeExtensionsImmutable()V

    throw v7

    .line 15454
    .restart local v5       #tag:I
    :sswitch_2
    const/4 v4, 0x0

    .line 15455
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    :try_start_2
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 15456
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v4

    .line 15458
    :cond_3
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 15459
    if-eqz v4, :cond_4

    .line 15460
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    .line 15461
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 15463
    :cond_4
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 15523
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .end local v5           #tag:I
    :catch_1
    move-exception v1

    .line 15524
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

    .line 15467
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    .line 15468
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->applicationErrorCode_:I

    goto/16 :goto_0

    .line 15472
    :sswitch_4
    const/4 v4, 0x0

    .line 15473
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v7, v7, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_5

    .line 15474
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$Transcript;->toBuilder()Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    move-result-object v4

    .line 15476
    :cond_5
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$Transcript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$Transcript;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    .line 15477
    if-eqz v4, :cond_6

    .line 15478
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;

    .line 15479
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    .line 15481
    :cond_6
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    goto/16 :goto_0

    .line 15485
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$Transcript$Builder;
    :sswitch_5
    const/4 v4, 0x0

    .line 15486
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_7

    .line 15487
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->toBuilder()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v4

    .line 15489
    :cond_7
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 15490
    if-eqz v4, :cond_8

    .line 15491
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    .line 15492
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 15494
    :cond_8
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    goto/16 :goto_0

    .line 15498
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 15499
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    move-result-object v6

    .line 15500
    .local v6, value:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;
    if-eqz v6, :cond_0

    .line 15501
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    .line 15502
    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    goto/16 :goto_0

    .line 15507
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;
    :sswitch_7
    const/4 v4, 0x0

    .line 15508
    .local v4, subBuilder:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v7, v7, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_9

    .line 15509
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->toBuilder()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v4

    .line 15511
    :cond_9
    sget-object v7, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    .line 15512
    if-eqz v4, :cond_a

    .line 15513
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    .line 15514
    invoke-virtual {v4}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    .line 15516
    :cond_a
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 15527
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .end local v5           #tag:I
    :cond_b
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->makeExtensionsImmutable()V

    .line 15529
    return-void

    .line 15429
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x42 -> :sswitch_7
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
    .line 15400
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15405
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15625
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedIsInitialized:B

    .line 15684
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedSerializedSize:I

    .line 15407
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15400
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15408
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15625
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedIsInitialized:B

    .line 15684
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedSerializedSize:I

    .line 15408
    return-void
.end method

.method static synthetic access$18702(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15400
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object p1
.end method

.method static synthetic access$18802(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15400
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object p1
.end method

.method static synthetic access$18902(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15400
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->applicationErrorCode_:I

    return p1
.end method

.method static synthetic access$19002(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/protos/speech/service/SpeechService$Transcript;)Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15400
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object p1
.end method

.method static synthetic access$19102(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15400
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    return-object p1
.end method

.method static synthetic access$19202(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;)Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15400
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    return-object p1
.end method

.method static synthetic access$19302(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15400
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object p1
.end method

.method static synthetic access$19402(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15400
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;
    .locals 1

    .prologue
    .line 15412
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 15617
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    .line 15618
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 15619
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->applicationErrorCode_:I

    .line 15620
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Transcript;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    .line 15621
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 15622
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;->PERSONALIZATION_NOT_YET_SPECIFIED:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    .line 15623
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    .line 15624
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1

    .prologue
    .line 15781
    #calls: Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->access$18500()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 15784
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationErrorCode()I
    .locals 1

    .prologue
    .line 15573
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->applicationErrorCode_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15400
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;
    .locals 1

    .prologue
    .line 15416
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    return-object v0
.end method

.method public getDeprecatedPersonalizationEnabled()Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;
    .locals 1

    .prologue
    .line 15603
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    return-object v0
.end method

.method public getGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .locals 1

    .prologue
    .line 15593
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    return-object v0
.end method

.method public getPartialResult()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1

    .prologue
    .line 15613
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    return-object v0
.end method

.method public getPartialTranscript()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15583
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    return-object v0
.end method

.method public getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1

    .prologue
    .line 15553
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    return-object v0
.end method

.method public getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 15563
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 15686
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedSerializedSize:I

    .line 15687
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 15719
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 15689
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 15690
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 15691
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15694
    :cond_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 15695
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15698
    :cond_2
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 15699
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->applicationErrorCode_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 15702
    :cond_3
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 15703
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15706
    :cond_4
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 15707
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15710
    :cond_5
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 15711
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 15714
    :cond_6
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 15715
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15718
    :cond_7
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 15719
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasApplicationErrorCode()Z
    .locals 2

    .prologue
    .line 15570
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

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

.method public hasDeprecatedPersonalizationEnabled()Z
    .locals 2

    .prologue
    .line 15600
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

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

.method public hasGaiaResult()Z
    .locals 2

    .prologue
    .line 15590
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

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

.method public hasPartialResult()Z
    .locals 2

    .prologue
    .line 15610
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

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

.method public hasPartialTranscript()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15580
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

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

.method public hasRecognitionResult()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 15550
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponse()Z
    .locals 2

    .prologue
    .line 15560
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 15627
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedIsInitialized:B

    .line 15628
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 15655
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 15628
    goto :goto_0

    .line 15630
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasRecognitionResult()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15631
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 15632
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedIsInitialized:B

    goto :goto_1

    .line 15636
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasResponse()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 15638
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedIsInitialized:B

    goto :goto_1

    .line 15642
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasPartialTranscript()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 15643
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getPartialTranscript()Lcom/google/protos/speech/service/SpeechService$Transcript;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$Transcript;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 15644
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedIsInitialized:B

    goto :goto_1

    .line 15648
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasGaiaResult()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15649
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 15650
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedIsInitialized:B

    goto :goto_1

    .line 15654
    :cond_5
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->memoizedIsInitialized:B

    move v2, v1

    .line 15655
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15400
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1

    .prologue
    .line 15782
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15400
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;
    .locals 1

    .prologue
    .line 15786
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)Lcom/google/protos/speech/service/SpeechService$RecognizeResponse$Builder;

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
    .line 15725
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 15660
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getSerializedSize()I

    .line 15661
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 15662
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognitionResult_:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15664
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 15665
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15667
    :cond_1
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 15668
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->applicationErrorCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 15670
    :cond_2
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 15671
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialTranscript_:Lcom/google/protos/speech/service/SpeechService$Transcript;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15673
    :cond_3
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 15674
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->gaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15676
    :cond_4
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 15677
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 15679
    :cond_5
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 15680
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->partialResult_:Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15682
    :cond_6
    return-void
.end method
