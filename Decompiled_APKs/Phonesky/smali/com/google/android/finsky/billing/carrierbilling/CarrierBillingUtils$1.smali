.class final Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$1;
.super Ljava/lang/Object;
.source "CarrierBillingUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingParams(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$completionCallback:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$1;->val$completionCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isCarrierBillingParamsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isDcb30()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->runIfNotOnWifi(Landroid/content/Context;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$1;->val$completionCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$1;->val$completionCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 210
    :cond_1
    return-void
.end method
