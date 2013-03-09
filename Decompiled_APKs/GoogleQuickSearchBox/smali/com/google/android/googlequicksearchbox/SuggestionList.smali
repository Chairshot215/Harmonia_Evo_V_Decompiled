.class public interface abstract Lcom/google/android/googlequicksearchbox/SuggestionList;
.super Ljava/lang/Object;
.source "SuggestionList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/googlequicksearchbox/Suggestion;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract get(I)Lcom/google/android/googlequicksearchbox/Suggestion;
.end method

.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method public abstract getExtraColumns()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatency()I
.end method

.method public abstract getMutableCopy()Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
.end method

.method public abstract getSourceName()Ljava/lang/String;
.end method

.method public abstract getUserQuery()Ljava/lang/String;
.end method

.method public abstract isRequestFailed()Z
.end method

.method public abstract registerDataSetObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract setLatency(I)V
.end method

.method public abstract wasRequestMade()Z
.end method
