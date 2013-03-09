.class public Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;
.super Landroid/app/DialogFragment;
.source "AdvancedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/AdvancedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRestrictFragment"
.end annotation


# static fields
.field private static mOkPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;->mOkPressed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    sput-boolean p0, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;->mOkPressed:Z

    return p0
.end method

.method public static show(Lcom/htc/usage/AdvancedSettingsFragment;)V
    .locals 3
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    sput-boolean v2, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;->mOkPressed:Z

    .line 154
    new-instance v0, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;

    invoke-direct {v0}, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;-><init>()V

    .line 155
    .local v0, dialog:Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;
    invoke-virtual {v0, p0, v2}, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 156
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 163
    .local v1, context:Landroid/content/Context;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f050038

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 165
    invoke-virtual {p0}, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f050039

    invoke-static {v2, v3}, Lcom/htc/usage/Utils;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 167
    const v2, 0x104000a

    new-instance v3, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment$1;

    invoke-direct {v3, p0}, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment$1;-><init>(Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 174
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 181
    const-string v0, "AdvancedSettings"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-boolean v0, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;->mOkPressed:Z

    if-nez v0, :cond_0

    .line 183
    invoke-static {}, Lcom/htc/usage/AdvancedSettingsFragment;->access$200()Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 185
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 186
    return-void
.end method
