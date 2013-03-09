.class public final Lcom/google/android/gm/preference/GeneralPrefsFragment;
.super Lcom/google/android/gm/preference/GmailPreferenceFragment;
.source "GeneralPrefsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mClearDisplayImagesDialog:Landroid/app/AlertDialog;

.field private mClearSearchHistoryDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;-><init>()V

    return-void
.end method

.method private clearDisplayImages()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0037

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mClearDisplayImagesDialog:Landroid/app/AlertDialog;

    .line 149
    return-void
.end method

.method private clearSearchHistory()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0037

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mClearSearchHistoryDialog:Landroid/app/AlertDialog;

    .line 159
    return-void
.end method

.method private initializeConfirmActions(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;)V
    .locals 3
    .parameter "persistence"
    .parameter "context"

    .prologue
    .line 248
    invoke-virtual {p1, p2}, Lcom/google/android/gm/persistence/Persistence;->getConfirmActions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 250
    .local v0, confirmActions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "confirm-actions-delete"

    const-string v2, "delete"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    .line 251
    const-string v1, "confirm-actions-archive"

    const-string v2, "archive"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    .line 252
    const-string v1, "confirm-actions-send"

    const-string v2, "send"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    .line 253
    return-void
.end method

.method private varargs listenForPreferenceChange([Ljava/lang/String;)V
    .locals 5
    .parameter "keys"

    .prologue
    .line 238
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 239
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 240
    .local v4, p:Landroid/preference/Preference;
    if-eqz v4, :cond_0

    .line 241
    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #p:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private updateConfirmActions(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 257
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v3

    .line 258
    .local v3, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-virtual {v3, v0}, Lcom/google/android/gm/persistence/Persistence;->getConfirmActions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 260
    .local v1, currentConfirmActions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, hasAction:Z
    const-string v4, "none"

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v2           #hasAction:Z
    :cond_0
    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/google/android/gm/persistence/Persistence;->setConfirmActions(Landroid/content/Context;Ljava/util/Set;)V

    .line 278
    return-void

    .line 271
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 273
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 274
    const-string v4, "none"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 164
    iget-object v4, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mClearSearchHistoryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    if-ne p2, v5, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/GmailApplication;

    .line 168
    .local v0, application:Lcom/google/android/gm/GmailApplication;
    if-nez v0, :cond_2

    .line 170
    .local v3, suggestions:Landroid/provider/SearchRecentSuggestions;
    :goto_0
    if-eqz v3, :cond_0

    .line 173
    new-instance v4, Lcom/google/android/gm/preference/GeneralPrefsFragment$1;

    invoke-direct {v4, p0, v3}, Lcom/google/android/gm/preference/GeneralPrefsFragment$1;-><init>(Lcom/google/android/gm/preference/GeneralPrefsFragment;Landroid/provider/SearchRecentSuggestions;)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/google/android/gm/preference/GeneralPrefsFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0153

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 195
    .end local v0           #application:Lcom/google/android/gm/GmailApplication;
    .end local v3           #suggestions:Landroid/provider/SearchRecentSuggestions;
    :cond_1
    :goto_1
    return-void

    .line 168
    .restart local v0       #application:Lcom/google/android/gm/GmailApplication;
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gm/GmailApplication;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v3

    goto :goto_0

    .line 184
    .end local v0           #application:Lcom/google/android/gm/GmailApplication;
    :cond_3
    iget-object v4, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mClearDisplayImagesDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    if-ne p2, v5, :cond_1

    .line 186
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v2

    .line 187
    .local v2, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 188
    .local v1, context:Landroid/content/Context;
    const-string v4, "display_images"

    const-string v5, ""

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/google/android/gm/persistence/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v4, "display_sender_images_patterns_set"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/google/android/gm/persistence/Persistence;->setStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0154

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "Gmail"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 71
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->addPreferencesFromResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/Utils;->useTabletUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 76
    .local v0, ps:Landroid/preference/PreferenceScreen;
    const-string v1, "snap-headers"

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 77
    const-string v1, "action-strip-action-reply-all"

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 78
    const-string v1, "hide-checkboxes"

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    .end local v0           #ps:Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 87
    const/4 v4, 0x0

    .line 113
    .end local p2
    :goto_0
    return v4

    .line 90
    .restart local p2
    :cond_0
    const/4 v4, 0x1

    .line 91
    .local v4, result:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v3

    .line 93
    .local v3, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, key:Ljava/lang/String;
    const-string v6, "confirm-actions-delete"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 96
    const-string v6, "delete"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-direct {p0, v6, p2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->updateConfirmActions(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 97
    .restart local p2
    :cond_1
    const-string v6, "confirm-actions-archive"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    const-string v6, "archive"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-direct {p0, v6, p2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->updateConfirmActions(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 99
    .restart local p2
    :cond_2
    const-string v6, "confirm-actions-send"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 100
    const-string v6, "send"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-direct {p0, v6, p2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->updateConfirmActions(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 101
    .restart local p2
    :cond_3
    const-string v6, "auto-advance-key"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, mode:Ljava/lang/String;
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gm/persistence/Persistence;->setAutoAdvanceMode(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v2           #mode:Ljava/lang/String;
    :cond_4
    const-string v6, "message-text-key"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, size:Ljava/lang/String;
    invoke-virtual {v3, v0, v5}, Lcom/google/android/gm/persistence/Persistence;->setMessageTextSize(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v5           #size:Ljava/lang/String;
    :cond_5
    const-string v6, "action-strip-action-reply-all"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 108
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v0, v6}, Lcom/google/android/gm/persistence/Persistence;->setActionStripActionReplyAll(Landroid/content/Context;Z)V

    goto :goto_0

    .line 110
    .restart local p2
    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 129
    const/4 v1, 0x1

    .line 131
    .local v1, result:Z
    const-string v2, "clear-search-history"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->clearSearchHistory()V

    goto :goto_0

    .line 133
    :cond_2
    const-string v2, "clear-display-images-whitelist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->clearDisplayImages()V

    goto :goto_0

    .line 136
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 210
    invoke-super {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->onResume()V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 218
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    .line 219
    .local v1, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeConfirmActions(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;)V

    .line 220
    const-string v2, "auto-advance-key"

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/preference/FancySummaryListPreference;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/persistence/Persistence;->getAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/preference/FancySummaryListPreference;->setValue(Ljava/lang/String;)V

    .line 222
    const-string v2, "message-text-key"

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/preference/FancySummaryListPreference;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/persistence/Persistence;->getMessageTextSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/preference/FancySummaryListPreference;->setValue(Ljava/lang/String;)V

    .line 224
    const-string v2, "action-strip-action-reply-all"

    invoke-virtual {v1, v0}, Lcom/google/android/gm/persistence/Persistence;->getActionStripActionReplyAll(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    .line 227
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "auto-advance-key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "message-text-key"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "action-strip-action-reply-all"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "confirm-actions-delete"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "confirm-actions-archive"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "confirm-actions-send"

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->listenForPreferenceChange([Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->onStop()V

    .line 200
    iget-object v0, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mClearSearchHistoryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mClearSearchHistoryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mClearSearchHistoryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mClearDisplayImagesDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mClearDisplayImagesDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mClearDisplayImagesDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 206
    :cond_1
    return-void
.end method
