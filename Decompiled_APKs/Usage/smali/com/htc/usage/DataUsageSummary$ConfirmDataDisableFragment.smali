.class public Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataDisableFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2014
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/htc/usage/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 2016
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2021
    :goto_0
    return-void

    .line 2018
    :cond_0
    new-instance v0, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {v0}, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;-><init>()V

    .line 2019
    .local v0, dialog:Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2020
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataDisable"

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f05001b

    .line 2025
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2027
    .local v1, context:Landroid/content/Context;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2028
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2029
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2031
    const v2, 0x104000a

    new-instance v3, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment$1;

    invoke-direct {v3, p0}, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment$1;-><init>(Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2040
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2042
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 2047
    const-string v2, "DataUsageSummary"

    const-string v3, "onDismiss"

    invoke-static {v2, v3}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2049
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2050
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2051
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/htc/usage/DataUsageSummary;

    .line 2052
    .local v1, target:Lcom/htc/usage/DataUsageSummary;
    if-eqz v1, :cond_0

    .line 2053
    #getter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/usage/MyPreferenceFragment;->setEnableMobileDataChecked(Z)V

    .line 2061
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #target:Lcom/htc/usage/DataUsageSummary;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2062
    return-void

    .line 2059
    :cond_1
    const-string v2, "DataUsageSummary"

    const-string v3, "Activity doesn\'t exist, ignore it."

    invoke-static {v2, v3}, Lcom/htc/usage/util/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
