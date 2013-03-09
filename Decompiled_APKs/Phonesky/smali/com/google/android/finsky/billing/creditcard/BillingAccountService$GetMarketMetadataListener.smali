.class Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;
.super Ljava/lang/Object;
.source "BillingAccountService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/BillingAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMarketMetadataListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAuthenticator:Lcom/android/volley/toolbox/Authenticator;

.field private final mCheckoutToken:Ljava/lang/String;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mResultCodeOut:[I

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/google/android/finsky/api/DfeApi;Lcom/android/volley/toolbox/Authenticator;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter "dfeApi"
    .parameter "authenticator"
    .parameter "checkoutToken"
    .parameter "resultCodeOut"
    .parameter "semaphore"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 258
    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mAuthenticator:Lcom/android/volley/toolbox/Authenticator;

    .line 259
    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mCheckoutToken:Ljava/lang/String;

    .line 260
    iput-object p5, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mResultCodeOut:[I

    .line 261
    iput-object p6, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 262
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getInAppBillingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getPaidAppsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    const-string v0, "Paid apps enabled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mAuthenticator:Lcom/android/volley/toolbox/Authenticator;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mCheckoutToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mResultCodeOut:[I

    iget-object v5, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mSemaphore:Ljava/util/concurrent/Semaphore;

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkValidInstrument(Lcom/android/volley/toolbox/Authenticator;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$200(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/android/volley/toolbox/Authenticator;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v0, "Paid apps disabled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mResultCodeOut:[I

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->mSemaphore:Ljava/util/concurrent/Semaphore;

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$300(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 247
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    return-void
.end method
