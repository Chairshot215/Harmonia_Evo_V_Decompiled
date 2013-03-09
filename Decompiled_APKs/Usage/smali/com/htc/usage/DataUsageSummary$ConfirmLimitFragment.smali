.class public Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# static fields
.field private static final EXTRA_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field private static mOkPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1685
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->mOkPressed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1682
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$4102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 1682
    sput-boolean p0, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->mOkPressed:Z

    return p0
.end method

.method private static buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "res"
    .parameter "networkResId"

    .prologue
    .line 1725
    const v0, 0x7f050037

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/usage/Utils;->getFinalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static show(Lcom/htc/usage/DataUsageSummary;)V
    .locals 10
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 1688
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->isAdded()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1722
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1695
    .local v6, res:Landroid/content/res/Resources;
    #getter for: Lcom/htc/usage/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/usage/DataUsageSummary;->access$1600(Lcom/htc/usage/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 1696
    .local v1, currentTab:Ljava/lang/String;
    const-string v7, "3g"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1697
    const v7, 0x7f050024

    invoke-static {v6, v7}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1698
    .local v5, message:Ljava/lang/CharSequence;
    const-wide v3, 0x140000000L

    .line 1712
    .local v3, limitBytes:J
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1713
    .local v0, args:Landroid/os/Bundle;
    const-string v7, "message"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1714
    const-string v7, "limitBytes"

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1716
    sput-boolean v8, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->mOkPressed:Z

    .line 1718
    new-instance v2, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v2}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 1719
    .local v2, dialog:Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v2, v0}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1720
    invoke-virtual {v2, p0, v8}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1721
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "confirmLimit"

    invoke-virtual {v2, v7, v8}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1699
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #dialog:Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_1
    const-string v7, "4g"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1700
    const v7, 0x7f050023

    invoke-static {v6, v7}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1701
    .restart local v5       #message:Ljava/lang/CharSequence;
    const-wide v3, 0x140000000L

    .restart local v3       #limitBytes:J
    goto :goto_1

    .line 1702
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_2
    const-string v7, "mobile"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1703
    const v7, 0x7f050025

    invoke-static {v6, v7}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1704
    .restart local v5       #message:Ljava/lang/CharSequence;
    const-wide v3, 0x140000000L

    .restart local v3       #limitBytes:J
    goto :goto_1

    .line 1705
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_3
    const-string v7, "wifi"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1706
    const v7, 0x7f050020

    invoke-static {v6, v7}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1707
    .restart local v5       #message:Ljava/lang/CharSequence;
    const-wide v3, 0x140000000L

    .restart local v3       #limitBytes:J
    goto :goto_1

    .line 1709
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown current tab: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 1730
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1732
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1733
    .local v4, message:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1735
    .local v2, limitBytes:J
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1736
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v5, 0x7f050036

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1737
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1739
    const v5, 0x104000a

    new-instance v6, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1749
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1754
    const-string v1, "DataUsageSummary"

    const-string v2, "onDismiss"

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/DataUsageSummary;

    .line 1756
    .local v0, target:Lcom/htc/usage/DataUsageSummary;
    sget-boolean v1, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->mOkPressed:Z

    if-nez v1, :cond_0

    .line 1757
    #getter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/usage/MyPreferenceFragment;->setUsageLimitChecked(Z)V

    .line 1759
    :cond_0
    #calls: Lcom/htc/usage/DataUsageSummary;->updateLimitedMobileNetworkPreference()V
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$4200(Lcom/htc/usage/DataUsageSummary;)V

    .line 1760
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1761
    return-void
.end method
