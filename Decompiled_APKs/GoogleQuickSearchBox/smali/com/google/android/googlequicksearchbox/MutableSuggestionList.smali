.class public interface abstract Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
.super Ljava/lang/Object;
.source "MutableSuggestionList.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SuggestionList;


# virtual methods
.method public abstract add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
.end method

.method public abstract addAll(Ljava/lang/Iterable;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract remove(I)V
.end method

.method public abstract setAccount(Ljava/lang/String;)V
.end method

.method public abstract setRequestFailed(Z)V
.end method

.method public abstract setRequestMade(Z)V
.end method
