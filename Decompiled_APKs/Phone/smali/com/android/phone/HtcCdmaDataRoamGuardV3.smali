.class public Lcom/android/phone/HtcCdmaDataRoamGuardV3;
.super Landroid/app/Activity;
.source "HtcCdmaDataRoamGuardV3.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaDataRoamGuardV3"


# instance fields
.field private intentFilter:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "htc.android.intent.action.cancel_data_raom_guard"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->intentFilter:Landroid/content/IntentFilter;

    .line 33
    new-instance v0, Lcom/android/phone/HtcCdmaDataRoamGuardV3$1;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaDataRoamGuardV3$1;-><init>(Lcom/android/phone/HtcCdmaDataRoamGuardV3;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaDataRoamGuardV3;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iput-object p0, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0156

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e015c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0161

    new-instance v2, Lcom/android/phone/HtcCdmaDataRoamGuardV3$3;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCdmaDataRoamGuardV3$3;-><init>(Lcom/android/phone/HtcCdmaDataRoamGuardV3;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0162

    new-instance v2, Lcom/android/phone/HtcCdmaDataRoamGuardV3$2;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCdmaDataRoamGuardV3$2;-><init>(Lcom/android/phone/HtcCdmaDataRoamGuardV3;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 93
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 87
    iget-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    return-void
.end method
