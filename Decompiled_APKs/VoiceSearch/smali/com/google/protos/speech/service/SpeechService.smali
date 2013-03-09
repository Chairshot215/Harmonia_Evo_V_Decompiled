.class public final Lcom/google/protos/speech/service/SpeechService;
.super Ljava/lang/Object;
.source "SpeechService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$1;,
        Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;,
        Lcom/google/protos/speech/service/SpeechService$SynthesizeAckOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$RecognizeAck;,
        Lcom/google/protos/speech/service/SpeechService$RecognizeAckOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;,
        Lcom/google/protos/speech/service/SpeechService$ClientReportResponseOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;,
        Lcom/google/protos/speech/service/SpeechService$ClientReportRequestOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$MediaResponse;,
        Lcom/google/protos/speech/service/SpeechService$MediaResponseOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$MediaData;,
        Lcom/google/protos/speech/service/SpeechService$MediaDataOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;,
        Lcom/google/protos/speech/service/SpeechService$ApplicationResponseOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;,
        Lcom/google/protos/speech/service/SpeechService$ApplicationRequestOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$CancelResponse;,
        Lcom/google/protos/speech/service/SpeechService$CancelResponseOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$CancelRequest;,
        Lcom/google/protos/speech/service/SpeechService$CancelRequestOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;,
        Lcom/google/protos/speech/service/SpeechService$SynthesizeResponseOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;,
        Lcom/google/protos/speech/service/SpeechService$SynthesizeRequestOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$SynthesisParams;,
        Lcom/google/protos/speech/service/SpeechService$SynthesisParamsOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;,
        Lcom/google/protos/speech/service/SpeechService$SynthesisVoiceOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$SettingsResponse;,
        Lcom/google/protos/speech/service/SpeechService$SettingsResponseOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$SettingsRequest;,
        Lcom/google/protos/speech/service/SpeechService$SettingsRequestOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$GaiaResult;,
        Lcom/google/protos/speech/service/SpeechService$GaiaResultOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;,
        Lcom/google/protos/speech/service/SpeechService$RecognizeResponseOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$Transcript;,
        Lcom/google/protos/speech/service/SpeechService$TranscriptOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;,
        Lcom/google/protos/speech/service/SpeechService$RecognizeRequestOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;,
        Lcom/google/protos/speech/service/SpeechService$DestroySessionResponseOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;,
        Lcom/google/protos/speech/service/SpeechService$DestroySessionRequestOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;,
        Lcom/google/protos/speech/service/SpeechService$CreateSessionResponseOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;,
        Lcom/google/protos/speech/service/SpeechService$CreateSessionRequestOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;,
        Lcom/google/protos/speech/service/SpeechService$RecognitionLanguageOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$LanguageTag;,
        Lcom/google/protos/speech/service/SpeechService$LanguageTagOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;,
        Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponseOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;,
        Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequestOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$AudioParameters;,
        Lcom/google/protos/speech/service/SpeechService$AudioParametersOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$ResponseMessage;,
        Lcom/google/protos/speech/service/SpeechService$ResponseMessageOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$DebugEvent;,
        Lcom/google/protos/speech/service/SpeechService$DebugEventOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$RequestMessage;,
        Lcom/google/protos/speech/service/SpeechService$RequestMessageOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$MessageHeader;,
        Lcom/google/protos/speech/service/SpeechService$MessageHeaderOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$RecognitionResult;,
        Lcom/google/protos/speech/service/SpeechService$RecognitionResultOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;,
        Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesisOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;,
        Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretationOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;,
        Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$Grammar;,
        Lcom/google/protos/speech/service/SpeechService$GrammarOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$ApplicationData;,
        Lcom/google/protos/speech/service/SpeechService$ApplicationDataOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$SocketAddress;,
        Lcom/google/protos/speech/service/SpeechService$SocketAddressOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;,
        Lcom/google/protos/speech/service/SpeechService$ProtocolFeaturesOrBuilder;,
        Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;,
        Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;,
        Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;,
        Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;,
        Lcom/google/protos/speech/service/SpeechService$InputEnvironment;,
        Lcom/google/protos/speech/service/SpeechService$InputDevice;,
        Lcom/google/protos/speech/service/SpeechService$InputModality;,
        Lcom/google/protos/speech/service/SpeechService$Encoding;,
        Lcom/google/protos/speech/service/SpeechService$Status;,
        Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;,
        Lcom/google/protos/speech/service/SpeechService$Protocol;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 23303
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .parameter "registry"

    .prologue
    .line 10
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesRequest;->capabilitiesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 11
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->capabilitiesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 12
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->createSessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 13
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->createSessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 14
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->destroySessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 15
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionResponse;->destroySessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 16
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->recognizeRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 17
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 18
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->settingsRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 19
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->settingsResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 20
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeRequest;->synthesizeRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 21
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeResponse;->synthesizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 22
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->cancelRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 23
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelResponse;->cancelResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 24
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->applicationRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 25
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 26
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->mediaData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 27
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaData;->mediaDataResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 28
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->mediaResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 29
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReportRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 30
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ClientReportResponse;->clientReportResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 31
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeAck;->recognizeAck:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 32
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SynthesizeAck;->synthesizeAck:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 33
    return-void
.end method
