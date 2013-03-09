.class public Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;
.super Lcom/android/phone/cdma/HtcCdmaDialog;
.source "HtcCdmaSignalFadeScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/phone/cdma/HtcCdmaDialog;-><init>()V

    return-void
.end method

.method public static startSignalFadeScreen(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "stringID"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    const-class v1, Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    const-string v1, "SIGNAL_FADE_ERROR_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fail to create SignalFade dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;->startDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public callback_createDialog(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "dialogType"
    .parameter "requestedIntent"

    .prologue
    .line 26
    const/4 v1, 0x0

    .line 27
    .local v1, dlg:Landroid/app/Dialog;
    const/4 v0, 0x0

    .line 29
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    packed-switch p2, :pswitch_data_0

    .line 53
    :cond_0
    :goto_0
    return-object v1

    .line 32
    :pswitch_0
    const-string v3, "SIGNAL_FADE_ERROR_ID"

    const/4 v4, -0x1

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 34
    .local v2, mFadeErrorId:I
    if-ltz v2, :cond_0

    .line 35
    const v3, 0x1080027

    invoke-virtual {p0, v3}, Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;->createAlert(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v2}, Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0116

    new-instance v5, Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen$1;

    invoke-direct {v5, p0}, Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen$1;-><init>(Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 47
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;->genericCancelHandler()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public callback_updateDialogType(Landroid/content/Intent;)I
    .locals 1
    .parameter "intent"

    .prologue
    .line 22
    const/4 v0, 0x2

    return v0
.end method

.method public callback_updateLogString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "CdmaSignalFadeDlg"

    return-object v0
.end method
