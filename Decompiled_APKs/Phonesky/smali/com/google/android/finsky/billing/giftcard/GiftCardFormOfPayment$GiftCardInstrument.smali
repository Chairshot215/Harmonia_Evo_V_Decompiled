.class public Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment$GiftCardInstrument;
.super Lcom/google/android/finsky/billing/Instrument;
.source "GiftCardFormOfPayment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GiftCardInstrument"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;


# direct methods
.method protected constructor <init>(Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "checkoutOption"
    .parameter "displayIcon"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment$GiftCardInstrument;->this$0:Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;

    .line 51
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/billing/Instrument;-><init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method


# virtual methods
.method public completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
