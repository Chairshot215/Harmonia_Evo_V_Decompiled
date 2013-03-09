.class public interface abstract Lcom/google/android/finsky/experiments/Experiments;
.super Ljava/lang/Object;
.source "Experiments.java"


# virtual methods
.method public abstract getEnabledExperimentsHeaderValue()Ljava/lang/String;
.end method

.method public abstract getUnsupportedExperimentsHeaderValue()Ljava/lang/String;
.end method

.method public abstract hasEnabledExperiments()Z
.end method

.method public abstract hasUnsupportedExperiments()Z
.end method

.method public abstract isEnabled(Ljava/lang/String;)Z
.end method

.method public abstract setExperiments(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
