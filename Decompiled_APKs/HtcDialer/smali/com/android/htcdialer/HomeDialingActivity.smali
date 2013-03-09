.class public Lcom/android/htcdialer/HomeDialingActivity;
.super Landroid/app/Activity;
.source "HomeDialingActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DIALOG_HOME_DIALING:I = 0x1

.field public static final REQUEST_HOME_DIALING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HomeDialingActivity"


# instance fields
.field private mDialog:Lcom/android/htcdialer/dialog/HomeDialingDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/htcdialer/HomeDialingActivity;->mDialog:Lcom/android/htcdialer/dialog/HomeDialingDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->OnOwnActvityResult(IILandroid/content/Intent;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/HomeDialingActivity;->showDialog(I)V

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htcdialer/HomeDialingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/htcdialer/HomeDialingActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 63
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 70
    move-object v0, p2

    .line 71
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Lcom/android/htcdialer/dialog/HomeDialingDialog;

    invoke-direct {v1, p0, v0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/htcdialer/HomeDialingActivity;->mDialog:Lcom/android/htcdialer/dialog/HomeDialingDialog;

    .line 72
    iget-object v1, p0, Lcom/android/htcdialer/HomeDialingActivity;->mDialog:Lcom/android/htcdialer/dialog/HomeDialingDialog;

    new-instance v2, Lcom/android/htcdialer/HomeDialingActivity$1;

    invoke-direct {v2, p0}, Lcom/android/htcdialer/HomeDialingActivity$1;-><init>(Lcom/android/htcdialer/HomeDialingActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 78
    iget-object v1, p0, Lcom/android/htcdialer/HomeDialingActivity;->mDialog:Lcom/android/htcdialer/dialog/HomeDialingDialog;

    return-object v1
.end method
