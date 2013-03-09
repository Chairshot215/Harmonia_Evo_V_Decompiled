.class Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$2;
.super Ljava/lang/Object;
.source "MarketBillingService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->confirmNotifications(ILjava/lang/String;[Ljava/lang/String;)J
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
        "Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$requestId:J


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$2;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iput-object p2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$2;->val$packageName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$2;->val$requestId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$2;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$2;->val$packageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$2;->val$requestId:J

    sget-object v4, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    .line 579
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 574
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$2;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;)V

    return-void
.end method
