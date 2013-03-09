.class public Lcom/htc/usage/AdvancedSettingsFragment$DeniedRestrictFragment;
.super Landroid/app/DialogFragment;
.source "AdvancedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/AdvancedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeniedRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/htc/usage/AdvancedSettingsFragment;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Lcom/htc/usage/AdvancedSettingsFragment$DeniedRestrictFragment;

    invoke-direct {v0}, Lcom/htc/usage/AdvancedSettingsFragment$DeniedRestrictFragment;-><init>()V

    .line 199
    .local v0, dialog:Lcom/htc/usage/AdvancedSettingsFragment$DeniedRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/htc/usage/AdvancedSettingsFragment$DeniedRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 200
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "deniedRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/AdvancedSettingsFragment$DeniedRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment$DeniedRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 207
    .local v1, context:Landroid/content/Context;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f05002b

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 209
    const v2, 0x7f050030

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 210
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 212
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method
