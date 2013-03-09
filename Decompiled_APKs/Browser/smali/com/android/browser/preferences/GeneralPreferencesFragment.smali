.class public Lcom/android/browser/preferences/GeneralPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final BLANK:Ljava/lang/String; = "blank"

.field static final BLANK_URL:Ljava/lang/String; = "about:blank"

.field static final CURRENT:Ljava/lang/String; = "current"

.field static final DEFAULT:Ljava/lang/String; = "default"

.field static final MOST_VISITED:Ljava/lang/String; = "most_visited"

.field static final OTHER:Ljava/lang/String; = "other"

.field static final PREF_HOMEPAGE_PICKER:Ljava/lang/String; = "homepage_picker"

.field static final TAG:Ljava/lang/String; = "PersonalPreferencesFragment"


# instance fields
.field mChoices:[Ljava/lang/String;

.field mCurrentPage:Ljava/lang/String;

.field mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method getHomepageLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mChoices:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 199
    :goto_1
    return-object v1

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getHomepageSummary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    .line 183
    .local v1, settings:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->useMostVisitedHomepage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    const-string v2, "most_visited"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :cond_1
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, homepage:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "about:blank"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    :cond_2
    const-string v2, "blank"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getHomepageValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    .line 163
    .local v2, settings:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, homepage:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "about:blank"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    :cond_0
    const-string v3, "blank"

    .line 178
    :goto_0
    return-object v3

    .line 167
    :cond_1
    const-string v3, "content://com.android.browser.home/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    const-string v3, "most_visited"

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, defaultHomepage:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    const-string v3, "default"

    goto :goto_0

    .line 175
    :cond_3
    iget-object v3, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mCurrentPage:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    const-string v3, "current"

    goto :goto_0

    .line 178
    :cond_4
    const-string v3, "other"

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mChoices:[Ljava/lang/String;

    .line 67
    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mValues:[Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "currentPage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mCurrentPage:Ljava/lang/String;

    .line 72
    const v2, 0x7f060006

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->addPreferencesFromResource(I)V

    .line 74
    const-string v2, "homepage_picker"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 75
    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 86
    const-string v2, "PageContentPreferencesFragment"

    const-string v3, "onPreferenceChange called from detached fragment!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local p1
    :goto_0
    return v1

    .line 90
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "homepage_picker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 91
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 92
    .local v0, settings:Lcom/android/browser/BrowserSettings;
    const-string v2, "current"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment;->mCurrentPage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 95
    :cond_1
    const-string v2, "blank"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    const-string v2, "about:blank"

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 98
    :cond_2
    const-string v2, "default"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 102
    :cond_3
    const-string v2, "most_visited"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    const-string v2, "content://com.android.browser.home/"

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 105
    :cond_4
    const-string v2, "other"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->promptForHomepage(Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 109
    .restart local p1
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v0           #settings:Lcom/android/browser/BrowserSettings;
    .restart local p1
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 206
    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->refreshUi()V

    .line 207
    return-void
.end method

.method promptForHomepage(Landroid/preference/ListPreference;)V
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v4, 0x1

    .line 118
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    .line 119
    .local v2, settings:Lcom/android/browser/BrowserSettings;
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 120
    .local v1, editText:Landroid/widget/EditText;
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 122
    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 124
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 125
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v1, v3, v4}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 126
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;

    invoke-direct {v5, p0, v1, v2, p1}, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;-><init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;Landroid/widget/EditText;Lcom/android/browser/BrowserSettings;Landroid/preference/ListPreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/browser/preferences/GeneralPreferencesFragment$1;

    invoke-direct {v5, p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment$1;-><init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0079

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 146
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/android/browser/preferences/GeneralPreferencesFragment$3;-><init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 159
    return-void
.end method

.method refreshUi()V
    .locals 2

    .prologue
    .line 210
    const-string v1, "autofill_profile"

    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 212
    .local v0, autoFillSettings:Landroid/preference/PreferenceScreen;
    const-string v1, "autofill_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    .line 213
    return-void
.end method
