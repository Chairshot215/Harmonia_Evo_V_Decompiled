.class public Lcom/htc/android/psclient/WarningMsg;
.super Landroid/app/Activity;
.source "WarningMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WarningMsg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const-string v1, "WarningMsg"

    const-string v2, ">onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8a

    if-ne v1, v2, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/htc/android/psclient/WarningMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, mWarningMessage:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070013

    new-instance v3, Lcom/htc/android/psclient/WarningMsg$1;

    invoke-direct {v3, p0}, Lcom/htc/android/psclient/WarningMsg$1;-><init>(Lcom/htc/android/psclient/WarningMsg;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 32
    return-void

    .line 21
    .end local v0           #mWarningMessage:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/psclient/WarningMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mWarningMessage:Ljava/lang/String;
    goto :goto_0
.end method
