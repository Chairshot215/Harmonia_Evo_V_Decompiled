.class public Lcom/google/android/talk/fragments/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;
    }
.end annotation


# static fields
.field private static final KEY_BLOCKED_BUDDIES:Ljava/lang/String; = "pref_gtalk_blocked_buddies_key"

.field private static final KEY_CLEAR_HISTORY:Ljava/lang/String; = "pref_gtalk_clear_history_key"

.field private static final KEY_MANAGE_ACCOUNT:Ljava/lang/String; = "pref_gtalk_manage_account_key"

.field private static final KEY_MOBILE_INDICATOR:Ljava/lang/String; = "gtalk-mobile-indicator"

.field private static final KEY_SHOW_AWAY_ON_IDLE:Ljava/lang/String; = "gtalk-show-away-on-idle"

.field private static final KEY_SHOW_FRIEND_NOTIFICATIONS:Ljava/lang/String; = "gtalk-show-friend-notifications"

.field private static final KEY_TERMS:Ljava/lang/String; = "gtalk-terms-key"

.field private static final KEY_TEXT_GROUP:Ljava/lang/String; = "text_notification_group"

.field private static final KEY_TEXT_NOTIFICATIONS:Ljava/lang/String; = "gtalk-enable-notifications"

.field private static final KEY_TEXT_RINGTONE:Ljava/lang/String; = "gtalk-text-ringtone"

.field private static final KEY_TEXT_VIBRATE_WHEN:Ljava/lang/String; = "gtalk-vibrate-when"

.field private static final KEY_VIDEO_GROUP:Ljava/lang/String; = "video_notification_group"

.field private static final KEY_VIDEO_IMAGE_STABILIZATION:Ljava/lang/String; = "gtalk-video-image-image-stabilization"

.field private static final KEY_VIDEO_NOTIFICATIONS:Ljava/lang/String; = "gtalk-video-enable-notifications"

.field private static final KEY_VIDEO_RINGTONE:Ljava/lang/String; = "gtalk-video-ringtone"

.field private static final KEY_VIDEO_VIBRATE_WHEN:Ljava/lang/String; = "gtalk-video-vibrate-when"

.field private static final VIDEO_IMAGE_STABILIZATION_FACE_TRACKING_INDEX:I = 0x3

.field private static final VIDEO_IMAGE_STABILIZATION_LOW_INDEX:I = 0x1

.field private static final VIDEO_IMAGE_STABILIZATION_MEDIUM_INDEX:I = 0x2

.field private static final VIDEO_IMAGE_STABILIZATION_OFF_INDEX:I


# instance fields
.field private mAccountId:J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 315
    return-void
.end method

.method private adjustImageStabilizationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "settings"
    .parameter "value"

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, summary:I
    const-string v1, "off"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const v0, 0x7f0c008f

    .line 398
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 399
    return-void

    .line 386
    :cond_0
    const-string v1, "low"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    const v0, 0x7f0c0090

    goto :goto_0

    .line 388
    :cond_1
    const-string v1, "medium"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    const v0, 0x7f0c0091

    goto :goto_0

    .line 390
    :cond_2
    const-string v1, "virtual"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    const v0, 0x7f0c0092

    goto :goto_0

    .line 396
    :cond_3
    const v0, 0x7f0c0091

    goto :goto_0
.end method

.method private adjustTextNotificationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "settings"
    .parameter "value"

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, summary:I
    const-string v1, "popup"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    const v0, 0x7f0c0080

    .line 355
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 356
    return-void

    .line 350
    :cond_1
    const-string v1, "statusbar"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    const v0, 0x7f0c0081

    goto :goto_0

    .line 352
    :cond_2
    const-string v1, "off"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const v0, 0x7f0c007f

    goto :goto_0
.end method

.method private adjustVibrateSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "settings"
    .parameter "value"

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, summary:I
    const-string v1, "always"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    const v0, 0x7f0c0083

    .line 378
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 379
    return-void

    .line 373
    :cond_1
    const-string v1, "silent"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    const v0, 0x7f0c0084

    goto :goto_0

    .line 375
    :cond_2
    const-string v1, "never"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    const v0, 0x7f0c0085

    goto :goto_0
.end method

.method private adjustVideoNotificationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "settings"
    .parameter "value"

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, summary:I
    const-string v1, "popup"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    const v0, 0x7f0c0087

    .line 366
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 367
    return-void

    .line 363
    :cond_1
    const-string v1, "statusbar"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    const v0, 0x7f0c0088

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 221
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const-string v2, "gtalk-vibrate-when"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 224
    const-string v2, "gtalk-video-vibrate-when"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 225
    .local v0, preference:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    .end local v0           #preference:Landroid/preference/Preference;
    :cond_0
    const-string v2, "gtalk-enable-notifications"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    const-string v2, "gtalk-video-enable-notifications"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 233
    .restart local v0       #preference:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 237
    :cond_1
    const-string v2, "gtalk-video-image-image-stabilization"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    :cond_2
    return-void
.end method

.method private setInitialValues()V
    .locals 24

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v13

    .line 102
    .local v13, settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    const-string v20, "gtalk-mobile-indicator"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 103
    .local v11, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getShowMobileIndicator(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    const-string v20, "gtalk-enable-notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/talk/DependentListPreference;

    .line 107
    .local v4, dependListPref:Lcom/google/android/talk/DependentListPreference;
    invoke-virtual {v13}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/google/android/talk/DependentListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    const-string v20, "off"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/google/android/talk/DependentListPreference;->setDisabledEntry(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v13}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v13, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustTextNotificationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    .line 111
    const-string v20, "gtalk-video-enable-notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    .line 112
    .local v8, listPref:Landroid/preference/ListPreference;
    invoke-virtual {v13}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoNotification()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v13}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoNotification()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v8, v13, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustVideoNotificationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SettingsFragment;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    .line 117
    .local v6, hasVibrator:Z
    const-string v20, "gtalk-vibrate-when"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .end local v8           #listPref:Landroid/preference/ListPreference;
    check-cast v8, Landroid/preference/ListPreference;

    .line 118
    .restart local v8       #listPref:Landroid/preference/ListPreference;
    if-eqz v6, :cond_2

    .line 119
    invoke-virtual {v13}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextVibrateWhen()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v13}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextVibrateWhen()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v8, v13, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustVibrateSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    .line 127
    :goto_1
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->videoChatEnabled()Z

    move-result v17

    .line 128
    .local v17, videoChatEnabled:Z
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->audioChatEnabled()Z

    move-result v2

    .line 129
    .local v2, audioChatEnabled:Z
    if-nez v17, :cond_3

    if-nez v2, :cond_3

    .line 130
    const-string v20, "video_notification_group"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    .line 131
    .local v18, videoChatGroup:Landroid/preference/PreferenceGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    .end local v18           #videoChatGroup:Landroid/preference/PreferenceGroup;
    :goto_2
    const-string v20, "gtalk-show-away-on-idle"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .end local v11           #pref:Landroid/preference/CheckBoxPreference;
    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 193
    .restart local v11       #pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v13}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getShowAwayOnIdle()Z

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 195
    const-string v20, "gtalk-show-friend-notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .end local v11           #pref:Landroid/preference/CheckBoxPreference;
    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 196
    .restart local v11       #pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v13}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getNotifyFriendInvitation()Z

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 198
    const-string v20, "gtalk-text-ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/google/android/talk/ImRingtonePreference;

    .line 200
    .local v12, ringtonePref:Lcom/google/android/talk/ImRingtonePreference;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Lcom/google/android/talk/ImRingtonePreference;->setAccountId(J)V

    .line 201
    const-string v20, "ringtone"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/talk/ImRingtonePreference;->setIMRingtoneType(Ljava/lang/String;)V

    .line 203
    const-string v20, "gtalk-video-ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .end local v12           #ringtonePref:Lcom/google/android/talk/ImRingtonePreference;
    check-cast v12, Lcom/google/android/talk/ImRingtonePreference;

    .line 205
    .restart local v12       #ringtonePref:Lcom/google/android/talk/ImRingtonePreference;
    if-eqz v12, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Lcom/google/android/talk/ImRingtonePreference;->setAccountId(J)V

    .line 207
    const-string v20, "ringtone-video"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/talk/ImRingtonePreference;->setIMRingtoneType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    .end local v2           #audioChatEnabled:Z
    .end local v12           #ringtonePref:Lcom/google/android/talk/ImRingtonePreference;
    .end local v17           #videoChatEnabled:Z
    :cond_2
    const-string v20, "text_notification_group"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    .line 124
    .local v14, textChatCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v14, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 133
    .end local v14           #textChatCategory:Landroid/preference/PreferenceCategory;
    .restart local v2       #audioChatEnabled:Z
    .restart local v17       #videoChatEnabled:Z
    :cond_3
    const-string v20, "gtalk-video-vibrate-when"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .end local v8           #listPref:Landroid/preference/ListPreference;
    check-cast v8, Landroid/preference/ListPreference;

    .line 134
    .restart local v8       #listPref:Landroid/preference/ListPreference;
    if-eqz v6, :cond_5

    .line 135
    invoke-virtual {v13}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoVibrateWhen()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v13}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoVibrateWhen()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v8, v13, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustVibrateSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    .line 143
    :goto_3
    const-string v20, "gtalk-video-image-image-stabilization"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .end local v8           #listPref:Landroid/preference/ListPreference;
    check-cast v8, Landroid/preference/ListPreference;

    .line 147
    .restart local v8       #listPref:Landroid/preference/ListPreference;
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/google/android/talk/videochat/EffectsController;->isEffectAvailable(I)Z

    move-result v7

    .line 149
    .local v7, imageStabilizationAvailable:Z
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Lcom/google/android/talk/videochat/EffectsController;->isEffectAvailable(I)Z

    move-result v19

    .line 152
    .local v19, virtualCameraOperatorAvailable:Z
    if-eqz v17, :cond_4

    if-nez v7, :cond_6

    if-nez v19, :cond_6

    .line 156
    :cond_4
    const-string v20, "video_notification_group"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    .line 158
    .local v16, videoChatCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 138
    .end local v7           #imageStabilizationAvailable:Z
    .end local v16           #videoChatCategory:Landroid/preference/PreferenceCategory;
    .end local v19           #virtualCameraOperatorAvailable:Z
    :cond_5
    const-string v20, "video_notification_group"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    .line 140
    .restart local v16       #videoChatCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 160
    .end local v16           #videoChatCategory:Landroid/preference/PreferenceCategory;
    .restart local v7       #imageStabilizationAvailable:Z
    .restart local v19       #virtualCameraOperatorAvailable:Z
    :cond_6
    if-nez v19, :cond_9

    .line 162
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 163
    .local v5, entries:[Ljava/lang/CharSequence;
    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    .line 167
    .local v15, values:[Ljava/lang/CharSequence;
    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v15, v0, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 183
    .end local v5           #entries:[Ljava/lang/CharSequence;
    .end local v15           #values:[Ljava/lang/CharSequence;
    :cond_7
    :goto_4
    invoke-virtual {v13}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoImageStabilization()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, defaultEffect:Ljava/lang/String;
    if-nez v3, :cond_8

    .line 185
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->getDefaultVideoChatEffect()Ljava/lang/String;

    move-result-object v3

    .line 187
    :cond_8
    invoke-virtual {v8, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v3}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustImageStabilizationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 169
    .end local v3           #defaultEffect:Ljava/lang/String;
    :cond_9
    if-nez v7, :cond_7

    .line 171
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 172
    .restart local v5       #entries:[Ljava/lang/CharSequence;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v9, v0, [Ljava/lang/CharSequence;

    .line 173
    .local v9, newEntries:[Ljava/lang/CharSequence;
    const/16 v20, 0x0

    const/16 v21, 0x0

    aget-object v21, v5, v21

    aput-object v21, v9, v20

    .line 174
    const/16 v20, 0x1

    const/16 v21, 0x3

    aget-object v21, v5, v21

    aput-object v21, v9, v20

    .line 175
    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    .line 178
    .restart local v15       #values:[Ljava/lang/CharSequence;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v10, v0, [Ljava/lang/CharSequence;

    .line 179
    .local v10, newValues:[Ljava/lang/CharSequence;
    const/16 v20, 0x0

    const/16 v21, 0x0

    aget-object v21, v15, v21

    aput-object v21, v10, v20

    .line 180
    const/16 v20, 0x1

    const/16 v21, 0x3

    aget-object v21, v15, v21

    aput-object v21, v10, v20

    .line 181
    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, activity:Landroid/app/Activity;
    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mVibrator:Landroid/os/Vibrator;

    .line 87
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 88
    .local v1, fragmentArguments:Landroid/os/Bundle;
    const-string v2, "accountId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    .line 90
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lcom/google/android/talk/fragments/SettingsFragment;->addPreferencesFromResource(I)V

    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->setInitialValues()V

    .line 93
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, key:Ljava/lang/String;
    instance-of v3, p1, Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 249
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v2

    .line 252
    .local v2, settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    const-string v3, "gtalk-vibrate-when"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setTextVibrateWhen(Ljava/lang/String;)V

    .line 254
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustVibrateSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    .line 271
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 273
    .end local v2           #settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    :cond_1
    return v1

    .line 255
    .restart local v2       #settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .restart local p1
    .restart local p2
    :cond_2
    const-string v3, "gtalk-video-vibrate-when"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setVideoVibrateWhen(Ljava/lang/String;)V

    .line 257
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustVibrateSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .restart local p1
    .restart local p2
    :cond_3
    const-string v3, "gtalk-enable-notifications"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, p2

    .line 259
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setTextNotification(Ljava/lang/String;)V

    .line 260
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustTextNotificationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .restart local p1
    .restart local p2
    :cond_4
    const-string v3, "gtalk-video-enable-notifications"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, p2

    .line 263
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setVideoNotification(Ljava/lang/String;)V

    .line 264
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustVideoNotificationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .restart local p1
    .restart local p2
    :cond_5
    const-string v3, "gtalk-video-image-image-stabilization"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setVideoImageStabilization(Ljava/lang/String;)V

    .line 268
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustImageStabilizationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 278
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, key:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v4

    .line 282
    .local v4, settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    instance-of v7, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_3

    .line 283
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    .line 285
    .local v5, value:Z
    const-string v7, "gtalk-mobile-indicator"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 286
    invoke-virtual {v4, v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setShowMobileIndicator(Z)V

    .line 312
    .end local v5           #value:Z
    :cond_0
    :goto_0
    return v6

    .line 287
    .restart local v5       #value:Z
    :cond_1
    const-string v7, "gtalk-show-away-on-idle"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 288
    invoke-virtual {v4, v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setShowAwayOnIdle(Z)V

    goto :goto_0

    .line 289
    :cond_2
    const-string v7, "gtalk-show-friend-notifications"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 290
    invoke-virtual {v4, v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setNotifyFriendInvitation(Z)V

    goto :goto_0

    .line 294
    .end local v5           #value:Z
    .restart local p2
    :cond_3
    const-string v7, "pref_gtalk_clear_history_key"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 295
    new-instance v0, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;

    invoke-direct {v0}, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;-><init>()V

    .line 296
    .local v0, dialog:Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "dialog"

    invoke-virtual {v0, v7, v8}, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v0           #dialog:Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;
    :cond_4
    const-string v7, "pref_gtalk_manage_account_key"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 299
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.settings.SYNC_SETTINGS"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "authorities"

    new-array v8, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "gmail-ls"

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v2}, Lcom/google/android/talk/fragments/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 304
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const-string v7, "pref_gtalk_blocked_buddies_key"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 305
    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 306
    .local v1, extras:Landroid/os/Bundle;
    const-string v6, "accountId"

    iget-wide v7, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 312
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0

    .line 308
    :cond_7
    const-string v7, "gtalk-terms-key"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 309
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/talk/HelpUtils;->showTermsOfService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 214
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->registerListeners()V

    .line 215
    return-void
.end method
