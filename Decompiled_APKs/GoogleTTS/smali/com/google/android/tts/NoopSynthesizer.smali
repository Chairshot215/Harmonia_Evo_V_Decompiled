.class public Lcom/google/android/tts/NoopSynthesizer;
.super Ljava/lang/Object;
.source "NoopSynthesizer.java"

# interfaces
.implements Lcom/google/android/tts/Synthesizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "language"
    .parameter "country"

    .prologue
    .line 35
    const/4 v0, -0x2

    return v0
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public onInit()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "language"
    .parameter "country"

    .prologue
    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to NoopSynth#onLoadLanguage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to NoopSynth#onStop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V
    .locals 2
    .parameter "request"
    .parameter "callback"

    .prologue
    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to NoopSynth#onSynthesize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
