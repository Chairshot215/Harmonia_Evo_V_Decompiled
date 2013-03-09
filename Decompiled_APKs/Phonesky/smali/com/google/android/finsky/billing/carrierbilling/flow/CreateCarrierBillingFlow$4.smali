.class Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$4;
.super Ljava/lang/Object;
.source "CreateCarrierBillingFlow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->performRequestWithToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$4;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$4;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showNetworkError(Lcom/android/volley/VolleyError;)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->access$300(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Lcom/android/volley/VolleyError;)V

    .line 583
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$4;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideProgress()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    .line 584
    return-void
.end method
