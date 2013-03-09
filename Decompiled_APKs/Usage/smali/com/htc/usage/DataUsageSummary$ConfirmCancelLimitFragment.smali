.class public Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmCancelLimitFragment"
.end annotation


# static fields
.field private static mOkPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1770
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->mOkPressed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1768
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$4302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 1768
    sput-boolean p0, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->mOkPressed:Z

    return p0
.end method

.method public static show(Lcom/htc/usage/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 1773
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1779
    :goto_0
    return-void

    .line 1775
    :cond_0
    sput-boolean v2, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->mOkPressed:Z

    .line 1776
    new-instance v0, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;

    invoke-direct {v0}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;-><init>()V

    .line 1777
    .local v0, dialog:Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;
    invoke-virtual {v0, p0, v2}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1778
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmCancelLimit"

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 1783
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1785
    .local v1, context:Landroid/content/Context;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1786
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f050046

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1787
    const v2, 0x7f050047

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1789
    const v2, 0x104000a

    new-instance v3, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1;

    invoke-direct {v3, p0}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1;-><init>(Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1810
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1815
    const-string v1, "DataUsageSummary"

    const-string v2, "onDismiss"

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/DataUsageSummary;

    .line 1817
    .local v0, target:Lcom/htc/usage/DataUsageSummary;
    sget-boolean v1, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->mOkPressed:Z

    if-nez v1, :cond_0

    .line 1818
    #getter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/usage/MyPreferenceFragment;->setUsageLimitChecked(Z)V

    .line 1820
    :cond_0
    #calls: Lcom/htc/usage/DataUsageSummary;->updateLimitedMobileNetworkPreference()V
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$4200(Lcom/htc/usage/DataUsageSummary;)V

    .line 1821
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1822
    return-void
.end method
