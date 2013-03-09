.class public Lcom/google/android/finsky/activities/BackgroundDataDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "BackgroundDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 30
    return-void
.end method

.method public static dismissExisting(Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .parameter "fragmentManager"

    .prologue
    .line 47
    const-string v2, "bg_data_dialog"

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 49
    .local v1, previousBgDataDialog:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 50
    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 51
    .local v0, dialogFragment:Landroid/support/v4/app/DialogFragment;
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 53
    .end local v0           #dialogFragment:Landroid/support/v4/app/DialogFragment;
    :cond_0
    return-void
.end method

.method public static show(Landroid/support/v4/app/FragmentManager;Landroid/app/Activity;)V
    .locals 2
    .parameter "fragmentManager"
    .parameter "mainActivity"

    .prologue
    .line 39
    const-string v1, "bg_data_dialog"

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/google/android/finsky/activities/BackgroundDataDialog;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;-><init>()V

    .line 43
    .local v0, dialog:Lcom/google/android/finsky/activities/BackgroundDataDialog;
    const-string v1, "bg_data_dialog"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 93
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->isBackgroundDataEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 97
    check-cast v1, Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;

    .line 98
    .local v1, listener:Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;
    invoke-interface {v1}, Lcom/google/android/finsky/activities/BackgroundDataDialog$BackgroundDataSettingListener;->onBackgroundDataNotEnabled()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 57
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0700fd

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700ff

    new-instance v5, Lcom/google/android/finsky/activities/BackgroundDataDialog$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/BackgroundDataDialog$2;-><init>(Lcom/google/android/finsky/activities/BackgroundDataDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070100

    new-instance v5, Lcom/google/android/finsky/activities/BackgroundDataDialog$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/BackgroundDataDialog$1;-><init>(Lcom/google/android/finsky/activities/BackgroundDataDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 80
    .local v2, result:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04006f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, messageView:Landroid/view/View;
    const v3, 0x7f080125

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    .local v0, messageTextView:Landroid/widget/TextView;
    const v3, 0x7f0700fe

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 85
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 86
    return-object v2
.end method
