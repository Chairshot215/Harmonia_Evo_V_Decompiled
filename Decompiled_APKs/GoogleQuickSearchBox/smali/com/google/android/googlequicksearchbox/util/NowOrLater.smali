.class public interface abstract Lcom/google/android/googlequicksearchbox/util/NowOrLater;
.super Ljava/lang/Object;
.source "NowOrLater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getLater(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<-TC;>;)V"
        }
    .end annotation
.end method

.method public abstract getNow()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract haveNow()Z
.end method
