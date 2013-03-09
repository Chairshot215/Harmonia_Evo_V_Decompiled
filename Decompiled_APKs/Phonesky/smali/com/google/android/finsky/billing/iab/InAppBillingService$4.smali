.class Lcom/google/android/finsky/billing/iab/InAppBillingService$4;
.super Ljava/lang/Object;
.source "InAppBillingService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/InAppBillingService;->consumeIabPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

.field final synthetic val$responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$4;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$4;->val$responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    iput-object p3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"

    .prologue
    const/4 v3, 0x0

    .line 688
    const-string v0, "Error response on confirmPurchase: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$4;->val$responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    aput-object v1, v0, v3

    .line 690
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 691
    return-void
.end method
