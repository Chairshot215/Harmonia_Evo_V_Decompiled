.class public Leu/chainfire/supersu/Pref;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;
    .locals 2

    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-virtual {v0, p4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/preference/ListPreference;
    .locals 2

    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    invoke-virtual {v0, p5}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v0, p4}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;
    .locals 2

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;
    .locals 1

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    return-object v0
.end method
