.class public Lcom/htc/WifiRouter/AdvancedSetting;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "AdvancedSetting.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    invoke-virtual {p0}, Lcom/htc/WifiRouter/AdvancedSetting;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0, p1}, Lcom/htc/WifiRouter/AdvancedSetting;->loadHeadersFromResource(ILjava/util/List;)V

    .line 24
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/htc/WifiRouter/AdvancedSetting;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    new-instance v0, Lcom/htc/WifiRouter/AdvancedSettingFragment;

    invoke-direct {v0}, Lcom/htc/WifiRouter/AdvancedSettingFragment;-><init>()V

    .line 35
    .local v0, details:Lcom/htc/WifiRouter/AdvancedSettingFragment;
    invoke-virtual {p0}, Lcom/htc/WifiRouter/AdvancedSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 36
    .local v1, ft:Landroid/app/FragmentTransaction;
    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 37
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 40
    .end local v0           #details:Lcom/htc/WifiRouter/AdvancedSettingFragment;
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method
