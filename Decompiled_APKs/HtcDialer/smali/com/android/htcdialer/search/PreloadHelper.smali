.class public interface abstract Lcom/android/htcdialer/search/PreloadHelper;
.super Ljava/lang/Object;
.source "PreloadHelper.java"


# virtual methods
.method public abstract getPreloadCallLog()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/DialerCallLog;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreloadCallLogOrderByCount()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreloadFavorite()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/DialerContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreloadFavoriteWithoutName()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/DialerContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreloadFirstSearchResult()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end method

.method public abstract getPreloadPerson()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/DialerContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreloadPersonWithoutName()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/DialerContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isPreloadDone()Z
.end method
