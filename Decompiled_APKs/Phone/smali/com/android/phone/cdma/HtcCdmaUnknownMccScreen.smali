.class public Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;
.super Lcom/android/phone/cdma/HtcCdmaDialog;
.source "HtcCdmaUnknownMccScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/phone/cdma/HtcCdmaDialog;-><init>()V

    return-void
.end method

.method public static startUnknownMccScreen(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    const-class v1, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fail to create UnknownMcc dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;->startDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public callback_createDialog(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/Dialog;
    .locals 5
    .parameter "context"
    .parameter "dialogType"
    .parameter "requestedIntent"

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, dlg:Landroid/app/Dialog;
    const/4 v0, 0x0

    .line 30
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    packed-switch p2, :pswitch_data_0

    .line 54
    :goto_0
    return-object v1

    .line 33
    :pswitch_0
    const v2, 0x1080027

    invoke-virtual {p0, v2}, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;->createAlert(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 34
    const v2, 0x7f0e0112

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0113

    invoke-virtual {p0, v3}, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0140

    new-instance v4, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen$1;

    invoke-direct {v4, p0}, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen$1;-><init>(Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 48
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;->genericCancelHandler()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public callback_updateDialogType(Landroid/content/Intent;)I
    .locals 1
    .parameter "intent"

    .prologue
    .line 23
    const/4 v0, 0x5

    return v0
.end method

.method public callback_updateLogString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "CdmaUnknownMccDlg"

    return-object v0
.end method
