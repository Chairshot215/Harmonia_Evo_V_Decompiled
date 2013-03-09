.class public Lcom/google/android/tts/GoogleTtsRequest;
.super Ljava/lang/Object;
.source "GoogleTtsRequest.java"


# instance fields
.field private final mConfig:Lcom/google/android/tts/TtsConfig;

.field private final mRequest:Landroid/speech/tts/SynthesisRequest;

.field private final mRequestCountry:Ljava/lang/String;

.field private mRequestEndTime:J

.field private final mRequestLang:Ljava/lang/String;

.field private volatile mRequestServed:Z

.field private final mRequestStartTime:J


# direct methods
.method protected constructor <init>(Landroid/speech/tts/SynthesisRequest;Lcom/google/android/tts/TtsConfig;)V
    .locals 2
    .parameter "wrapped"
    .parameter "config"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 27
    iput-object p2, p0, Lcom/google/android/tts/GoogleTtsRequest;->mConfig:Lcom/google/android/tts/TtsConfig;

    .line 28
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/tts/GoogleTtsRequest;->safeToLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequestLang:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/tts/GoogleTtsRequest;->safeToLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequestCountry:Ljava/lang/String;

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequestStartTime:J

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequestEndTime:J

    .line 33
    return-void
.end method

.method private getDefaultTimeout()I
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/android/tts/GoogleTtsRequest;->isNetworkOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mConfig:Lcom/google/android/tts/TtsConfig;

    invoke-interface {v0}, Lcom/google/android/tts/TtsConfig;->getDefaultTimeoutNetworkOnly()I

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mConfig:Lcom/google/android/tts/TtsConfig;

    invoke-interface {v0}, Lcom/google/android/tts/TtsConfig;->getDefaultTimeoutNetworkFirst()I

    move-result v0

    goto :goto_0
.end method

.method private getSynthesisModeParam()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, params:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 92
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.google.android.tts:Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static safeToLower(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 140
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static wrap(Landroid/speech/tts/SynthesisRequest;Lcom/google/android/tts/TtsConfig;)Lcom/google/android/tts/GoogleTtsRequest;
    .locals 1
    .parameter "request"
    .parameter "config"

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/tts/GoogleTtsRequest;

    invoke-direct {v0, p0, p1}, Lcom/google/android/tts/GoogleTtsRequest;-><init>(Landroid/speech/tts/SynthesisRequest;Lcom/google/android/tts/TtsConfig;)V

    return-object v0
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequestCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequestLang:Ljava/lang/String;

    return-object v0
.end method

.method public getPitch()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v0

    return v0
.end method

.method public getSpeechRate()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 4

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/tts/GoogleTtsRequest;->getDefaultTimeout()I

    move-result v0

    .line 105
    .local v0, delay:I
    iget-object v3, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v3}, Landroid/speech/tts/SynthesisRequest;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 106
    .local v2, requestParams:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v3, "com.google.android.tts:NetworkTimeout"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 108
    const-string v3, "com.google.android.tts:NetworkTimeout"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, delayStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 116
    .end local v1           #delayStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 111
    .restart local v1       #delayStr:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public isLocalOnly()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v3, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v3}, Landroid/speech/tts/SynthesisRequest;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    .local v1, params:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 77
    :cond_1
    const-string v3, "embeddedTts"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, embeddedSynthValue:Ljava/lang/String;
    const-string v3, "LocalOnly"

    invoke-direct {p0}, Lcom/google/android/tts/GoogleTtsRequest;->getSynthesisModeParam()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isNetworkFirst()Z
    .locals 2

    .prologue
    .line 84
    const-string v0, "NetworkFirst"

    invoke-direct {p0}, Lcom/google/android/tts/GoogleTtsRequest;->getSynthesisModeParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNetworkOnly()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v4, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v4}, Landroid/speech/tts/SynthesisRequest;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 58
    .local v2, params:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v3

    .line 64
    :cond_1
    const-string v4, "networkTts"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, networkSynthKey:Ljava/lang/String;
    const-string v4, "com.google.android.tts:Mode"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, mode:Ljava/lang/String;
    const-string v4, "NetworkOnly"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isServed()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequestServed:Z

    return v0
.end method

.method public setServed()V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequestServed:Z

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/tts/GoogleTtsRequest;->mRequestEndTime:J

    .line 43
    return-void
.end method
