.class public interface abstract Lcom/google/android/gm/LabelSettingsObservable;
.super Ljava/lang/Object;
.source "LabelSettingsObservable.java"


# virtual methods
.method public abstract getIncludedLabels()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumberOfSyncDays()I
.end method

.method public abstract getPartialLabels()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract notifyChanged()V
.end method

.method public abstract registerObserver(Lcom/google/android/gm/LabelSettingsObserver;)V
.end method

.method public abstract setIncludedLabels(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPartialLabels(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterObserver(Lcom/google/android/gm/LabelSettingsObserver;)V
.end method
