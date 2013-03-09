.class public abstract Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragmentBase.java"


# instance fields
.field private mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

.field private mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createController()Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createPreferenceControllerFactory(Landroid/app/Activity;)Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getController()Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    return-object v0
.end method

.method protected getPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "SearchSettings"

    return-object v0
.end method

.method protected abstract getPreferencesResourceId()I
.end method

.method protected handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->handlePreference(Landroid/preference/Preference;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbContext;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    .line 41
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->createController()Lcom/google/android/googlequicksearchbox/preferences/PreferenceControllerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    .line 43
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->getPreferencesResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->addPreferencesFromResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onCreateComplete(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onDestroy()V

    .line 85
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onResume()V

    .line 74
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->onStop()V

    .line 79
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 80
    return-void
.end method
