.class public Lcom/android/browser/preferences/BandwidthPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "BandwidthPreferencesFragment.java"


# static fields
.field static final TAG:Ljava/lang/String; = "BandwidthPreferencesFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/BandwidthPreferencesFragment;->addPreferencesFromResource(I)V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 41
    invoke-virtual {p0}, Lcom/android/browser/preferences/BandwidthPreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preload_when"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/browser/preferences/BandwidthPreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preload_when"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 46
    .local v0, preload:Landroid/preference/ListPreference;
    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getDefaultPreloadSetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 50
    .end local v0           #preload:Landroid/preference/ListPreference;
    :cond_0
    return-void
.end method
