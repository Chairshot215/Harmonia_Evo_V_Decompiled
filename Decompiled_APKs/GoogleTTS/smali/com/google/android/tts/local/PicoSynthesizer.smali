.class public Lcom/google/android/tts/local/PicoSynthesizer;
.super Ljava/lang/Object;
.source "PicoSynthesizer.java"

# interfaces
.implements Lcom/google/android/tts/Synthesizer;


# instance fields
.field private final mAltLingwarePath:Ljava/lang/String;

.field private mJniData:I

.field private final mLangCountryHelper:Lcom/google/android/tts/local/LangCountryHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/tts/local/LangCountryHelper;Ljava/lang/String;)V
    .locals 1
    .parameter "helper"
    .parameter "altLingwarePath"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    .line 51
    iput-object p1, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mLangCountryHelper:Lcom/google/android/tts/local/LangCountryHelper;

    .line 54
    invoke-direct {p0, p2}, Lcom/google/android/tts/local/PicoSynthesizer;->sanitizeLingwarePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mAltLingwarePath:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private final native native_finalize(I)V
.end method

.method private final native native_getLanguage(I)[Ljava/lang/String;
.end method

.method private final native native_setLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_setLowShelf(ZFFFF)I
.end method

.method private final native native_setProperty(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_setup(Ljava/lang/String;)I
.end method

.method private final native native_shutdown(I)V
.end method

.method private final native native_speak(ILjava/lang/String;Landroid/speech/tts/SynthesisCallback;)I
.end method

.method private final native native_stopSync(I)I
.end method

.method private sanitizeLingwarePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 174
    if-nez p1, :cond_1

    const-string p1, ""

    .line 176
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 175
    .restart local p1
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private final setPitch(I)I
    .locals 3
    .parameter "pitch"

    .prologue
    .line 170
    iget v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    const-string v1, "pitch"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/tts/local/PicoSynthesizer;->native_setProperty(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private final setSpeechRate(I)I
    .locals 3
    .parameter "speechRate"

    .prologue
    .line 163
    iget v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    const-string v1, "rate"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/tts/local/PicoSynthesizer;->native_setProperty(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "PicoSynthProxy"

    const-string v1, "SynthProxy finalized without being shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    invoke-direct {p0, v0}, Lcom/google/android/tts/local/PicoSynthesizer;->native_finalize(I)V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    .line 144
    :cond_0
    return-void
.end method

.method public getLanguage()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    invoke-direct {p0, v0}, Lcom/google/android/tts/local/PicoSynthesizer;->native_getLanguage(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "language"
    .parameter "country"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mLangCountryHelper:Lcom/google/android/tts/local/LangCountryHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/tts/local/LangCountryHelper;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    invoke-direct {p0, v0}, Lcom/google/android/tts/local/PicoSynthesizer;->native_shutdown(I)V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    .line 135
    return-void
.end method

.method public onInit()V
    .locals 6

    .prologue
    .line 59
    const-string v0, "picowrapper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mAltLingwarePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/tts/local/PicoSynthesizer;->native_setup(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    .line 64
    const/4 v1, 0x1

    const/high16 v2, 0x40a0

    const/high16 v3, -0x3e70

    const v4, 0x44898000

    const/high16 v5, 0x3f80

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/tts/local/PicoSynthesizer;->native_setLowShelf(ZFFFF)I

    .line 66
    return-void
.end method

.method public onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "language"
    .parameter "country"

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/google/android/tts/local/PicoSynthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, langAvailable:I
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 90
    .end local v1           #langAvailable:I
    :goto_0
    return v1

    .line 77
    .restart local v1       #langAvailable:I
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, countryUpper:Ljava/lang/String;
    :goto_1
    iget v3, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    const-string v4, ""

    invoke-direct {p0, v3, p1, v0, v4}, Lcom/google/android/tts/local/PicoSynthesizer;->native_setLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 82
    .local v2, setLang:I
    if-nez v2, :cond_2

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/google/android/tts/local/PicoSynthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 77
    .end local v0           #countryUpper:Ljava/lang/String;
    .end local v2           #setLang:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 90
    .restart local v0       #countryUpper:Ljava/lang/String;
    .restart local v2       #setLang:I
    :cond_2
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    invoke-direct {p0, v0}, Lcom/google/android/tts/local/PicoSynthesizer;->native_stopSync(I)I

    .line 102
    return-void
.end method

.method public onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V
    .locals 3
    .parameter "ttsRequest"
    .parameter "callback"

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/tts/local/PicoSynthesizer;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getSpeechRate()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/tts/local/PicoSynthesizer;->setSpeechRate(I)I

    .line 113
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getPitch()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/tts/local/PicoSynthesizer;->setPitch(I)I

    .line 114
    iget v1, p0, Lcom/google/android/tts/local/PicoSynthesizer;->mJniData:I

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2}, Lcom/google/android/tts/local/PicoSynthesizer;->native_speak(ILjava/lang/String;Landroid/speech/tts/SynthesisCallback;)I

    move-result v0

    .line 115
    .local v0, ret:I
    if-nez v0, :cond_0

    .line 116
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->done()I

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->error()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PicoSynthesizer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
