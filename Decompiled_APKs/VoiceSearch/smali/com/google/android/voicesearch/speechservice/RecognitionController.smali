.class public interface abstract Lcom/google/android/voicesearch/speechservice/RecognitionController;
.super Ljava/lang/Object;
.source "RecognitionController.java"


# virtual methods
.method public abstract cancel(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract notifyAudioEndpointed()V
.end method

.method public abstract releaseMicrophone()V
.end method

.method public abstract releaseNetworking()V
.end method

.method public abstract replayLastRecognition(Landroid/content/Intent;Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
.end method

.method public abstract startListening(Landroid/content/Intent;Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
.end method

.method public abstract startListening(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
.end method

.method public abstract stopListening(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
.end method

.method public abstract stopRecognition(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
.end method
