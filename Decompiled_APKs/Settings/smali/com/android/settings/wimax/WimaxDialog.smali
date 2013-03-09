.class public Lcom/android/settings/wimax/WimaxDialog;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "WimaxDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WimaxDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxDialog;->finish()V

    .line 101
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxDialog;->finish()V

    .line 95
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 70
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/wimax/WimaxDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wimax/WimaxDialog$2;-><init>(Lcom/android/settings/wimax/WimaxDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wimax/WimaxDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wimax/WimaxDialog$1;-><init>(Lcom/android/settings/wimax/WimaxDialog;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 82
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    const v1, 0x7f0c0467

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    const v1, 0x7f0c0466

    invoke-virtual {p0, v1}, Lcom/android/settings/wimax/WimaxDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 86
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 87
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 88
    return-void
.end method
