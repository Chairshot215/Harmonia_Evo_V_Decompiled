.class public interface abstract Lcom/google/android/googlequicksearchbox/google/GoogleSource;
.super Ljava/lang/Object;
.source "GoogleSource.java"


# virtual methods
.method public abstract canQueryNow()Z
.end method

.method public abstract getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
.end method

.method public abstract getSourceName()Ljava/lang/String;
.end method

.method public abstract getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isLikelyToReturnZeroQueryResults()Z
.end method

.method public abstract logClick(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract removeFromHistory(Ljava/lang/String;)Z
.end method
