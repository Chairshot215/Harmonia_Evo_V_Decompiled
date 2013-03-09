.class Lcom/google/android/finsky/activities/PurchaseFragment$5$1;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/activities/PurchaseFragment$5;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment$5;)V
    .locals 0
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$5$1;->this$1:Lcom/google/android/finsky/activities/PurchaseFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$5$1;->this$1:Lcom/google/android/finsky/activities/PurchaseFragment$5;

    iget-object v0, v0, Lcom/google/android/finsky/activities/PurchaseFragment$5;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->loadBillingCountries()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$1900(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    .line 853
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$5$1;->this$1:Lcom/google/android/finsky/activities/PurchaseFragment$5;

    iget-object v0, v0, Lcom/google/android/finsky/activities/PurchaseFragment$5;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->registerInstrumentFactories()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$2000(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    .line 855
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isDcb30()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$5$1;->this$1:Lcom/google/android/finsky/activities/PurchaseFragment$5;

    iget-object v0, v0, Lcom/google/android/finsky/activities/PurchaseFragment$5;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->startOrResumePurchase()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$2100(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    .line 860
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$5$1;->this$1:Lcom/google/android/finsky/activities/PurchaseFragment$5;

    iget-object v0, v0, Lcom/google/android/finsky/activities/PurchaseFragment$5;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->initializeDcb2Provisioning()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$2200(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    goto :goto_0
.end method
