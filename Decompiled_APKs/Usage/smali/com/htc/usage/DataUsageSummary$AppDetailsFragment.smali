.class public Lcom/htc/usage/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# static fields
.field private static final EXTRA_UIDS:Ljava/lang/String; = "uids"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1637
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/htc/usage/DataUsageSummary;[ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "parent"
    .parameter "uids"
    .parameter "label"

    .prologue
    .line 1641
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1655
    :goto_0
    return-void

    .line 1643
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1644
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "uids"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1646
    new-instance v1, Lcom/htc/usage/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/htc/usage/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1647
    .local v1, fragment:Lcom/htc/usage/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/htc/usage/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1648
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/htc/usage/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1650
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1651
    .local v2, ft:Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1652
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1653
    invoke-virtual {v2, p2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1654
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 1659
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1660
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/DataUsageSummary;

    .line 1661
    .local v0, target:Lcom/htc/usage/DataUsageSummary;
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    #setter for: Lcom/htc/usage/DataUsageSummary;->mAppDetailUids:[I
    invoke-static {v0, v1}, Lcom/htc/usage/DataUsageSummary;->access$4002(Lcom/htc/usage/DataUsageSummary;[I)[I

    .line 1662
    #calls: Lcom/htc/usage/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$200(Lcom/htc/usage/DataUsageSummary;)V

    .line 1663
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/usage/DataUsageSummary;->setMenuVisibility(Z)V

    .line 1664
    const/4 v1, 0x1

    #calls: Lcom/htc/usage/DataUsageSummary;->hideMobileGlobalPreferences(Z)V
    invoke-static {v0, v1}, Lcom/htc/usage/DataUsageSummary;->access$1800(Lcom/htc/usage/DataUsageSummary;Z)V

    .line 1665
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1669
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1670
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/DataUsageSummary;

    .line 1671
    .local v0, target:Lcom/htc/usage/DataUsageSummary;
    const/4 v1, 0x0

    #setter for: Lcom/htc/usage/DataUsageSummary;->mAppDetailUids:[I
    invoke-static {v0, v1}, Lcom/htc/usage/DataUsageSummary;->access$4002(Lcom/htc/usage/DataUsageSummary;[I)[I

    .line 1672
    #calls: Lcom/htc/usage/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$200(Lcom/htc/usage/DataUsageSummary;)V

    .line 1673
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/usage/DataUsageSummary;->setMenuVisibility(Z)V

    .line 1674
    const/4 v1, 0x0

    #calls: Lcom/htc/usage/DataUsageSummary;->hideMobileGlobalPreferences(Z)V
    invoke-static {v0, v1}, Lcom/htc/usage/DataUsageSummary;->access$1800(Lcom/htc/usage/DataUsageSummary;Z)V

    .line 1675
    return-void
.end method
