.class public Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment$StoredValueInstrument;
.super Lcom/google/android/finsky/billing/Instrument;
.source "StoredValueFormOfPayment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoredValueInstrument"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment;


# direct methods
.method protected constructor <init>(Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment;Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "checkoutOption"
    .parameter "displayIcon"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment$StoredValueInstrument;->this$0:Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment;

    .line 39
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/billing/Instrument;-><init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void
.end method


# virtual methods
.method public completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
