.class public Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "CarrierBillingErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 26
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;
    .locals 3
    .parameter "message"
    .parameter "errorFatal"

    .prologue
    .line 34
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;-><init>()V

    .line 35
    .local v1, dialog:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->setCancelable(Z)V

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "error_message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v2, "fatal_error"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fatal_error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;->onErrorDismiss(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f070102

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 48
    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;

    .line 54
    return-void
.end method
