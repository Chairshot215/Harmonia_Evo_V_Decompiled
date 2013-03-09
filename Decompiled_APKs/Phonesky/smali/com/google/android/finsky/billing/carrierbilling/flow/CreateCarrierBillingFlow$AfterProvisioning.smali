.class Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;
.super Ljava/lang/Object;
.source "CreateCarrierBillingFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AfterProvisioning"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideProgress()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    .line 645
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->access$500(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v1

    #setter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->access$402(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    .line 646
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->setAddressAvailability()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->access$600(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    .line 647
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->performNext()V

    .line 648
    return-void
.end method
