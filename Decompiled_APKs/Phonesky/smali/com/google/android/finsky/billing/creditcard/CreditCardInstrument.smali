.class public Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument;
.super Lcom/google/android/finsky/billing/Instrument;
.source "CreditCardInstrument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$CreditCardNumberFilter;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "checkoutOption"
    .parameter "displayIcon"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/Instrument;-><init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V

    .line 133
    return-void
.end method

.method public static registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V
    .locals 2
    .parameter "instrumentFactory"

    .prologue
    .line 39
    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$1;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/InstrumentFactory;->registerFormOfPayment(ILcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;)V

    .line 129
    return-void
.end method


# virtual methods
.method public completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method
