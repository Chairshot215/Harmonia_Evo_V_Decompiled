.class public Lcom/google/android/gm/preference/GmailPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "GmailPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRingtoneSummary(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "activity"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 98
    .local v0, tone:Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected initializeCheckBox(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 46
    .local v0, preference:Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 49
    :cond_0
    return-void
.end method

.method protected initializeCheckBoxAndSummary(Ljava/lang/String;ZLjava/lang/CharSequence;)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "summary"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 69
    .local v0, preference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 70
    invoke-virtual {v0, p3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method protected initializeEditText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 75
    .local v0, pref:Landroid/preference/EditTextPreference;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method protected initializePreferenceScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "title"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 82
    .local v0, pref:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 36
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 40
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 41
    const v0, 0x7f120008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 42
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method
