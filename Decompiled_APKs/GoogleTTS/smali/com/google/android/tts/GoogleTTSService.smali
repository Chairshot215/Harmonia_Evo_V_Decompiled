.class public Lcom/google/android/tts/GoogleTTSService;
.super Landroid/speech/tts/TextToSpeechService;
.source "GoogleTTSService.java"


# instance fields
.field private mLocal:Lcom/google/android/tts/Synthesizer;

.field private mNetwork:Lcom/google/android/tts/Synthesizer;

.field private mSynthesizer:Lcom/google/android/tts/DelegatingSynthesizer;

.field private mTtsConfig:Lcom/google/android/tts/TtsConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 9

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/android/tts/GoogleTtsApplication;->get(Landroid/content/Context;)Lcom/google/android/tts/GoogleTtsApplication;

    move-result-object v0

    .line 36
    .local v0, app:Lcom/google/android/tts/GoogleTtsApplication;
    invoke-virtual {v0}, Lcom/google/android/tts/GoogleTtsApplication;->getTtsConfig()Lcom/google/android/tts/TtsConfig;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/tts/GoogleTTSService;->mTtsConfig:Lcom/google/android/tts/TtsConfig;

    .line 38
    invoke-virtual {v0}, Lcom/google/android/tts/GoogleTtsApplication;->getVoiceDataManager()Lcom/google/android/tts/voicepack/VoiceDataManager;

    move-result-object v4

    .line 39
    .local v4, voiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;
    invoke-virtual {v0}, Lcom/google/android/tts/GoogleTtsApplication;->getMetadataManager()Lcom/google/android/tts/voicepack/MetadataManager;

    move-result-object v2

    .line 41
    .local v2, metadataManager:Lcom/google/android/tts/voicepack/MetadataManager;
    new-instance v3, Lcom/google/android/tts/local/PicoSynthesizer;

    invoke-virtual {v0}, Lcom/google/android/tts/GoogleTtsApplication;->getLangCountryHelper()Lcom/google/android/tts/local/LangCountryHelper;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/tts/voicepack/VoiceDataManager;->getPicoDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/google/android/tts/local/PicoSynthesizer;-><init>(Lcom/google/android/tts/local/LangCountryHelper;Ljava/lang/String;)V

    .line 44
    .local v3, pico:Lcom/google/android/tts/Synthesizer;
    const/4 v1, 0x0

    .line 45
    .local v1, flint:Lcom/google/android/tts/Synthesizer;
    iget-object v5, p0, Lcom/google/android/tts/GoogleTTSService;->mTtsConfig:Lcom/google/android/tts/TtsConfig;

    invoke-interface {v5}, Lcom/google/android/tts/TtsConfig;->isFlintEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    new-instance v1, Lcom/google/android/tts/local/FlintSynthesizer;

    .end local v1           #flint:Lcom/google/android/tts/Synthesizer;
    iget-object v5, p0, Lcom/google/android/tts/GoogleTTSService;->mTtsConfig:Lcom/google/android/tts/TtsConfig;

    invoke-direct {v1, p0, v5}, Lcom/google/android/tts/local/FlintSynthesizer;-><init>(Landroid/content/Context;Lcom/google/android/tts/TtsConfig;)V

    .line 50
    .restart local v1       #flint:Lcom/google/android/tts/Synthesizer;
    :goto_0
    new-instance v5, Lcom/google/android/tts/network/NetworkSynthesizer;

    new-instance v6, Lcom/google/android/tts/network/NetworkLangCountryHelper;

    const v7, 0x7f040001

    const v8, 0x7f040002

    invoke-direct {v6, p0, v7, v8}, Lcom/google/android/tts/network/NetworkLangCountryHelper;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0}, Lcom/google/android/tts/GoogleTtsApplication;->getUrlRewriter()Lcom/google/android/common/base/Function;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/google/android/tts/network/NetworkSynthesizer;-><init>(Landroid/content/Context;Lcom/google/android/tts/network/NetworkLangCountryHelper;Lcom/google/android/common/base/Function;)V

    iput-object v5, p0, Lcom/google/android/tts/GoogleTTSService;->mNetwork:Lcom/google/android/tts/Synthesizer;

    .line 55
    new-instance v5, Lcom/google/android/tts/local/LocalSynthesizer;

    invoke-direct {v5, v3, v1}, Lcom/google/android/tts/local/LocalSynthesizer;-><init>(Lcom/google/android/tts/Synthesizer;Lcom/google/android/tts/Synthesizer;)V

    iput-object v5, p0, Lcom/google/android/tts/GoogleTTSService;->mLocal:Lcom/google/android/tts/Synthesizer;

    .line 56
    new-instance v5, Lcom/google/android/tts/DelegatingSynthesizer;

    iget-object v6, p0, Lcom/google/android/tts/GoogleTTSService;->mLocal:Lcom/google/android/tts/Synthesizer;

    iget-object v7, p0, Lcom/google/android/tts/GoogleTTSService;->mNetwork:Lcom/google/android/tts/Synthesizer;

    new-instance v8, Lcom/google/android/tts/GoogleTTSService$1;

    invoke-direct {v8, p0, v2, v0}, Lcom/google/android/tts/GoogleTTSService$1;-><init>(Lcom/google/android/tts/GoogleTTSService;Lcom/google/android/tts/voicepack/MetadataManager;Lcom/google/android/tts/GoogleTtsApplication;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/tts/DelegatingSynthesizer;-><init>(Lcom/google/android/tts/Synthesizer;Lcom/google/android/tts/Synthesizer;Lcom/google/android/tts/DownloadEnabler;)V

    iput-object v5, p0, Lcom/google/android/tts/GoogleTTSService;->mSynthesizer:Lcom/google/android/tts/DelegatingSynthesizer;

    .line 69
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService;->onCreate()V

    .line 71
    iget-object v5, p0, Lcom/google/android/tts/GoogleTTSService;->mSynthesizer:Lcom/google/android/tts/DelegatingSynthesizer;

    invoke-virtual {v5}, Lcom/google/android/tts/DelegatingSynthesizer;->onInit()V

    .line 72
    return-void

    .line 48
    :cond_0
    new-instance v1, Lcom/google/android/tts/NoopSynthesizer;

    .end local v1           #flint:Lcom/google/android/tts/Synthesizer;
    invoke-direct {v1}, Lcom/google/android/tts/NoopSynthesizer;-><init>()V

    .restart local v1       #flint:Lcom/google/android/tts/Synthesizer;
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/tts/GoogleTTSService;->mSynthesizer:Lcom/google/android/tts/DelegatingSynthesizer;

    invoke-virtual {v0}, Lcom/google/android/tts/DelegatingSynthesizer;->onClose()V

    .line 77
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService;->onDestroy()V

    .line 78
    return-void
.end method

.method protected onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .parameter "lang"
    .parameter "country"
    .parameter "variant"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 118
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 120
    .local v1, features:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/tts/GoogleTtsRequest;->safeToLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, langLower:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/android/tts/GoogleTtsRequest;->safeToLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, countryLower:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/tts/GoogleTTSService;->mNetwork:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v5, v2, v0}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 124
    .local v4, networkAvailability:I
    iget-object v5, p0, Lcom/google/android/tts/GoogleTTSService;->mLocal:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v5, v2, v0}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 126
    .local v3, localAvailability:I
    if-eqz v4, :cond_0

    if-ne v4, v6, :cond_1

    .line 128
    :cond_0
    const-string v5, "networkTts"

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    if-eqz v3, :cond_2

    if-ne v3, v6, :cond_3

    .line 135
    :cond_2
    const-string v5, "embeddedTts"

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_3
    return-object v1
.end method

.method protected onGetLanguage()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/tts/GoogleTTSService;->mLocal:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->getLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "lang"
    .parameter "country"
    .parameter "unusedVariant"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/tts/GoogleTTSService;->mSynthesizer:Lcom/google/android/tts/DelegatingSynthesizer;

    invoke-static {p1}, Lcom/google/android/tts/GoogleTtsRequest;->safeToLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/tts/GoogleTtsRequest;->safeToLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/tts/DelegatingSynthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "lang"
    .parameter "country"
    .parameter "unusedVariant"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/tts/GoogleTTSService;->mSynthesizer:Lcom/google/android/tts/DelegatingSynthesizer;

    invoke-static {p1}, Lcom/google/android/tts/GoogleTtsRequest;->safeToLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/tts/GoogleTtsRequest;->safeToLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/tts/DelegatingSynthesizer;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/tts/GoogleTTSService;->mSynthesizer:Lcom/google/android/tts/DelegatingSynthesizer;

    invoke-virtual {v0}, Lcom/google/android/tts/DelegatingSynthesizer;->onStop()V

    .line 109
    return-void
.end method

.method protected onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V
    .locals 2
    .parameter "request"
    .parameter "callback"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/tts/GoogleTTSService;->mSynthesizer:Lcom/google/android/tts/DelegatingSynthesizer;

    iget-object v1, p0, Lcom/google/android/tts/GoogleTTSService;->mTtsConfig:Lcom/google/android/tts/TtsConfig;

    invoke-static {p1, v1}, Lcom/google/android/tts/GoogleTtsRequest;->wrap(Landroid/speech/tts/SynthesisRequest;Lcom/google/android/tts/TtsConfig;)Lcom/google/android/tts/GoogleTtsRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/tts/DelegatingSynthesizer;->onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V

    .line 114
    return-void
.end method
