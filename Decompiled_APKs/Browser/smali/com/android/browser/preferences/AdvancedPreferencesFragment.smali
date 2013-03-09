.class public Lcom/android/browser/preferences/AdvancedPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "AdvancedPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "enumName"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 140
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f080060

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 141
    .local v4, visualNames:[Ljava/lang/CharSequence;
    const v5, 0x7f080061

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 144
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v5, v4

    array-length v6, v0

    if-eq v5, v6, :cond_0

    .line 145
    const-string v5, ""

    .line 155
    :goto_0
    return-object v5

    .line 148
    :cond_0
    array-length v2, v0

    .line 149
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 150
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    aget-object v5, v4, v1

    goto :goto_0

    .line 149
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    :cond_2
    const-string v5, ""

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->addPreferencesFromResource(I)V

    .line 48
    const-string v2, "website_settings"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 50
    .local v1, websiteSettings:Landroid/preference/PreferenceScreen;
    const-class v2, Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 52
    const-string v2, "default_zoom"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 53
    .local v0, e:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "default_zoom"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    const-string v2, "default_text_encoding"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    const-string v2, "reset_default_preferences"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    const-string v2, "search_engine"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    check-cast v0, Landroid/preference/ListPreference;

    .end local v0           #e:Landroid/preference/Preference;
    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->updateListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 68
    const-string v2, "plugin_state"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 69
    .restart local v0       #e:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    check-cast v0, Landroid/preference/ListPreference;

    .end local v0           #e:Landroid/preference/Preference;
    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->updateListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 71
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 111
    const-string v3, "PageContentPreferencesFragment"

    const-string v4, "onPreferenceChange called from detached fragment!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local p2
    :cond_0
    :goto_0
    return v2

    .line 115
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default_zoom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 117
    goto :goto_0

    .line 118
    .restart local p2
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default_text_encoding"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 120
    goto :goto_0

    .line 121
    .restart local p2
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "reset_default_preferences"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v1, p2

    .line 122
    check-cast v1, Ljava/lang/Boolean;

    .line 123
    .local v1, value:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 124
    new-instance v2, Landroid/content/Intent;

    const-string v4, "--restart--"

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/browser/BrowserActivity;

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 126
    goto :goto_0

    .line 128
    .end local v1           #value:Ljava/lang/Boolean;
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "plugin_state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "search_engine"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    move-object v0, p1

    .line 130
    check-cast v0, Landroid/preference/ListPreference;

    .line 131
    .local v0, lp:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->updateListPreferenceSummary(Landroid/preference/ListPreference;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 85
    const-string v1, "website_settings"

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 87
    .local v0, websiteSettings:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 88
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v1

    new-instance v2, Lcom/android/browser/preferences/AdvancedPreferencesFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment$1;-><init>(Lcom/android/browser/preferences/AdvancedPreferencesFragment;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 96
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v1

    new-instance v2, Lcom/android/browser/preferences/AdvancedPreferencesFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment$2;-><init>(Lcom/android/browser/preferences/AdvancedPreferencesFragment;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 104
    return-void
.end method

.method updateListPreferenceSummary(Landroid/preference/ListPreference;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method
