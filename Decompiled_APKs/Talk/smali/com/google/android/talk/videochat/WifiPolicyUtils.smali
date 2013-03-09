.class public Lcom/google/android/talk/videochat/WifiPolicyUtils;
.super Ljava/lang/Object;
.source "WifiPolicyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showAlertIfNoWifi(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "video"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->showAlertIfNoWifi(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v0

    return v0
.end method

.method public static showAlertIfNoWifi(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 4
    .parameter "context"
    .parameter "video"
    .parameter "onCancelListener"

    .prologue
    const/4 v2, 0x1

    .line 34
    invoke-static {p0}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    const v1, 0x7f0c00e2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 40
    const v1, 0x7f0c00e4

    new-instance v3, Lcom/google/android/talk/videochat/WifiPolicyUtils$1;

    invoke-direct {v3, p0}, Lcom/google/android/talk/videochat/WifiPolicyUtils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    const v1, 0x7f0c00e5

    new-instance v3, Lcom/google/android/talk/videochat/WifiPolicyUtils$2;

    invoke-direct {v3}, Lcom/google/android/talk/videochat/WifiPolicyUtils$2;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v2

    .line 65
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_1
    return v1

    .line 37
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const v1, 0x7f0c00e3

    goto :goto_0

    .line 65
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static wifiConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 73
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 74
    .local v0, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 75
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v2, v3}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z
    .locals 2
    .parameter "cr"

    .prologue
    .line 69
    const-string v0, "gtalk_vc_wifi_only"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
