.class Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;
.super Ljava/lang/Object;
.source "BillingAccountService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkValidInstrument(Lcom/android/volley/toolbox/Authenticator;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

.field final synthetic val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

.field final synthetic val$resultCodeOut:[I

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;->val$resultCodeOut:[I

    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 320
    const-string v0, "Received error: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->convertErrorCode(Lcom/android/volley/VolleyError;)I
    invoke-static {v1, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$400(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/android/volley/VolleyError;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;->val$resultCodeOut:[I

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$300(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    .line 322
    return-void
.end method
