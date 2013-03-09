.class public Lcom/google/android/tts/FallbackSynthesizer;
.super Ljava/lang/Object;
.source "FallbackSynthesizer.java"

# interfaces
.implements Lcom/google/android/tts/Synthesizer;


# instance fields
.field private final mFallback:Lcom/google/android/tts/Synthesizer;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mPrimary:Lcom/google/android/tts/Synthesizer;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/tts/Synthesizer;Lcom/google/android/tts/Synthesizer;)V
    .locals 0
    .parameter "primary"
    .parameter "fallback"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/tts/FallbackSynthesizer;->mPrimary:Lcom/google/android/tts/Synthesizer;

    .line 23
    iput-object p2, p0, Lcom/google/android/tts/FallbackSynthesizer;->mFallback:Lcom/google/android/tts/Synthesizer;

    .line 24
    return-void
.end method


# virtual methods
.method public getLanguage()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/tts/FallbackSynthesizer;->mFallback:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0}, Lcom/google/android/tts/Synthesizer;->getLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "country"
    .parameter "language"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onInit()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "country"
    .parameter "language"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V
    .locals 3
    .parameter "ttsRequest"
    .parameter "callback"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/tts/FallbackSynthesizer;->mPrimary:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/tts/Synthesizer;->onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V

    .line 42
    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->isServed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/android/tts/FallbackSynthesizer;->mFallback:Lcom/google/android/tts/Synthesizer;

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/tts/GoogleTtsRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/tts/Synthesizer;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 48
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->error()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/android/tts/FallbackSynthesizer;->mFallback:Lcom/google/android/tts/Synthesizer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/tts/Synthesizer;->onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V

    goto :goto_0
.end method
