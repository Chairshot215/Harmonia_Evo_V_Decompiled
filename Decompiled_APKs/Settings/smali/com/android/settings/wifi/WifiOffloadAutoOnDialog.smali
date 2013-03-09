.class public Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;
.super Landroid/app/Activity;
.source "WifiOffloadAutoOnDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiOffloadAutoOnDialog"

.field static final WIFI_OFFLOAD_AUTO_ON_DIALOG:I = 0x0

.field static final WIFI_OFFLOAD_NOTIFY_DIALOG:I = 0x1


# instance fields
.field mSsid:Ljava/lang/String;

.field private mTurnOffWifi:Z

.field private mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mTurnOffWifi:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)Lcom/android/settings/wifi/WifiOffloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mTurnOffWifi:Z

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v2, 0x3

    sput v2, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    .line 39
    invoke-static {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 42
    .local v1, newBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 43
    const-string v2, "ssid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mSsid:Ljava/lang/String;

    .line 44
    const-string v2, "WifiOffloadAutoOnDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mSsid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->showDialog(I)V

    .line 51
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const v11, 0x7f0c060e

    const v10, 0x7f0c0028

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 75
    if-nez p1, :cond_2

    .line 76
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400a3

    invoke-virtual {v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 81
    .local v3, handlerView:Landroid/view/View;
    const v6, 0x7f080020

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 82
    .local v5, text:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mSsid:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mSsid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 83
    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mSsid:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {p0, v11, v6}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 88
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 89
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 90
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 91
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 92
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 94
    .local v2, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v4, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)V

    .line 116
    .local v4, listener:Landroid/view/View$OnClickListener;
    const v6, 0x7f080188

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 117
    .local v1, button:Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v6, 0x7f080207

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #button:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 119
    .restart local v1       #button:Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v6, 0x7f080208

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #button:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 121
    .restart local v1       #button:Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v6, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$2;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$2;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)V

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 142
    new-instance v6, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$3;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$3;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)V

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 164
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #button:Landroid/widget/Button;
    .end local v2           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v3           #handlerView:Landroid/view/View;
    .end local v4           #listener:Landroid/view/View$OnClickListener;
    .end local v5           #text:Landroid/widget/TextView;
    :cond_0
    :goto_1
    return-object v2

    .line 85
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .restart local v3       #handlerView:Landroid/view/View;
    .restart local v5       #text:Landroid/widget/TextView;
    :cond_1
    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v9

    invoke-virtual {p0, v11, v6}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v3           #handlerView:Landroid/view/View;
    .end local v5           #text:Landroid/widget/TextView;
    :cond_2
    if-ne p1, v8, :cond_0

    .line 152
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c0610

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c001e

    new-instance v8, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$4;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$4;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 162
    .restart local v2       #dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->removeDialog(I)V

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 177
    sput v2, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    .line 178
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mTurnOffWifi:Z

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 180
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 181
    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->setupTimer()V

    .line 184
    .end local v0           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 170
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 72
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    return-void
.end method
