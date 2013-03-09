.class public Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsFragment;
.super Lcom/google/android/googlequicksearchbox/preferences/SettingsFragmentBase;
.source "SearchableItemsFragment.java"


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
    const v0, 0x7f070004

    return v0
.end method

.method protected handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsFragment;->getController()Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/preferences/PreferenceController;->handlePreference(Landroid/preference/Preference;)V

    .line 35
    return-void
.end method
