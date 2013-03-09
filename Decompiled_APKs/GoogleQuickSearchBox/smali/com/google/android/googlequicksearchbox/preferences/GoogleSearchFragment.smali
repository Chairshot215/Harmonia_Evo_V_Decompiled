.class public Lcom/google/android/googlequicksearchbox/preferences/GoogleSearchFragment;
.super Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;
.source "GoogleSearchFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPreferencesResourceId()I
    .locals 1

    .prologue
    .line 29
    const/high16 v0, 0x7f07

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleSearchFragment;->getController()Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/GoogleSearchFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->setScreen(Landroid/preference/PreferenceScreen;)V

    .line 36
    return-void
.end method
