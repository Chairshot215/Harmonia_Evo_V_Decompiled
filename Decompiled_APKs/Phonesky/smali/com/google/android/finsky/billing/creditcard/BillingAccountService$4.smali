.class Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;
.super Ljava/lang/Object;
.source "BillingAccountService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkValidInstrument(Lcom/android/volley/toolbox/Authenticator;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

.field final synthetic val$authenticator:Lcom/android/volley/toolbox/Authenticator;

.field final synthetic val$checkoutToken:Ljava/lang/String;

.field final synthetic val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

.field final synthetic val$resultCodeOut:[I

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/android/volley/toolbox/Authenticator;Ljava/lang/String;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$authenticator:Lcom/android/volley/toolbox/Authenticator;

    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$checkoutToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p5, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$resultCodeOut:[I

    iput-object p6, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$authenticator:Lcom/android/volley/toolbox/Authenticator;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$checkoutToken:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/volley/toolbox/Authenticator;->invalidateAuthToken(Ljava/lang/String;)V

    .line 307
    const-string v1, "Received checkout_token_required."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$resultCodeOut:[I

    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$300(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    .line 315
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getUserHasValidInstrument()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 313
    .local v0, result:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$resultCodeOut:[I

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$300(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    goto :goto_0

    .line 310
    .end local v0           #result:I
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    check-cast p1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;)V

    return-void
.end method
