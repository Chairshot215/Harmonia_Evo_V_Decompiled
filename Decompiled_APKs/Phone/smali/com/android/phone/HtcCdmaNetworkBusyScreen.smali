.class public Lcom/android/phone/HtcCdmaNetworkBusyScreen;
.super Landroid/app/Activity;
.source "HtcCdmaNetworkBusyScreen.java"


# static fields
.field private static final DBG:Z = false

.field private static final DIALOG_NETWORKBUSY:I = 0x1

.field private static final EVENT_NETWORK_UPDATE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaNetworkBusyScreen"


# instance fields
.field private final TONE_MEDIUM_VOLUME:I

.field private WarningMsg:Ljava/lang/String;

.field private busyType:I

.field private final mBusyStatus:I

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private final mInterceptStatus:I

.field private final mNetworkBusyStatus:I

.field private final mNetworkNormalStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->mNetworkNormalStatus:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->mNetworkBusyStatus:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->mBusyStatus:I

    .line 41
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->mInterceptStatus:I

    .line 43
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->TONE_MEDIUM_VOLUME:I

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->busyType:I

    .line 66
    iput-object v1, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 88
    iput-object v1, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->WarningMsg:Ljava/lang/String;

    return-void
.end method

.method private initDialog(I)V
    .locals 2
    .parameter "busyType"

    .prologue
    const/4 v1, 0x1

    .line 92
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->removeDialog(I)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->showDialog(I)V

    .line 107
    :goto_1
    return-void

    .line 94
    :pswitch_0
    const v0, 0x7f0e047c

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->WarningMsg:Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_1
    const v0, 0x7f0e047d

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->WarningMsg:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->WarningMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "busyType"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->busyType:I

    .line 57
    iget v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->busyType:I

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->initDialog(I)V

    .line 58
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 71
    packed-switch p1, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 73
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e00da

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->WarningMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0116

    new-instance v2, Lcom/android/phone/HtcCdmaNetworkBusyScreen$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCdmaNetworkBusyScreen$1;-><init>(Lcom/android/phone/HtcCdmaNetworkBusyScreen;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 83
    iget-object v0, p0, Lcom/android/phone/HtcCdmaNetworkBusyScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 64
    return-void
.end method
