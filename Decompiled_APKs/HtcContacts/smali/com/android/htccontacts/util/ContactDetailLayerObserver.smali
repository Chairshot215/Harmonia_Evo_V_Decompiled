.class public interface abstract Lcom/android/htccontacts/util/ContactDetailLayerObserver;
.super Ljava/lang/Object;
.source "ContactDetailLayerObserver.java"

# interfaces
.implements Lcom/android/htccontacts/util/BaseDetailLayerObserver;


# virtual methods
.method public abstract onDetailInfoInit()V
.end method

.method public abstract updateStatusResult(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/IndicatorResult$SNStatus;",
            ">;)V"
        }
    .end annotation
.end method
