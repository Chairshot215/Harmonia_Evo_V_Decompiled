.class Lcom/google/android/finsky/activities/InstrumentActivity$1;
.super Ljava/lang/Object;
.source "InstrumentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/InstrumentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/InstrumentActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/InstrumentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    new-instance v1, Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/InstrumentFactory;-><init>()V

    #setter for: Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/InstrumentActivity;->access$002(Lcom/google/android/finsky/activities/InstrumentActivity;Lcom/google/android/finsky/billing/InstrumentFactory;)Lcom/google/android/finsky/billing/InstrumentFactory;

    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    #getter for: Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->access$000(Lcom/google/android/finsky/activities/InstrumentActivity;)Lcom/google/android/finsky/billing/InstrumentFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    #getter for: Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->access$000(Lcom/google/android/finsky/activities/InstrumentActivity;)Lcom/google/android/finsky/billing/InstrumentFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;->registerWithInstrumentFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 215
    new-instance v0, Lcom/google/android/finsky/activities/InstrumentActivity$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/InstrumentActivity$1$1;-><init>(Lcom/google/android/finsky/activities/InstrumentActivity$1;)V

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingStorage(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method
