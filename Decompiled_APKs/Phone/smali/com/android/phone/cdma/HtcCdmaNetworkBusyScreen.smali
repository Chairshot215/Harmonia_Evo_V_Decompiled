.class public Lcom/android/phone/cdma/HtcCdmaNetworkBusyScreen;
.super Lcom/android/phone/cdma/HtcCdmaDialog;
.source "HtcCdmaNetworkBusyScreen.java"


# static fields
.field private static final TONE_MEDIUM_VOLUME:I = 0x32

.field private static final mBusyStatus:I = 0x2

.field private static final mInterceptStatus:I = 0x4

.field private static final mNetworkBusyStatus:I = 0x1

.field private static final mNetworkNormalStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/phone/cdma/HtcCdmaDialog;-><init>()V

    return-void
.end method

.method public static startNetworkBusyDialog(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "busyType"

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, displayNotify:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-eq v2, v3, :cond_0

    .line 82
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1084

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    const-class v2, Lcom/android/phone/cdma/HtcCdmaNetworkBusyScreen;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    const-string v2, "busyType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/android/phone/cdma/HtcCdmaNetworkBusyScreen;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fail to create NetworkBusy dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/phone/cdma/HtcCdmaNetworkBusyScreen;->startDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    .line 91
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    return v0
.end method


# virtual methods
.method public callback_createDialog(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/Dialog;
    .locals 7
    .parameter "context"
    .parameter "dialogType"
    .parameter "requestedIntent"

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, dlg:Landroid/app/Dialog;
    const/4 v0, 0x0

    .line 37
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    packed-switch p2, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return-object v1

    .line 40
    :pswitch_0
    const-string v4, "busyType"

    const/4 v5, -0x1

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 41
    .local v2, mBusyId:I
    packed-switch v2, :pswitch_data_1

    .line 49
    const/4 v2, -0x1

    .line 53
    :goto_1
    if-ltz v2, :cond_0

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/phone/cdma/HtcCdmaNetworkBusyScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, mBusyMsg:Ljava/lang/String;
    const v4, 0x1080027

    invoke-virtual {p0, v4}, Lcom/android/phone/cdma/HtcCdmaNetworkBusyScreen;->createAlert(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 57
    const v4, 0x7f0e00da

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e0116

    new-instance v6, Lcom/android/phone/cdma/HtcCdmaNetworkBusyScreen$1;

    invoke-direct {v6, p0}, Lcom/android/phone/cdma/HtcCdmaNetworkBusyScreen$1;-><init>(Lcom/android/phone/cdma/HtcCdmaNetworkBusyScreen;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 67
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/cdma/HtcCdmaNetworkBusyScreen;->genericCancelHandler()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 43
    .end local v3           #mBusyMsg:Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0e047c

    .line 44
    goto :goto_1

    .line 46
    :pswitch_2
    const v2, 0x7f0e047d

    .line 47
    goto :goto_1

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 41
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public callback_updateDialogType(Landroid/content/Intent;)I
    .locals 1
    .parameter "intent"

    .prologue
    .line 30
    const/4 v0, 0x3

    return v0
.end method

.method public callback_updateLogString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "CdmaNetBusyDlg"

    return-object v0
.end method
