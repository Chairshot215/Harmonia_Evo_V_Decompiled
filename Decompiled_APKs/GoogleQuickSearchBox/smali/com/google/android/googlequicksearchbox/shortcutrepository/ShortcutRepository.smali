.class public interface abstract Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;
.super Ljava/lang/Object;
.source "ShortcutRepository.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;


# virtual methods
.method public abstract getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZLcom/google/android/googlequicksearchbox/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;Z",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/ShortcutList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)V
.end method

.method public abstract updateShortcut(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V
.end method
