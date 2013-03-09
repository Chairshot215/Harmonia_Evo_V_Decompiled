.class public interface abstract Lcom/google/android/tts/Synthesizer;
.super Ljava/lang/Object;
.source "Synthesizer.java"


# virtual methods
.method public abstract getLanguage()[Ljava/lang/String;
.end method

.method public abstract isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract onClose()V
.end method

.method public abstract onInit()V
.end method

.method public abstract onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract onStop()V
.end method

.method public abstract onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V
.end method
