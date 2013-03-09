.class Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterCredentials;
.super Ljava/lang/Object;
.source "CompleteCarrierBillingFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfterCredentials"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterCredentials;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterCredentials;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterCredentials;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->access$300(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterCredentials;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->access$300(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->hideProgressIndicator()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterCredentials;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mCredentialsCheckPerformed:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->access$602(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Z)Z

    .line 370
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterCredentials;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->performNext()V

    .line 371
    return-void
.end method
