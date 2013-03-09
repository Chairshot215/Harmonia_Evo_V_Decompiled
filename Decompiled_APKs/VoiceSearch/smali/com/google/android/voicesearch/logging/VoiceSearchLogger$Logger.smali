.class interface abstract Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;
.super Ljava/lang/Object;
.source "VoiceSearchLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Logger"
.end annotation


# virtual methods
.method public abstract actionAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V
.end method

.method public abstract actionPresented(Lcom/google/android/voicesearch/actions/VoiceAction;)V
.end method

.method public abstract actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V
.end method

.method public abstract contactMissingAddress(I)V
.end method

.method public abstract disambigAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V
.end method

.method public abstract disambigPresented()V
.end method

.method public abstract errorCancel()V
.end method

.method public abstract errorReplay()V
.end method

.method public abstract errorRetry()V
.end method

.method public abstract flush()V
.end method

.method public abstract helpButtonUsed(Z)V
.end method

.method public abstract imeDisplayedTextChanged()V
.end method

.method public abstract imeDone()V
.end method

.method public abstract imeError()V
.end method

.method public abstract imeInterrupted()V
.end method

.method public abstract imeInterruptedWhileWaitingForResults()V
.end method

.method public abstract imeLatencyAfterDone(J)V
.end method

.method public abstract imeSession(J)V
.end method

.method public abstract imeStart()V
.end method

.method public abstract imeStartJump()V
.end method

.method public abstract imeSuggestionSelected()V
.end method

.method public abstract imeUserTypedCorrection()V
.end method

.method public abstract listeningCancel()V
.end method

.method public abstract personalizationAuthTokenFailure()V
.end method

.method public abstract personalizationDashboardLink()V
.end method

.method public abstract personalizationMoreLink()V
.end method

.method public abstract personalizationPopup(Z)V
.end method

.method public abstract personalizationSetting(Z)V
.end method

.method public abstract retry()V
.end method

.method public abstract start(Ljava/lang/String;)V
.end method

.method public abstract videoLaunched()V
.end method

.method public abstract workingCancel()V
.end method
