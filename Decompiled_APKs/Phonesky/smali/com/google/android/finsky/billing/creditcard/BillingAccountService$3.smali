.class Lcom/google/android/finsky/billing/creditcard/BillingAccountService$3;
.super Ljava/lang/Object;
.source "BillingAccountService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkPromoOffers(Landroid/accounts/Account;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

.field final synthetic val$result:Landroid/os/Bundle;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Landroid/os/Bundle;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$3;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$3;->val$result:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "volleyError"

    .prologue
    .line 214
    const-string v1, "Error while checking for offers: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const/4 v0, -0x2

    .line 216
    .local v0, resultCode:I
    instance-of v1, p1, Lcom/android/volley/ServerError;

    if-eqz v1, :cond_0

    .line 217
    const/4 v0, -0x1

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$3;->val$result:Landroid/os/Bundle;

    const-string v2, "result_code"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 221
    return-void
.end method
