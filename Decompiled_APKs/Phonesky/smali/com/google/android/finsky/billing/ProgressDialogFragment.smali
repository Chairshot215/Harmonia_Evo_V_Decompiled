.class public Lcom/google/android/finsky/billing/ProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ProgressDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/google/android/finsky/billing/ProgressDialogFragment;
    .locals 3
    .parameter "messageId"

    .prologue
    .line 20
    new-instance v1, Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/ProgressDialogFragment;-><init>()V

    .line 21
    .local v1, progressDialogFragment:Lcom/google/android/finsky/billing/ProgressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "message_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->setCancelable(Z)V

    .line 30
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message_id"

    const v4, 0x7f0700f8

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 33
    .local v1, messageId:I
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 36
    return-object v0
.end method
