.class Lcom/google/android/finsky/activities/PurchaseFragment$15;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 1403
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$15;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1406
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$15;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #setter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mChallenging:Z
    invoke-static {v0, v4}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$3202(Lcom/google/android/finsky/activities/PurchaseFragment;Z)Z

    .line 1407
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$15;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    new-instance v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$1700(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    .line 1408
    return-void
.end method
