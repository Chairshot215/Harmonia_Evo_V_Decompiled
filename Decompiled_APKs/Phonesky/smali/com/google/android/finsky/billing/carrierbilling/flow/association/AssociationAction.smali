.class public interface abstract Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;
.super Ljava/lang/Object;
.source "AssociationAction.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract resumeState(Landroid/os/Bundle;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract saveState(Landroid/os/Bundle;)V
.end method

.method public abstract setListener(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract start(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation
.end method
