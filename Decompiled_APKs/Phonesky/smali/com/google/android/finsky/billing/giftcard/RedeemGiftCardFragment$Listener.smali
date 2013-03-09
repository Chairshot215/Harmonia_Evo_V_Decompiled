.class public interface abstract Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;
.super Ljava/lang/Object;
.source "RedeemGiftCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onCountrySwitch(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onRedeem(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
