.class Lcom/google/android/finsky/billing/iab/InAppBillingService$3;
.super Ljava/lang/Object;
.source "InAppBillingService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/InAppBillingService;->consumeIabPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
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
        "Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;Landroid/accounts/Account;[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;->val$responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    iput-object p4, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;)V
    .locals 5
    .parameter "consumeResponse"

    .prologue
    const/4 v4, 0x0

    .line 663
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->hasLibraryUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;->val$account:Landroid/accounts/Account;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    const-string v3, "confirmPurchase"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    .line 667
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 679
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;->val$responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    aput-object v1, v0, v4

    .line 682
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 683
    return-void

    .line 669
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;->val$responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    aput-object v1, v0, v4

    goto :goto_0

    .line 672
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;->val$responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_ITEM_NOT_OWNED:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    aput-object v1, v0, v4

    goto :goto_0

    .line 675
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;->val$responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    aput-object v1, v0, v4

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 659
    check-cast p1, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;->onResponse(Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;)V

    return-void
.end method
