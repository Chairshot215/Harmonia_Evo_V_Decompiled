.class public Lcom/android/settings/wifi/RedirectDialog;
.super Landroid/app/Activity;
.source "RedirectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/RedirectDialog$WifiServiceHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_REDIRECT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "RedirectWarning"

.field private static final URL:Ljava/lang/String; = "http://www.google.com"


# instance fields
.field private mNetworkId:I

.field private mRedirectURL:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/RedirectDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mNetworkId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/RedirectDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/wifi/RedirectDialog;->finish()V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/wifi/RedirectDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "redirectTo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    .line 42
    iget-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 44
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/RedirectDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 45
    iget-object v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 46
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/RedirectDialog;->mNetworkId:I

    .line 47
    const/16 v3, 0x3e9

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/RedirectDialog;->showDialog(I)V

    .line 49
    .end local v2           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 52
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 54
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c05be

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0b08

    new-instance v3, Lcom/android/settings/wifi/RedirectDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/RedirectDialog$2;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0b09

    new-instance v3, Lcom/android/settings/wifi/RedirectDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/RedirectDialog$1;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c05bf

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
