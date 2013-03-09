.class public Lcom/google/android/location/ConfirmAlertActivity;
.super Landroid/app/Activity;
.source "ConfirmAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAgreed:Z

.field private mDialog:Landroid/app/Dialog;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/ConfirmAlertActivity;->mAgreed:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/ConfirmAlertActivity;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 65
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/location/ConfirmAlertActivity;->mAgreed:Z

    .line 66
    invoke-virtual {p0}, Lcom/google/android/location/ConfirmAlertActivity;->finish()V

    .line 67
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/ConfirmAlertActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 43
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/google/android/location/ConfirmAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 44
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/google/android/location/ConfirmAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 45
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/google/android/location/ConfirmAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/google/android/location/ConfirmAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    new-instance v1, Lcom/google/android/location/ConfirmAlertActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/location/ConfirmAlertActivity$1;-><init>(Lcom/google/android/location/ConfirmAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/ConfirmAlertActivity;->mDialog:Landroid/app/Dialog;

    .line 55
    iget-object v1, p0, Lcom/google/android/location/ConfirmAlertActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 61
    invoke-static {}, Lcom/google/android/location/NetworkLocationProvider;->getInstance()Lcom/google/android/location/NetworkLocationProvider;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/ConfirmAlertActivity;->mAgreed:Z

    invoke-virtual {v0, v1}, Lcom/google/android/location/NetworkLocationProvider;->userConfirmedEnable(Z)V

    .line 62
    return-void
.end method
