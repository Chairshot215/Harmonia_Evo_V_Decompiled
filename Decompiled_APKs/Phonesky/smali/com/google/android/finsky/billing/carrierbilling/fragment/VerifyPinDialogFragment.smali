.class public Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "VerifyPinDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 20
    return-void
.end method

.method public static newInstance()Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;-><init>()V

    .line 28
    .local v0, dialog:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setCancelable(Z)V

    .line 29
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;->onVerifyCancel()V

    .line 55
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 34
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 39
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 40
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 43
    return-object v0
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;

    .line 48
    return-void
.end method
