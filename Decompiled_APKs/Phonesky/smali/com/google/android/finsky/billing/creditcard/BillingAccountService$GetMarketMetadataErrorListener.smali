.class Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataErrorListener;
.super Ljava/lang/Object;
.source "BillingAccountService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/BillingAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMarketMetadataErrorListener"
.end annotation


# instance fields
.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mResultCodeOut:[I

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter "dfeApi"
    .parameter "resultCodeOut"
    .parameter "semaphore"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataErrorListener;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataErrorListener;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 286
    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataErrorListener;->mResultCodeOut:[I

    .line 287
    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataErrorListener;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 288
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataErrorListener;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataErrorListener;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->convertErrorCode(Lcom/android/volley/VolleyError;)I
    invoke-static {v1, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$400(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/android/volley/VolleyError;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataErrorListener;->mResultCodeOut:[I

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataErrorListener;->mSemaphore:Ljava/util/concurrent/Semaphore;

    #calls: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$300(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    .line 293
    return-void
.end method
