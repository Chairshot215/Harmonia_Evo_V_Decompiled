.class public interface abstract Lcom/google/android/googlequicksearchbox/SuggestionsProvider;
.super Ljava/lang/Object;
.source "SuggestionsProvider.java"


# virtual methods
.method public abstract cancelOngoingQuery()V
.end method

.method public abstract close()V
.end method

.method public abstract getSuggestions(Ljava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;)Lcom/google/android/googlequicksearchbox/Suggestions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            "Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;",
            ")",
            "Lcom/google/android/googlequicksearchbox/Suggestions;"
        }
    .end annotation
.end method
