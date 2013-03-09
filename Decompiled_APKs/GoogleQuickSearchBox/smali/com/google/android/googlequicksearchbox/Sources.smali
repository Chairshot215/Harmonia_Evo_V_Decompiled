.class public interface abstract Lcom/google/android/googlequicksearchbox/Sources;
.super Ljava/lang/Object;
.source "Sources.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/ObservableDataSet;


# virtual methods
.method public abstract getSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Source;
.end method

.method public abstract getSourceIfExists(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Source;
.end method

.method public abstract getSources()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update()V
.end method
