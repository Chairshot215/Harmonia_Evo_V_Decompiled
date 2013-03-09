.class public final Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognizeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;",
        "Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognizeRequestOrBuilder;"
    }
.end annotation


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

.field private noiseLevel_:I

.field private personalizationOptIn_:Z

.field private prologueLengthSamples_:I

.field private sendAudioToBackend_:Z

.field private snrDeprecated_:F

.field private snr_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14151
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14407
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 14450
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 14493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14546
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 14589
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputModality;->PHONE_CALL:Lcom/google/protos/speech/service/SpeechService$InputModality;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 14613
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 14637
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_UNDOCKED:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 14661
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14882
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14935
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 14152
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->maybeForceBuilderInitialization()V

    .line 14153
    return-void
.end method

.method static synthetic access$15800()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14146
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1

    .prologue
    .line 14158
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 14156
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    .locals 2

    .prologue
    .line 14211
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    .line 14212
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14213
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14215
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    .locals 8

    .prologue
    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 14219
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 14220
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14221
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14222
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 14223
    or-int/lit8 v2, v2, 0x1

    .line 14225
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16002(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 14226
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 14227
    or-int/lit8 v2, v2, 0x2

    .line 14229
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16102(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 14230
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 14231
    or-int/lit8 v2, v2, 0x4

    .line 14233
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->language_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16202(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14234
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 14235
    or-int/lit8 v2, v2, 0x8

    .line 14237
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16302(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 14238
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 14239
    or-int/lit8 v2, v2, 0x10

    .line 14241
    :cond_4
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16402(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$InputModality;)Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 14242
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 14243
    or-int/lit8 v2, v2, 0x20

    .line 14245
    :cond_5
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16502(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$InputDevice;)Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 14246
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 14247
    or-int/lit8 v2, v2, 0x40

    .line 14249
    :cond_6
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16602(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/service/SpeechService$InputEnvironment;)Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 14250
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 14251
    or-int/lit16 v2, v2, 0x80

    .line 14253
    :cond_7
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->clientApplicationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16702(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14254
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 14255
    or-int/lit16 v2, v2, 0x100

    .line 14257
    :cond_8
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snrDeprecated_:F

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snrDeprecated_:F
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16802(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;F)F

    .line 14258
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 14259
    or-int/lit16 v2, v2, 0x200

    .line 14261
    :cond_9
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->noiseLevel_:I

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->noiseLevel_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16902(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I

    .line 14262
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 14263
    or-int/lit16 v2, v2, 0x400

    .line 14265
    :cond_a
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snr_:I

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->snr_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17002(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I

    .line 14266
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 14267
    or-int/lit16 v2, v2, 0x800

    .line 14269
    :cond_b
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->prologueLengthSamples_:I

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->prologueLengthSamples_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17102(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I

    .line 14270
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 14271
    or-int/lit16 v2, v2, 0x1000

    .line 14273
    :cond_c
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->sendAudioToBackend_:Z

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->sendAudioToBackend_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17202(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Z)Z

    .line 14274
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 14275
    or-int/lit16 v2, v2, 0x2000

    .line 14277
    :cond_d
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->maxRecognitionResults_:I

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->maxRecognitionResults_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17302(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I

    .line 14278
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 14279
    or-int/lit16 v2, v2, 0x4000

    .line 14281
    :cond_e
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->enableProfanityFilter_:Z

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->enableProfanityFilter_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17402(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Z)Z

    .line 14282
    and-int v3, v0, v5

    if-ne v3, v5, :cond_f

    .line 14283
    or-int/2addr v2, v5

    .line 14285
    :cond_f
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->personalizationOptIn_:Z

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->personalizationOptIn_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17502(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Z)Z

    .line 14286
    and-int v3, v0, v6

    if-ne v3, v6, :cond_10

    .line 14287
    or-int/2addr v2, v6

    .line 14289
    :cond_10
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->gaiaAuthenticationToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17602(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14290
    and-int v3, v0, v7

    if-ne v3, v7, :cond_11

    .line 14291
    or-int/2addr v2, v7

    .line 14293
    :cond_11
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17702(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 14294
    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17802(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;I)I

    .line 14295
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2

    .prologue
    .line 14203
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .locals 1

    .prologue
    .line 14551
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    .locals 1

    .prologue
    .line 14207
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getGrammar()Lcom/google/protos/speech/service/SpeechService$Grammar;
    .locals 1

    .prologue
    .line 14412
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    return-object v0
.end method

.method public getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 14455
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public hasAudioParameters()Z
    .locals 2

    .prologue
    .line 14548
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

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

.method public hasGrammar()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14409
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

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
    .line 14452
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

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
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14364
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->hasGrammar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 14384
    :cond_0
    :goto_0
    return v0

    .line 14368
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->getGrammar()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$Grammar;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14372
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->hasInputData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14373
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14378
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->hasAudioParameters()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14379
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->getAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14384
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeAlternateParams(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 14959
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14961
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->newBuilder(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 14967
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14968
    return-object p0

    .line 14964
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    goto :goto_0
.end method

.method public mergeAudioParameters(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 14570
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14572
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->newBuilder(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 14578
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14579
    return-object p0

    .line 14575
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->audioParameters_:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14146
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14146
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14146
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14391
    const/4 v2, 0x0

    .line 14393
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14398
    if-eqz v2, :cond_0

    .line 14399
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14402
    :cond_0
    return-object p0

    .line 14394
    :catch_0
    move-exception v1

    .line 14395
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-object v2, v0

    .line 14396
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14398
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 14399
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 14299
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 14360
    :cond_0
    :goto_0
    return-object p0

    .line 14300
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasGrammar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14301
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getGrammar()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14303
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasInputData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14304
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14306
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14307
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14308
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->language_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16200(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14311
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasAudioParameters()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14312
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getAudioParameters()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeAudioParameters(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14314
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasInputModality()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14315
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getInputModality()Lcom/google/protos/speech/service/SpeechService$InputModality;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputModality(Lcom/google/protos/speech/service/SpeechService$InputModality;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14317
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasInputDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14318
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getInputDevice()Lcom/google/protos/speech/service/SpeechService$InputDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputDevice(Lcom/google/protos/speech/service/SpeechService$InputDevice;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14320
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasInputEnvironment()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14321
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getInputEnvironment()Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputEnvironment(Lcom/google/protos/speech/service/SpeechService$InputEnvironment;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14323
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasClientApplicationId()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14324
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14325
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->clientApplicationId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$16700(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14328
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasSnrDeprecated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 14329
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getSnrDeprecated()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setSnrDeprecated(F)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14331
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasNoiseLevel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 14332
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getNoiseLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setNoiseLevel(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14334
    :cond_b
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasSnr()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 14335
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getSnr()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setSnr(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14337
    :cond_c
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasPrologueLengthSamples()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 14338
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getPrologueLengthSamples()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setPrologueLengthSamples(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14340
    :cond_d
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasSendAudioToBackend()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 14341
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getSendAudioToBackend()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setSendAudioToBackend(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14343
    :cond_e
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasMaxRecognitionResults()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 14344
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getMaxRecognitionResults()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setMaxRecognitionResults(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14346
    :cond_f
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasEnableProfanityFilter()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 14347
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getEnableProfanityFilter()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setEnableProfanityFilter(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14349
    :cond_10
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasPersonalizationOptIn()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 14350
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getPersonalizationOptIn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setPersonalizationOptIn(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 14352
    :cond_11
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasGaiaAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 14353
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14354
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->gaiaAuthenticationToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->access$17600(Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14357
    :cond_12
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->hasAlternateParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14358
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->getAlternateParams()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->mergeAlternateParams(Lcom/google/protos/speech/common/Alternates$AlternateParams;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    goto/16 :goto_0
.end method

.method public mergeGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 14431
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14433
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->newBuilder(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 14439
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14440
    return-object p0

    .line 14436
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    goto :goto_0
.end method

.method public mergeInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 14474
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14476
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 14482
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14483
    return-object p0

    .line 14479
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    goto :goto_0
.end method

.method public setAlternateParams(Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 14953
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->build()Lcom/google/protos/speech/common/Alternates$AlternateParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->alternateParams_:Lcom/google/protos/speech/common/Alternates$AlternateParams;

    .line 14955
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14956
    return-object p0
.end method

.method public setClientApplicationId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14688
    if-nez p1, :cond_0

    .line 14689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14691
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14692
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->clientApplicationId_:Ljava/lang/Object;

    .line 14694
    return-object p0
.end method

.method public setEnableProfanityFilter(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14848
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14849
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->enableProfanityFilter_:Z

    .line 14851
    return-object p0
.end method

.method public setGaiaAuthenticationToken(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 14909
    if-nez p1, :cond_0

    .line 14910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14912
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14913
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->gaiaAuthenticationToken_:Ljava/lang/Object;

    .line 14915
    return-object p0
.end method

.method public setGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 14425
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->build()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->grammar_:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 14427
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14428
    return-object p0
.end method

.method public setInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14458
    if-nez p1, :cond_0

    .line 14459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14461
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 14463
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14464
    return-object p0
.end method

.method public setInputDevice(Lcom/google/protos/speech/service/SpeechService$InputDevice;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14621
    if-nez p1, :cond_0

    .line 14622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14624
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14625
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputDevice_:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    .line 14627
    return-object p0
.end method

.method public setInputEnvironment(Lcom/google/protos/speech/service/SpeechService$InputEnvironment;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14645
    if-nez p1, :cond_0

    .line 14646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14648
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14649
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputEnvironment_:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    .line 14651
    return-object p0
.end method

.method public setInputModality(Lcom/google/protos/speech/service/SpeechService$InputModality;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14597
    if-nez p1, :cond_0

    .line 14598
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14600
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14601
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->inputModality_:Lcom/google/protos/speech/service/SpeechService$InputModality;

    .line 14603
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14520
    if-nez p1, :cond_0

    .line 14521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14523
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14524
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->language_:Ljava/lang/Object;

    .line 14526
    return-object p0
.end method

.method public setMaxRecognitionResults(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14827
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14828
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->maxRecognitionResults_:I

    .line 14830
    return-object p0
.end method

.method public setNoiseLevel(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14743
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14744
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->noiseLevel_:I

    .line 14746
    return-object p0
.end method

.method public setPersonalizationOptIn(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 14869
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14870
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->personalizationOptIn_:Z

    .line 14872
    return-object p0
.end method

.method public setPrologueLengthSamples(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14785
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14786
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->prologueLengthSamples_:I

    .line 14788
    return-object p0
.end method

.method public setSendAudioToBackend(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14806
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14807
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->sendAudioToBackend_:Z

    .line 14809
    return-object p0
.end method

.method public setSnr(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14764
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14765
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snr_:I

    .line 14767
    return-object p0
.end method

.method public setSnrDeprecated(F)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14722
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->bitField0_:I

    .line 14723
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->snrDeprecated_:F

    .line 14725
    return-object p0
.end method
