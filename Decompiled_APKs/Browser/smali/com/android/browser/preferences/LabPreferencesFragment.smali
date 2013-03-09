.class public Lcom/android/browser/preferences/LabPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "LabPreferencesFragment.java"


# instance fields
.field private mBrowserSettings:Lcom/android/browser/BrowserSettings;

.field private useInstantPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->mBrowserSettings:Lcom/android/browser/BrowserSettings;

    .line 39
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/LabPreferencesFragment;->addPreferencesFromResource(I)V

    .line 40
    const-string v0, "use_instant_search"

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/LabPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->useInstantPref:Landroid/preference/Preference;

    .line 41
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 46
    iget-object v1, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->useInstantPref:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->useInstantPref:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 51
    iget-object v1, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->mBrowserSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->mBrowserSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, currentName:Ljava/lang/String;
    const-string v1, "google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/browser/preferences/LabPreferencesFragment;->useInstantPref:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 58
    .end local v0           #currentName:Ljava/lang/String;
    :cond_0
    return-void
.end method
