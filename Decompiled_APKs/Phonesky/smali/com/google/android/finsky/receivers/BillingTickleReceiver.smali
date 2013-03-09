.class public Lcom/google/android/finsky/receivers/BillingTickleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BillingTickleReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 24
    const-string v2, "asset_package"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, packageName:Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/receivers/BillingTickleReceiver;->setResultCode(I)V

    .line 27
    const-string v2, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    const-string v2, "notification_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, notifyId:Ljava/lang/String;
    invoke-static {p1, v1, v0}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sendNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/BillingTickleReceiver;->setResultCode(I)V

    .line 36
    .end local v0           #notifyId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string v2, "Intent does not contain a supported category; package: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/BillingTickleReceiver;->setResultCode(I)V

    goto :goto_0
.end method
