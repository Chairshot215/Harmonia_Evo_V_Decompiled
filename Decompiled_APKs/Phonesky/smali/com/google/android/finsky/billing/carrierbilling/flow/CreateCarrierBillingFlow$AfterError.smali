.class Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterError;
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
    name = "AfterError"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterError;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterError;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideProgress()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    .line 656
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterError;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    const-string v1, "Fetching provisioning from carrier failed"

    const-string v2, "UNKNOWN"

    #calls: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->access$700(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    return-void
.end method
