.class public final Lcom/google/android/gm/preference/AccountPreferenceFragment;
.super Lcom/google/android/gm/preference/GmailPreferenceFragment;
.source "AccountPreferenceFragment.java"

# interfaces
.implements Lcom/google/android/gm/preference/IntegerPickerPreference$Callbacks;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mGmail:Lcom/google/android/gm/provider/Gmail;

.field private mPersistence:Lcom/google/android/gm/persistence/Persistence;

.field private mSettings:Lcom/google/android/gm/provider/Gmail$Settings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;-><init>()V

    return-void
.end method

.method private migrateNotificationSettings(Z)V
    .locals 7
    .parameter "usePriorityInbox"

    .prologue
    .line 160
    if-eqz p1, :cond_0

    const-string v4, "^i"

    .line 161
    .local v4, previousInbox:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const-string v2, "^iim"

    .line 163
    .local v2, newInbox:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v3

    .line 164
    .local v3, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 165
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v5, v4, v6}, Lcom/google/android/gm/persistence/Persistence;->getNotificationLabelInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 169
    .local v1, inboxNotificationSetting:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v3, v0, v5, v4}, Lcom/google/android/gm/persistence/Persistence;->clearNotificationLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-nez v1, :cond_2

    .line 174
    iget-object v5, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v3, v0, v5, v2}, Lcom/google/android/gm/persistence/Persistence;->clearNotificationLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_2
    return-void

    .line 160
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #inboxNotificationSetting:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #newInbox:Ljava/lang/String;
    .end local v3           #persistence:Lcom/google/android/gm/persistence/Persistence;
    .end local v4           #previousInbox:Ljava/lang/String;
    :cond_0
    const-string v4, "^iim"

    goto :goto_0

    .line 161
    .restart local v4       #previousInbox:Ljava/lang/String;
    :cond_1
    const-string v2, "^i"

    goto :goto_1

    .line 176
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #inboxNotificationSetting:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2       #newInbox:Ljava/lang/String;
    .restart local v3       #persistence:Lcom/google/android/gm/persistence/Persistence;
    :cond_2
    iget-object v5, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v3, v0, v5, v2, v1}, Lcom/google/android/gm/persistence/Persistence;->addNotificationLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_2
.end method

.method private setNotificationSettingState(Landroid/app/Activity;Lcom/google/android/gm/persistence/Persistence;)V
    .locals 6
    .parameter "activity"
    .parameter "persistence"

    .prologue
    .line 258
    const v4, 0x7f0c00ad

    invoke-virtual {p0, v4}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, notificationSettingSummary:Ljava/lang/String;
    const-string v4, "enable-notifications"

    iget-object v5, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {p2, p1, v5}, Lcom/google/android/gm/persistence/Persistence;->getEnableNotifications(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializeCheckBoxAndSummary(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    .line 262
    const-string v4, "inbox-settings"

    invoke-virtual {p0, v4}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 263
    .local v3, pref:Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 265
    iget-object v4, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, inboxLabel:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-static {p1, v4, v0}, Lcom/google/android/gm/Utils;->getLabelNotificationSummary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, inboxSummary:Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    .end local v0           #inboxLabel:Ljava/lang/String;
    .end local v1           #inboxSummary:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setPreferenceChangeListener(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 276
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 279
    :cond_0
    return-void
.end method

.method private updatePreferenceList()V
    .locals 3

    .prologue
    .line 87
    const-string v1, "number-picker"

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/preference/IntegerPickerPreference;

    .line 89
    .local v0, numberPicker:Lcom/google/android/gm/preference/IntegerPickerPreference;
    iget-object v1, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$Settings;->getConversationAgeDays()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gm/preference/IntegerPickerPreference;->bind(Lcom/google/android/gm/preference/IntegerPickerPreference$Callbacks;I)V

    .line 90
    return-void
.end method

.method private useMultiPaneUI()Z
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 287
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 288
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 289
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    .line 291
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/Utils;->useTabletUI(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0
.end method

.method private validateSyncSetForInboxSetting(Landroid/preference/Preference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 186
    .local v0, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, inboxLabel:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v1

    .line 189
    .local v1, gm:Lcom/google/android/gm/provider/Gmail;
    iget-object v6, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gm/provider/Gmail;->getSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v5

    .line 190
    .local v5, settings:Lcom/google/android/gm/provider/Gmail$Settings;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 191
    .local v4, labelsPartial:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsPartial()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 192
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 193
    .local v3, labelsIncluded:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsIncluded()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 198
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v5, v4}, Lcom/google/android/gm/provider/Gmail$Settings;->setLabelsPartial(Ljava/util/Collection;)V

    .line 201
    iget-object v6, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Lcom/google/android/gm/provider/Gmail;->setSettings(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    .line 53
    invoke-direct {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->useMultiPaneUI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 61
    iget-object v1, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mGmail:Lcom/google/android/gm/provider/Gmail;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/provider/Gmail;->getSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    .line 64
    const/high16 v1, 0x7f07

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->addPreferencesFromResource(I)V

    .line 66
    invoke-direct {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->updatePreferenceList()V

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->onDestroy()V

    .line 297
    return-void
.end method

.method public onNumberChanged(I)V
    .locals 3
    .parameter "conversationAgeDays"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail$Settings;->setConversationAgeDays(J)V

    .line 312
    invoke-direct {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->updatePreferenceList()V

    .line 313
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 301
    invoke-super {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->onPause()V

    .line 303
    iget-object v0, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v1, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail;->setSettings(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    .line 304
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 71
    const/4 v2, 0x1

    .line 72
    .local v2, result:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, key:Ljava/lang/String;
    const-string v4, "signature"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, signature:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    iget-object v5, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v3}, Lcom/google/android/gm/persistence/Persistence;->setSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v3           #signature:Ljava/lang/String;
    :goto_0
    return v2

    .line 79
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 95
    if-nez v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    const-string v3, "enable-notifications"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    const-string v0, "enable-notifications"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 102
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 103
    iget-object v2, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gm/persistence/Persistence;->setEnableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 104
    if-nez v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gm/preference/PreferenceUtils;->validateNotificationsForAccount(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v0, v1

    .line 153
    goto :goto_0

    .line 108
    :cond_3
    const-string v3, "action-strip-action-reply-all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 109
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v0, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/persistence/Persistence;->setActionStripActionReplyAll(Landroid/content/Context;Z)V

    goto :goto_1

    .line 111
    :cond_4
    const-string v3, "priority-inbox-key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 112
    const-string v0, "priority-inbox-key"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 115
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 116
    iget-object v2, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gm/persistence/Persistence;->setPriorityInboxDefault(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->setNotificationSettingState(Landroid/app/Activity;Lcom/google/android/gm/persistence/Persistence;)V

    .line 120
    invoke-direct {p0, v0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->migrateNotificationSettings(Z)V

    .line 123
    invoke-direct {p0, p2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->validateSyncSetForInboxSetting(Landroid/preference/Preference;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gm/preference/PreferenceUtils;->validateNotificationsForAccount(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_5
    const-string v3, "prefetch-attachments"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 128
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .line 129
    iget-object v0, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gm/persistence/Persistence;->setPrefetchAttachments(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 130
    :cond_6
    const-string v3, "manage-labels"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/google/android/gm/LabelsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v2, "account"

    iget-object v3, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 134
    :cond_7
    const-string v3, "inbox-settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/google/android/gm/LabelsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const-string v3, "account"

    iget-object v4, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v3, "label"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 140
    :cond_8
    const-string v3, "sync_status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    const-string v3, "authorities"

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "gmail-ls"

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/high16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 13

    .prologue
    .line 207
    invoke-super {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->onResume()V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 212
    .local v1, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v6

    .line 214
    .local v6, syncAutomatically:Z
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 216
    .local v3, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    .line 218
    .local v2, backgroundSyncing:Z
    new-instance v0, Landroid/accounts/Account;

    iget-object v9, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    const-string v10, "com.google"

    invoke-direct {v0, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .local v0, account:Landroid/accounts/Account;
    const-string v9, "gmail-ls"

    invoke-static {v0, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 221
    .local v4, gmailSyncing:Z
    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    const v5, 0x7f0c00db

    .line 224
    .local v5, status:I
    :goto_0
    invoke-static {v1}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    const v7, 0x7f0c00d9

    .line 227
    .local v7, syncPreferenceTitle:I
    :goto_1
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v7, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, syncString:Ljava/lang/String;
    const-string v9, "sync_status"

    invoke-virtual {p0, v9, v8}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializePreferenceScreen(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v9, "prefetch-attachments"

    iget-object v10, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    iget-object v11, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v10, v1, v11}, Lcom/google/android/gm/persistence/Persistence;->getPrefetchAttachments(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    .line 233
    const-string v9, "signature"

    iget-object v10, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    iget-object v11, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v10, v1, v11}, Lcom/google/android/gm/persistence/Persistence;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializeEditText(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v9, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    invoke-direct {p0, v1, v9}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->setNotificationSettingState(Landroid/app/Activity;Lcom/google/android/gm/persistence/Persistence;)V

    .line 236
    const-string v9, "priority-inbox-key"

    iget-object v10, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    iget-object v11, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v10, v1, v11}, Lcom/google/android/gm/persistence/Persistence;->getPriorityInboxDefault(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    .line 239
    const-string v9, "signature"

    invoke-direct {p0, v9}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->setPreferenceChangeListener(Ljava/lang/String;)V

    .line 241
    return-void

    .line 221
    .end local v5           #status:I
    .end local v7           #syncPreferenceTitle:I
    .end local v8           #syncString:Ljava/lang/String;
    :cond_0
    const v5, 0x7f0c00dc

    goto :goto_0

    .line 224
    .restart local v5       #status:I
    :cond_1
    const v7, 0x7f0c00d8

    goto :goto_1
.end method
