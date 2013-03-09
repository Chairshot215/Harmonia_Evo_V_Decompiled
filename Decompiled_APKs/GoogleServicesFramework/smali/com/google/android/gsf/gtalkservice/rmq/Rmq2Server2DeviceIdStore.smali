.class public interface abstract Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;
.super Ljava/lang/Object;
.source "Rmq2Server2DeviceIdStore.java"


# virtual methods
.method public abstract addS2dId(Ljava/lang/String;)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract deleteS2dIds(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getS2dIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
