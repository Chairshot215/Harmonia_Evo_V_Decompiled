.class public Lcom/android/phone/DataRoamingConfirm;
.super Landroid/app/Activity;
.source "DataRoamingConfirm.java"


# static fields
.field private static final DIALOG_DATA_ROAMING_CONFIRM:I = 0x1b59

.field private static final ENABLE_DATA_ROAMING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DataRoamingConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/DataRoamingConfirm;->disableDataRoaming()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DataRoamingConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/DataRoamingConfirm;->allowDataRoaming()V

    return-void
.end method

.method private allowDataRoaming()V
    .locals 6

    .prologue
    .line 58
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/phone/DataRoamingConfirm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 62
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 64
    .local v2, mPhoneService:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->confirmFirstDataRoaming()V

    .line 66
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/phone/DataRoamingConfirm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 67
    .local v1, mConnectManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 68
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_1

    .line 69
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #mConnectManager:Landroid/net/ConnectivityManager;
    .end local v2           #mPhoneService:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v3

    .line 72
    .local v3, re:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private disableDataRoaming()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataRoamingConfirm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 81
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 82
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const/16 v0, 0x1b59

    invoke-virtual {p0, v0}, Lcom/android/phone/DataRoamingConfirm;->showDialog(I)V

    .line 89
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 92
    const/16 v1, 0x1b59

    if-ne p1, v1, :cond_0

    .line 94
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0080

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/DataRoamingConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0082

    new-instance v3, Lcom/android/phone/DataRoamingConfirm$2;

    invoke-direct {v3, p0}, Lcom/android/phone/DataRoamingConfirm$2;-><init>(Lcom/android/phone/DataRoamingConfirm;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0081

    new-instance v3, Lcom/android/phone/DataRoamingConfirm$1;

    invoke-direct {v3, p0}, Lcom/android/phone/DataRoamingConfirm$1;-><init>(Lcom/android/phone/DataRoamingConfirm;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
