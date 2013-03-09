.class Lcom/google/android/finsky/activities/PurchaseFragment$4;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 764
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$4;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 5
    .parameter "error"

    .prologue
    .line 767
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$4;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$4;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    new-instance v2, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->finishWithError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$1700(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V

    .line 769
    return-void
.end method
