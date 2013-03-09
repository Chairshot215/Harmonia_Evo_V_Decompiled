.class public Lcom/android/mms/ui/DeclineConfirmationDialog;
.super Landroid/app/Activity;
.source "DeclineConfirmationDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/mms/ui/DeclineConfirmationDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 39
    .local v1, msgUri:Landroid/net/Uri;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x20c01fc

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 41
    const v2, 0x7f0200d1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 42
    const v2, 0x7f0900b1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 43
    const v2, 0x20c015f

    new-instance v3, Lcom/android/mms/ui/DeclineConfirmationDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/DeclineConfirmationDialog$1;-><init>(Lcom/android/mms/ui/DeclineConfirmationDialog;Landroid/net/Uri;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 59
    const v2, 0x20c0164

    new-instance v3, Lcom/android/mms/ui/DeclineConfirmationDialog$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/DeclineConfirmationDialog$2;-><init>(Lcom/android/mms/ui/DeclineConfirmationDialog;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 67
    new-instance v2, Lcom/android/mms/ui/DeclineConfirmationDialog$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/DeclineConfirmationDialog$3;-><init>(Lcom/android/mms/ui/DeclineConfirmationDialog;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 76
    return-void
.end method
