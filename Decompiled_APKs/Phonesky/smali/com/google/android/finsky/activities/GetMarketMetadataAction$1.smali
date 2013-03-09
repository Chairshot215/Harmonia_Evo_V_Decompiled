.class Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;
.super Ljava/lang/Object;
.source "GetMarketMetadataAction.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/GetMarketMetadataAction;->run(Landroid/content/Context;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
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
        "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/GetMarketMetadataAction;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/android/volley/Response$Listener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/GetMarketMetadataAction;Ljava/lang/String;Landroid/content/Context;Lcom/android/volley/Response$Listener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;->this$0:Lcom/google/android/finsky/activities/GetMarketMetadataAction;

    iput-object p2, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;->val$listener:Lcom/android/volley/Response$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;->val$account:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getInAppBillingEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/InAppBillingSetting;->setEnabled(Ljava/lang/String;Z)V

    .line 77
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->LOG_BILLING_EVENTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getBillingEventsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/google/android/finsky/config/G;->vendingHideWarningMessage:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasWarningMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;->this$0:Lcom/google/android/finsky/activities/GetMarketMetadataAction;

    iget-object v1, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;->val$context:Landroid/content/Context;

    #calls: Lcom/google/android/finsky/activities/GetMarketMetadataAction;->showWarningIfNecessary(Landroid/content/Context;Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;->access$000(Lcom/google/android/finsky/activities/GetMarketMetadataAction;Landroid/content/Context;Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;->val$listener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;->val$listener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 86
    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/GetMarketMetadataAction$1;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    return-void
.end method
