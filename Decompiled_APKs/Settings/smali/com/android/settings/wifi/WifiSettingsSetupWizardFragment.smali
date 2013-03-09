.class public Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;
.super Lcom/android/settings/wifi/WifiSettings;
.source "WifiSettingsSetupWizardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiSettingsSetupWizard"


# instance fields
.field mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

.field mPrefCaterory:Lcom/htc/preference/HtcPreferenceCategory;

.field mPrefTapNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 112
    return-void
.end method


# virtual methods
.method protected constructAccessPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mType:I

    .line 109
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    new-instance v0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    const v1, 0x7f0c0307

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->setTitle(I)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->setPersistent(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->setSelectable(Z)V

    .line 71
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    const v1, 0x7f0c0917

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setPersistent(Z)V

    .line 75
    new-instance v0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    const-string v1, "add_network"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->setKey(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    const v1, 0x7f0c0916

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->setTitle(I)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->setPersistent(Z)V

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 102
    const-string v0, "WifiSettingsSetupWizard"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    const-string v0, "WifiSettingsSetupWizard"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const v0, 0x7f0400a8

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 92
    const-string v0, "add_network"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->onAddNetworkPressed()V

    .line 94
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0
.end method

.method protected updateAccessPoints()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 87
    return-void
.end method
