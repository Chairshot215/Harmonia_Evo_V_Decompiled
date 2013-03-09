.class public interface abstract Lcom/google/android/googlequicksearchbox/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# virtual methods
.method public abstract flushLogs()V
.end method

.method public abstract logGservicesCacheWait(I)V
.end method

.method public abstract logLatency(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
.end method

.method public abstract logSearch(II)V
.end method

.method public abstract logStart(IILjava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            ")V"
        }
    .end annotation
.end method

.method public abstract logSuggestionClick(JLcom/google/android/googlequicksearchbox/SuggestionList;Ljava/util/Set;Lcom/google/android/googlequicksearchbox/google/GoogleSource;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract logVoiceSearch(Z)V
.end method
