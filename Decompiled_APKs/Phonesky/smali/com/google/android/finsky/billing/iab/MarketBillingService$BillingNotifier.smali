.class public Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;
.super Ljava/lang/Object;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/iab/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BillingNotifier"
.end annotation


# instance fields
.field private mService:Lcom/google/android/finsky/billing/iab/MarketBillingService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/iab/MarketBillingService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->mService:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    .line 759
    return-void
.end method


# virtual methods
.method protected sendPurchaseStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"
    .parameter "data"
    .parameter "signature"

    .prologue
    .line 807
    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->mService:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v1, v1, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 809
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 810
    const/4 v1, 0x0

    .line 815
    :goto_0
    return v1

    .line 812
    :cond_0
    const-string v1, "inapp_signed_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    const-string v1, "inapp_signature"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->mService:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 815
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z
    .locals 1
    .parameter "packageName"
    .parameter "requestId"
    .parameter "responseCode"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->mService:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;)Z

    move-result v0

    return v0
.end method

.method protected showStatusBarNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;)V
    .locals 11
    .parameter "context"
    .parameter "packageName"
    .parameter "response"

    .prologue
    .line 775
    invoke-virtual {p3}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSignedData()Ljava/lang/String;

    move-result-object v7

    .line 776
    .local v7, data:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;->getSignature()Ljava/lang/String;

    move-result-object v10

    .line 779
    .local v10, signature:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getStatusBarNotificationList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    .line 780
    .local v9, notification:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    invoke-virtual {v9}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getTickerText()Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, tickerText:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getContentTitle()Ljava/lang/String;

    move-result-object v3

    .line 782
    .local v3, contentTitle:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getContentText()Ljava/lang/String;

    move-result-object v4

    .line 783
    .local v4, contentText:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->mService:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v1, v1, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 784
    .local v6, intent:Landroid/content/Intent;
    const-string v1, "inapp_signed_data"

    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v1, "inapp_signature"

    invoke-virtual {v6, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    .line 788
    .local v0, notifier:Lcom/google/android/finsky/utils/Notifier;
    const v5, 0x108008a

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/finsky/utils/Notifier;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    goto :goto_0

    .line 791
    .end local v0           #notifier:Lcom/google/android/finsky/utils/Notifier;
    .end local v2           #tickerText:Ljava/lang/String;
    .end local v3           #contentTitle:Ljava/lang/String;
    .end local v4           #contentText:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #notification:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    :cond_0
    return-void
.end method
