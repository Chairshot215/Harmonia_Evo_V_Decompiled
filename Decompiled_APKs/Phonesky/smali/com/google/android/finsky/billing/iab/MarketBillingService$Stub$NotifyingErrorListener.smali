.class Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;
.super Ljava/lang/Object;
.source "MarketBillingService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyingErrorListener"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mRequestId:J

.field final synthetic this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "packageName"
    .parameter "requestId"

    .prologue
    .line 638
    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput-object p2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;->mPackageName:Ljava/lang/String;

    .line 640
    iput-wide p3, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;->mRequestId:J

    .line 641
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 5
    .parameter "error"

    .prologue
    .line 645
    const-string v0, "Server error on InAppPurchaseInformationRequest: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;->mPackageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$NotifyingErrorListener;->mRequestId:J

    sget-object v4, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    .line 648
    return-void
.end method
