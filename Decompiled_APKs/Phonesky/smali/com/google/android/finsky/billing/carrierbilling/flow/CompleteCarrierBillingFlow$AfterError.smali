.class Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;
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
    name = "AfterError"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->access$300(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->access$300(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->dismiss()V

    .line 380
    :cond_0
    const-string v0, "Fetching info from carrier failed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow$AfterError;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->fail(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;->access$700(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;Ljava/lang/String;)V

    .line 382
    return-void
.end method
