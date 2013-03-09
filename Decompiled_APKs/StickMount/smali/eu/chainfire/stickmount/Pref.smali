.class public Leu/chainfire/stickmount/Pref;
.super Ljava/lang/Object;
.source "Pref.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Category(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "context"
    .parameter "root"
    .parameter "caption"

    .prologue
    .line 13
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 14
    .local v0, retval:Landroid/preference/PreferenceCategory;
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 16
    return-object v0
.end method

.method public static Check(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;
    .locals 7
    .parameter "context"
    .parameter "category"
    .parameter "caption"
    .parameter "summary"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 32
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Leu/chainfire/stickmount/Pref;->Check(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    return-object v0
.end method

.method public static Check(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "context"
    .parameter "category"
    .parameter "caption"
    .parameter "summary"
    .parameter "key"
    .parameter "defaultValue"
    .parameter "enabled"

    .prologue
    .line 36
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, retval:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v0, p3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v0, p6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 40
    invoke-virtual {v0, p4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, p5}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 43
    return-object v0
.end method

.method public static Edit(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/EditTextPreference;
    .locals 9
    .parameter "context"
    .parameter "category"
    .parameter "caption"
    .parameter "summary"
    .parameter "dialogCaption"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 65
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Leu/chainfire/stickmount/Pref;->Edit(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Integer;)Landroid/preference/EditTextPreference;

    move-result-object v0

    return-object v0
.end method

.method public static Edit(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;)Landroid/preference/EditTextPreference;
    .locals 9
    .parameter "context"
    .parameter "category"
    .parameter "caption"
    .parameter "summary"
    .parameter "dialogCaption"
    .parameter "key"
    .parameter "defaultValue"
    .parameter "type"

    .prologue
    .line 73
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Leu/chainfire/stickmount/Pref;->Edit(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Integer;)Landroid/preference/EditTextPreference;

    move-result-object v0

    return-object v0
.end method

.method public static Edit(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Landroid/preference/EditTextPreference;
    .locals 9
    .parameter "context"
    .parameter "category"
    .parameter "caption"
    .parameter "summary"
    .parameter "dialogCaption"
    .parameter "key"
    .parameter "defaultValue"
    .parameter "enabled"

    .prologue
    .line 69
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Leu/chainfire/stickmount/Pref;->Edit(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Integer;)Landroid/preference/EditTextPreference;

    move-result-object v0

    return-object v0
.end method

.method public static Edit(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Integer;)Landroid/preference/EditTextPreference;
    .locals 3
    .parameter "context"
    .parameter "category"
    .parameter "caption"
    .parameter "summary"
    .parameter "dialogCaption"
    .parameter "key"
    .parameter "defaultValue"
    .parameter "enabled"
    .parameter "type"

    .prologue
    .line 77
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, retval:Landroid/preference/EditTextPreference;
    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0, p3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v0, p7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 81
    invoke-virtual {v0, p5}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p6}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0, p4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 84
    if-eqz p8, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 87
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 88
    return-object v0
.end method

.method public static List(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/preference/ListPreference;
    .locals 10
    .parameter "context"
    .parameter "category"
    .parameter "caption"
    .parameter "summary"
    .parameter "dialogCaption"
    .parameter "key"
    .parameter "defaultValue"
    .parameter "entries"
    .parameter "entryValues"

    .prologue
    .line 47
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Leu/chainfire/stickmount/Pref;->List(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method public static List(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;
    .locals 1
    .parameter "context"
    .parameter "category"
    .parameter "caption"
    .parameter "summary"
    .parameter "dialogCaption"
    .parameter "key"
    .parameter "defaultValue"
    .parameter "entries"
    .parameter "entryValues"
    .parameter "enabled"

    .prologue
    .line 51
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, retval:Landroid/preference/ListPreference;
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v0, p9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 55
    invoke-virtual {v0, p5}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p6}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v0, p4}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0, p7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v0, p8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 61
    return-object v0
.end method

.method public static Preference(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;ZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;
    .locals 1
    .parameter "context"
    .parameter "category"
    .parameter "caption"
    .parameter "summary"
    .parameter "enabled"
    .parameter "onClick"

    .prologue
    .line 20
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, retval:Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {v0, p4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 24
    if-eqz p5, :cond_0

    .line 25
    invoke-virtual {v0, p5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 27
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 28
    return-object v0
.end method
