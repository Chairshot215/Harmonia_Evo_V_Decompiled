.class public Lcom/android/phone/cdma/HtcCdmaMIPScreen;
.super Lcom/android/phone/cdma/HtcCdmaDialog;
.source "HtcCdmaMIPScreen.java"


# static fields
.field private static final HotspotErrorIntentExtra:Ljava/lang/String; = "com.android.phone.HtcCdmaMIPScreen.hotspot"

.field private static final MipErrorIntentExtraId:Ljava/lang/String; = "MIP_ERROR_ID"

.field private static final MipErrorIntentExtraMsg:Ljava/lang/String; = "MIP_ERROR_MSG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/phone/cdma/HtcCdmaDialog;-><init>()V

    return-void
.end method

.method public static closeDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/cdma/HtcCdmaMIPScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/phone/cdma/HtcCdmaMIPScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fail to close dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/phone/cdma/HtcCdmaMIPScreen;->startDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static startHotspotNotSupportDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/cdma/HtcCdmaMIPScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    const-string v1, "com.android.phone.HtcCdmaMIPScreen.hotspot"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/phone/cdma/HtcCdmaMIPScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fail to create HotspotNotSupport dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/phone/cdma/HtcCdmaMIPScreen;->startDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static startMipErrorDialog(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "mipError"
    .parameter "causeString"

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/cdma/HtcCdmaMIPScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    const-string v1, "MIP_ERROR_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v1, "MIP_ERROR_MSG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/phone/cdma/HtcCdmaMIPScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fail to create MipError dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/phone/cdma/HtcCdmaMIPScreen;->startDialog(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 115
    return-void
.end method


# virtual methods
.method public callback_createDialog(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/Dialog;
    .locals 12
    .parameter "context"
    .parameter "dialogType"
    .parameter "requestedIntent"

    .prologue
    const v11, 0x1080027

    const/4 v10, 0x1

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, dlg:Landroid/app/Dialog;
    const/4 v0, 0x0

    .line 52
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    packed-switch p2, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 55
    :pswitch_1
    const-string v5, "MIP_ERROR_ID"

    const/4 v6, -0x1

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 56
    .local v3, mMipErrorId:I
    const-string v5, "MIP_ERROR_MSG"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, mMipErrorMsg:Ljava/lang/String;
    if-ltz v3, :cond_0

    if-eqz v4, :cond_0

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0e0117

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/cdma/HtcCdmaMIPScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, mFinalMessage:Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/android/phone/cdma/HtcCdmaMIPScreen;->createAlert(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 62
    const v5, 0x7f0e0115

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0116

    new-instance v7, Lcom/android/phone/cdma/HtcCdmaMIPScreen$1;

    invoke-direct {v7, p0}, Lcom/android/phone/cdma/HtcCdmaMIPScreen$1;-><init>(Lcom/android/phone/cdma/HtcCdmaMIPScreen;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v10}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/cdma/HtcCdmaMIPScreen;->genericCancelHandler()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 81
    .end local v2           #mFinalMessage:Ljava/lang/String;
    .end local v3           #mMipErrorId:I
    .end local v4           #mMipErrorMsg:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0, v11}, Lcom/android/phone/cdma/HtcCdmaMIPScreen;->createAlert(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 82
    const v5, 0x7f0e0087

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0088

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0140

    new-instance v7, Lcom/android/phone/cdma/HtcCdmaMIPScreen$2;

    invoke-direct {v7, p0}, Lcom/android/phone/cdma/HtcCdmaMIPScreen$2;-><init>(Lcom/android/phone/cdma/HtcCdmaMIPScreen;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v10}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/cdma/HtcCdmaMIPScreen;->genericCancelHandler()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public callback_updateDialogType(Landroid/content/Intent;)I
    .locals 6
    .parameter "intent"

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, dialogType:I
    if-eqz p1, :cond_0

    .line 28
    const-string v3, "com.android.phone.HtcCdmaMIPScreen.hotspot"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    const/4 v0, 0x4

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 35
    const-string v3, "MIP_ERROR_ID"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 36
    .local v1, mMipErrorId:I
    const/16 v3, 0x43

    if-eq v1, v3, :cond_2

    const/16 v3, 0x44

    if-ne v1, v3, :cond_0

    .line 37
    :cond_2
    const-string v3, "ril.cdma.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, profileType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/cdma/HtcCdmaMIPScreen;->callback_updateLogString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profileType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public callback_updateLogString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "CdmaMipDlg"

    return-object v0
.end method
