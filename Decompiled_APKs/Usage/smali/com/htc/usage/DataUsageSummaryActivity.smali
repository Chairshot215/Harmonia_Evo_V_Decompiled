.class public Lcom/htc/usage/DataUsageSummaryActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "DataUsageSummaryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    if-nez p1, :cond_0

    .line 14
    new-instance v0, Lcom/htc/usage/DataUsageSummary;

    invoke-direct {v0}, Lcom/htc/usage/DataUsageSummary;-><init>()V

    .line 15
    .local v0, usageSummary:Lcom/htc/usage/DataUsageSummary;
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummaryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 17
    .end local v0           #usageSummary:Lcom/htc/usage/DataUsageSummary;
    :cond_0
    return-void
.end method
