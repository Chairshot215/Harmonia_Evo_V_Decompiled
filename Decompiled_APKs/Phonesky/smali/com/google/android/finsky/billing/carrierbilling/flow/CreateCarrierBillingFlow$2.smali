.class Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$2;
.super Ljava/lang/Object;
.source "CreateCarrierBillingFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->resumeFromSavedState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$2;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$2;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$2;->val$bundle:Landroid/os/Bundle;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->continueResume(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Landroid/os/Bundle;)V

    .line 265
    return-void
.end method
