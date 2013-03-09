.class public interface abstract Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;
.super Ljava/lang/Object;
.source "QsbDebugging.java"


# virtual methods
.method public abstract activityStart()V
.end method

.method public abstract activityStop()V
.end method

.method public abstract addPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
.end method

.method public abstract boundSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)V
.end method

.method public abstract debugPromotion()Z
.end method

.method public abstract finishPromotion(Lcom/google/android/googlequicksearchbox/Suggestions;)V
.end method

.method public abstract getGlobalDebugInfo()Ljava/lang/String;
.end method

.method public abstract getGlobalDebugInfoObservable()Landroid/database/DataSetObservable;
.end method

.method public abstract getPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;
.end method

.method public abstract getSuggestionDebugInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;
.end method

.method public abstract inflatedListEntryView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)V
.end method

.method public abstract listAdapterNotified()V
.end method

.method public abstract recycledListEntryView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)V
.end method

.method public abstract showGlobalDebugInfo()Z
.end method

.method public abstract showSuggestionDebugInfo()Z
.end method

.method public abstract startPromotion(Lcom/google/android/googlequicksearchbox/Suggestions;)V
.end method
