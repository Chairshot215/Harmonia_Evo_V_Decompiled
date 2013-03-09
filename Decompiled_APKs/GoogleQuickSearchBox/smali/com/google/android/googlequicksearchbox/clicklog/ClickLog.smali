.class public interface abstract Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;
.super Ljava/lang/Object;
.source "ClickLog.java"


# virtual methods
.method public abstract clearHistory()V
.end method

.method public abstract close()V
.end method

.method public abstract getSourceScores(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract hasHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportClick(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
.end method
