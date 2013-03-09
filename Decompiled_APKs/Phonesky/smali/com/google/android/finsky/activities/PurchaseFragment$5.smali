.class Lcom/google/android/finsky/activities/PurchaseFragment$5;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->initializeBilling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$5;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$5;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$1800(Lcom/google/android/finsky/activities/PurchaseFragment;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/PurchaseFragment$5$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment$5$1;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment$5;)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingParams(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 862
    return-void
.end method
