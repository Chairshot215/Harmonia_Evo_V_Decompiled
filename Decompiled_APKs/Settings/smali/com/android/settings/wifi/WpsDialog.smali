.class public Lcom/android/settings/wifi/WpsDialog;
.super Landroid/app/Activity;
.source "WpsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WpsDialog$WifiServiceHandler;,
        Lcom/android/settings/wifi/WpsDialog$Count;
    }
.end annotation


# static fields
.field public static COUNT_MESSAGE:I = 0x0

.field static final MAX_COUNT:I = 0x78

.field public static PBC_DIALOG_TYPE:Ljava/lang/String; = null

.field public static PIN_DIALOG_TYPE:Ljava/lang/String; = null

.field static final PROGRESS_DIALOG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WpsDialog"

.field static final WPS_OVERLAP_DIALOG:I = 0x3

.field static final WPS_PBC_DIALOG:I = 0x0

.field static final WPS_PIN_DIALOG:I = 0x1

.field static final WPS_TIMEOUT_DIALOG:I = 0x2


# instance fields
.field final handler:Landroid/os/Handler;

.field private mBssid:Ljava/lang/String;

.field private mCancel:Z

.field private mDialogType:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field mPinNumber:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mState:Z

.field private mSuccess:Z

.field private mThread:Ljava/lang/Thread;

.field mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsInfo:Landroid/net/wifi/WpsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "PBC"

    sput-object v0, Lcom/android/settings/wifi/WpsDialog;->PBC_DIALOG_TYPE:Ljava/lang/String;

    .line 44
    const-string v0, "PIN"

    sput-object v0, Lcom/android/settings/wifi/WpsDialog;->PIN_DIALOG_TYPE:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/wifi/WpsDialog;->COUNT_MESSAGE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WpsDialog;->mSuccess:Z

    .line 65
    new-instance v0, Lcom/android/settings/wifi/WpsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WpsDialog$1;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 351
    new-instance v0, Lcom/android/settings/wifi/WpsDialog$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WpsDialog$8;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->handler:Landroid/os/Handler;

    .line 424
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsDialog;->clearThread()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WpsDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/settings/wifi/WpsDialog;->mSuccess:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WpsDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/WpsDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/settings/wifi/WpsDialog;->mCancel:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WpsDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogType:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/WpsDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogType:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WpsDialog;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/WpsDialog;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WpsDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/settings/wifi/WpsDialog;->mState:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/WpsDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/settings/wifi/WpsDialog;->mState:Z

    return p1
.end method

.method private clearThread()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WpsDialog;->mState:Z

    .line 321
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 323
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;

    .line 324
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsDialog;->clearThread()V

    .line 419
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->stopWps(Landroid/net/wifi/WifiManager;)V

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WpsDialog;->mCancel:Z

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->finish()V

    .line 422
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WpsDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 90
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WpsDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 92
    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v4, Lcom/android/settings/wifi/WpsDialog$WifiServiceHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/wifi/WpsDialog$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$1;)V

    invoke-virtual {v3, p0, v4}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 94
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 95
    .local v2, newBundle:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 96
    .local v0, dialogType:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 97
    const-string v3, "WpsDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialogType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    const-string v3, "config"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WpsInfo;

    iput-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsInfo:Landroid/net/wifi/WpsInfo;

    .line 103
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WPS_SUCCESS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mIntentFilter:Landroid/content/IntentFilter;

    .line 104
    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WPS_OVERLAP"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.ERROR"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    if-eqz v0, :cond_3

    sget-object v3, Lcom/android/settings/wifi/WpsDialog;->PBC_DIALOG_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsInfo:Landroid/net/wifi/WpsInfo;

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsInfo:Landroid/net/wifi/WpsInfo;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;)V

    .line 110
    const-string v3, "WpsDialog"

    const-string v4, "setWpsPbcMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WpsDialog;->showDialog(I)V

    .line 113
    iput v6, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogType:I

    .line 124
    :cond_2
    :goto_0
    return-void

    .line 114
    :cond_3
    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/settings/wifi/WpsDialog;->PIN_DIALOG_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    const-string v3, "bssid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mBssid:Ljava/lang/String;

    .line 116
    const-string v3, "WpsDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pin mode bssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WpsDialog;->mBssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WpsDialog;->showDialog(I)V

    .line 119
    iput v7, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogType:I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v3, 0x7f0c05c7

    const v6, 0x7f0c05c4

    const/4 v1, 0x0

    const v5, 0x7f0c001f

    const/4 v4, 0x1

    .line 157
    if-nez p1, :cond_2

    .line 158
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400ab

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    .line 159
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 161
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 164
    const v1, 0x7f0c05c6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 166
    new-instance v1, Lcom/android/settings/wifi/WpsDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WpsDialog$2;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    invoke-virtual {v0, v5, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 175
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 176
    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 180
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Lcom/android/settings/wifi/WpsDialog$Count;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WpsDialog$Count;-><init>(Lcom/android/settings/wifi/WpsDialog;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;

    .line 182
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 184
    :cond_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 301
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_1
    :goto_0
    return-object v1

    .line 185
    :cond_2
    if-ne p1, v4, :cond_4

    .line 186
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400ac

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    .line 187
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f080230

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mPinNumber:Landroid/widget/TextView;

    .line 189
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .restart local v0       #dialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 191
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 192
    new-instance v1, Lcom/android/settings/wifi/WpsDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WpsDialog$3;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    invoke-virtual {v0, v5, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 201
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 203
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 204
    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 205
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_3

    .line 206
    new-instance v1, Lcom/android/settings/wifi/WpsDialog$Count;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WpsDialog$Count;-><init>(Lcom/android/settings/wifi/WpsDialog;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;

    .line 207
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 210
    :cond_3
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 211
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 212
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .restart local v0       #dialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 217
    const v1, 0x7f0c05c8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 219
    const v1, 0x7f0c05c9

    new-instance v2, Lcom/android/settings/wifi/WpsDialog$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WpsDialog$4;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 246
    new-instance v1, Lcom/android/settings/wifi/WpsDialog$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WpsDialog$5;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    invoke-virtual {v0, v5, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 253
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 254
    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 258
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 259
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 260
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    .restart local v0       #dialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 262
    const v1, 0x7f0c05d0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 263
    const v1, 0x7f0c05c9

    new-instance v2, Lcom/android/settings/wifi/WpsDialog$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WpsDialog$6;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 290
    new-instance v1, Lcom/android/settings/wifi/WpsDialog$7;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WpsDialog$7;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    invoke-virtual {v0, v5, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 297
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 298
    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 299
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 142
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 136
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsDialog;->clearThread()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->finish()V

    .line 138
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 406
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 407
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 408
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsDialog;->clearThread()V

    .line 410
    iget-boolean v0, p0, Lcom/android/settings/wifi/WpsDialog;->mSuccess:Z

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->stopWps(Landroid/net/wifi/WifiManager;)V

    .line 414
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WpsDialog;->mCancel:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WpsDialog;->mSuccess:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->finish()V

    .line 415
    :cond_2
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 146
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f080230

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mPinNumber:Landroid/widget/TextView;

    .line 148
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mBssid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWpsPinMode(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, pin:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mPinNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c05cb

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const-string v1, "WpsDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare setWpsPbcMode pin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v0           #pin:Ljava/lang/String;
    :cond_0
    const-string v1, "WpsDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WpsDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void
.end method
