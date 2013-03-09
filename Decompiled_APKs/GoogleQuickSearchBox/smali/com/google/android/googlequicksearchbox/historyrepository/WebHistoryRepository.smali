.class public interface abstract Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;
.super Ljava/lang/Object;
.source "WebHistoryRepository.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract deleteAllLocalHistory()V
.end method

.method public abstract deleteLocalHistoryItem(Ljava/lang/String;Z)V
.end method

.method public abstract getLocalHistory(Ljava/lang/String;ILcom/google/android/googlequicksearchbox/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasLocalHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
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

.method public abstract insertLocalHistory(Ljava/lang/String;J)V
.end method

.method public abstract registerDataSetObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.end method
