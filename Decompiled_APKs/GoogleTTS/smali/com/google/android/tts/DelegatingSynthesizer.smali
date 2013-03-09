.class public Lcom/google/android/tts/DelegatingSynthesizer;
.super Ljava/lang/Object;
.source "DelegatingSynthesizer.java"

# interfaces
.implements Lcom/google/android/tts/Synthesizer;


# instance fields
.field private final mDownloader:Lcom/google/android/tts/DownloadEnabler;

.field private final mHybridDelegate:Lcom/google/android/tts/Synthesizer;

.field private final mLocalDelegate:Lcom/google/android/tts/Synthesizer;

.field private final mNetworkDelegate:Lcom/google/android/tts/Synthesizer;


# direct methods
.method constructor <init>(Lcom/google/android/tts/Synthesizer;Lcom/google/android/tts/Synthesizer;Lcom/google/android/tts/DownloadEnabler;)V
    .locals 3
    .parameter "localSynth"
    .parameter "networkSynth"
    .parameter "downloader"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mNetworkDelegate:Lcom/google/android/tts/Synthesizer;

    .line 28
    iput-object p1, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mLocalDelegate:Lcom/google/android/tts/Synthesizer;

    .line 29
    new-instance v0, Lcom/google/android/tts/FallbackSynthesizer;

    iget-object v1, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mNetworkDelegate:Lcom/google/android/tts/Synthesizer;

    iget-object v2, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mLocalDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-direct {v0, v1, v2}, Lcom/google/android/tts/FallbackSynthesizer;-><init>(Lcom/google/android/tts/Synthesizer;Lcom/google/android/tts/Synthesizer;)V

    iput-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mHybridDelegate:Lcom/google/android/tts/Synthesizer;

    .line 31
    iput-object p3, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mDownloader:Lcom/google/android/tts/DownloadEnabler;

    .line 32
    return-void
.end method

.method private handleEmptySynthesis(Landroid/speech/tts/SynthesisCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 182
    sget-object v0, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->WB:Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;

    invoke-virtual {v0}, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->getRate()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    .line 183
    invoke-interface {p1}, Landroid/speech/tts/SynthesisCallback;->done()I

    .line 184
    return-void
.end method


# virtual methods
.method getHybridDelegate()Lcom/google/android/tts/Synthesizer;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mHybridDelegate:Lcom/google/android/tts/Synthesizer;

    return-object v0
.end method

.method public getLanguage()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mLocalDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->getLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "language"
    .parameter "country"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mLocalDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v1, p1, p2}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, availableLocally:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 168
    .end local v0           #availableLocally:I
    :cond_0
    :goto_0
    return v0

    .restart local v0       #availableLocally:I
    :cond_1
    iget-object v1, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mNetworkDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v1, p1, p2}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mHybridDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onClose()V

    .line 37
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mNetworkDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onClose()V

    .line 38
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mLocalDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onClose()V

    .line 39
    return-void
.end method

.method public onInit()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mNetworkDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onInit()V

    .line 44
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mLocalDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onInit()V

    .line 45
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mHybridDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onInit()V

    .line 46
    return-void
.end method

.method public onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "language"
    .parameter "country"

    .prologue
    const/4 v3, 0x1

    .line 121
    iget-object v2, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mLocalDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v2, p1, p2}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, availableLocally:I
    iget-object v2, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mNetworkDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v2, p1, p2}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, availableOnNetwork:I
    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_2

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mLocalDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v2, p1, p2}, Lcom/google/android/tts/Synthesizer;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 154
    .end local v1           #availableOnNetwork:I
    :cond_1
    :goto_0
    return v1

    .line 135
    .restart local v1       #availableOnNetwork:I
    :cond_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 137
    iget-object v2, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mDownloader:Lcom/google/android/tts/DownloadEnabler;

    invoke-interface {v2, p1, p2}, Lcom/google/android/tts/DownloadEnabler;->enqueueDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_3
    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_1

    .line 154
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mNetworkDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onStop()V

    .line 51
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mLocalDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onStop()V

    .line 52
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mHybridDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->onStop()V

    .line 53
    return-void
.end method

.method public onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V
    .locals 3
    .parameter "request"
    .parameter "callback"

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/common/base/CharMatcher;->WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/tts/DelegatingSynthesizer;->handleEmptySynthesis(Landroid/speech/tts/SynthesisCallback;)V

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/tts/DelegatingSynthesizer;->select(Lcom/google/android/tts/GoogleTtsRequest;)Lcom/google/android/tts/Synthesizer;

    move-result-object v0

    .line 109
    .local v0, choice:Lcom/google/android/tts/Synthesizer;
    if-eqz v0, :cond_2

    .line 110
    invoke-interface {v0, p1, p2}, Lcom/google/android/tts/Synthesizer;->onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->error()V

    goto :goto_0
.end method

.method select(Lcom/google/android/tts/GoogleTtsRequest;)Lcom/google/android/tts/Synthesizer;
    .locals 2
    .parameter "request"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->isLocalOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mLocalDelegate:Lcom/google/android/tts/Synthesizer;

    .line 67
    :goto_0
    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->isNetworkOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mNetworkDelegate:Lcom/google/android/tts/Synthesizer;

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->isNetworkFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mHybridDelegate:Lcom/google/android/tts/Synthesizer;

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0, p1, v1, v1}, Lcom/google/android/tts/DelegatingSynthesizer;->selectBasedOnCapability(Lcom/google/android/tts/GoogleTtsRequest;ZZ)Lcom/google/android/tts/Synthesizer;

    move-result-object v0

    goto :goto_0
.end method

.method selectBasedOnCapability(Lcom/google/android/tts/GoogleTtsRequest;ZZ)Lcom/google/android/tts/Synthesizer;
    .locals 6
    .parameter "request"
    .parameter "initiateDownload"
    .parameter "useFallback"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 76
    iget-object v2, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mLocalDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, availableLocally:I
    iget-object v2, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mNetworkDelegate:Lcom/google/android/tts/Synthesizer;

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 81
    .local v1, availableOnNetwork:I
    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_1

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mLocalDelegate:Lcom/google/android/tts/Synthesizer;

    .line 97
    :goto_0
    return-object v2

    .line 87
    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    if-eqz p2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mDownloader:Lcom/google/android/tts/DownloadEnabler;

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/tts/DownloadEnabler;->enqueueDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    if-eqz p3, :cond_4

    if-eqz v1, :cond_3

    if-ne v1, v5, :cond_4

    .line 94
    :cond_3
    iget-object v2, p0, Lcom/google/android/tts/DelegatingSynthesizer;->mNetworkDelegate:Lcom/google/android/tts/Synthesizer;

    goto :goto_0

    .line 97
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
