.class public Lcom/htc/usage/DataUsageSummary$ConfirmRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2069
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/htc/usage/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 2071
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2076
    :goto_0
    return-void

    .line 2073
    :cond_0
    new-instance v0, Lcom/htc/usage/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct {v0}, Lcom/htc/usage/DataUsageSummary$ConfirmRestrictFragment;-><init>()V

    .line 2074
    .local v0, dialog:Lcom/htc/usage/DataUsageSummary$ConfirmRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/htc/usage/DataUsageSummary$ConfirmRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2075
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/DataUsageSummary$ConfirmRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 2080
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$ConfirmRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2082
    .local v1, context:Landroid/content/Context;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2083
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f050038

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2084
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$ConfirmRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f050039

    invoke-static {v2, v3}, Lcom/htc/usage/Utils;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2086
    const v2, 0x104000a

    new-instance v3, Lcom/htc/usage/DataUsageSummary$ConfirmRestrictFragment$1;

    invoke-direct {v3, p0}, Lcom/htc/usage/DataUsageSummary$ConfirmRestrictFragment$1;-><init>(Lcom/htc/usage/DataUsageSummary$ConfirmRestrictFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2094
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2096
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method
