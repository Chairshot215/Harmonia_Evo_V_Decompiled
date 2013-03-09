.class public Lcom/android/settings/SoundSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final FALLBACK_EMERGENCY_TONE_VALUE:I = 0x0

.field private static final KEY_BUTTON_ROAM_RINGTONE:Ljava/lang/String; = "button_roaming_ringtone"

.field private static final KEY_CALL_CATEGORY:Ljava/lang/String; = "sound_category_calls"

.field private static final KEY_DTMF_TONE:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field private static final KEY_HAPTIC_FEEDBACK_LIST:Ljava/lang/String; = "haptic_feedback_list"

.field private static final KEY_HTC_CDMA_DTMF_TONE:Ljava/lang/String; = "htc_cdma_dtmf_tone"

.field private static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "lock_sounds"

.field private static final KEY_MUSICFX:Ljava/lang/String; = "musicfx"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_NOTIFICATION_SOUNDS:Ljava/lang/String; = "notification_sound"

.field private static final KEY_NOTIFICATION_SOUNDS_PICKER:Ljava/lang/String; = "notification_sound_picker"

.field private static final KEY_NOTIFICATION_SOUNDS_VIBRATE:Ljava/lang/String; = "notification_sound_vibrate"

.field private static final KEY_RINGTONES:Ljava/lang/String; = "ringtone"

.field private static final KEY_RINGTONESPICKER:Ljava/lang/String; = "ringtone_picker"

.field private static final KEY_RINGTONES_VIBRATE:Ljava/lang/String; = "ringtone_vibrate"

.field private static final KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final KEY_SILENT_LIST:Ljava/lang/String; = "silentlist"

.field private static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final KEY_SOUND_SETTINGS:Ljava/lang/String; = "sound_settings"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final MSG_UPDATE_NOTIFICATION_SUMMARY:I = 0x2

.field private static final MSG_UPDATE_RINGTONE_SUMMARY:I = 0x1

.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String; = null

.field static final RINGER_MODE_OUTDOOR:I = 0x3

.field private static final SOUND_MODE_NORMAL:I = 0x0

.field private static final SOUND_MODE_OUTDOOR:I = 0x3

.field private static final SOUND_MODE_SILENT:I = 0x2

.field private static final SOUND_MODE_VIBRATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundSettings"

.field private static final VALUE_VIBRATE_ALWAYS:Ljava/lang/String; = "always"

.field private static final VALUE_VIBRATE_NEVER:Ljava/lang/String; = "never"

.field private static final VALUE_VIBRATE_ONLY_SILENT:Ljava/lang/String; = "silent"

.field private static final VALUE_VIBRATE_UNLESS_SILENT:Ljava/lang/String; = "notsilent"

.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

.field private mDockMode:Z

.field private mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mHapticUtil:Lcom/android/settings/HapticUtil;

.field private mHapticlist:Lcom/htc/preference/HtcListPreference;

.field private mHasDockModeProjects:Z

.field private mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mModeEntryValues:[Ljava/lang/CharSequence;

.field private mMusicFx:Lcom/htc/preference/HtcPreference;

.field private mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mNotifications:Lcom/htc/preference/HtcPreference;

.field private mNotificationsVibrate:Lcom/htc/preference/HtcPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Lcom/htc/preference/HtcPreference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtoneVibrate:Lcom/htc/preference/HtcPreference;

.field private mSilent:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSilentlist:Lcom/htc/preference/HtcListPreference;

.field private mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

.field private mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sound_category_calls"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 163
    iput-object v2, p0, Lcom/android/settings/SoundSettings;->mRingtoneVibrate:Lcom/htc/preference/HtcPreference;

    .line 164
    iput-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationsVibrate:Lcom/htc/preference/HtcPreference;

    .line 172
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "0"

    aput-object v1, v0, v5

    const-string v1, "3"

    aput-object v1, v0, v6

    :goto_0
    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    .line 188
    iput-object v2, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    .line 189
    iput-object v2, p0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    .line 192
    iput-boolean v3, p0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    .line 193
    iput-boolean v4, p0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    .line 195
    iput-object v2, p0, Lcom/android/settings/SoundSettings;->mHapticUtil:Lcom/android/settings/HapticUtil;

    .line 197
    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v0, Lcom/android/settings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$2;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-void

    .line 172
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "0"

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/SoundSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SoundSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/SoundSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SoundSettings;ILcom/htc/preference/HtcPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SoundSettings;->updateRingtoneName(ILcom/htc/preference/HtcPreference;I)V

    return-void
.end method

.method private getPhoneVibrateSettingValue()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 598
    .local v1, vibeInSilent:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 601
    .local v0, callsVibrateSetting:I
    if-eqz v1, :cond_3

    .line 602
    if-nez v0, :cond_0

    .line 604
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 608
    :cond_0
    if-ne v0, v2, :cond_2

    .line 609
    const-string v2, "always"

    .line 623
    :goto_1
    return-object v2

    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_1
    move v1, v3

    .line 592
    goto :goto_0

    .line 611
    .restart local v0       #callsVibrateSetting:I
    .restart local v1       #vibeInSilent:Z
    :cond_2
    const-string v2, "silent"

    goto :goto_1

    .line 614
    :cond_3
    if-ne v0, v6, :cond_4

    .line 616
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 620
    :cond_4
    if-ne v0, v2, :cond_5

    .line 621
    const-string v2, "notsilent"

    goto :goto_1

    .line 623
    :cond_5
    const-string v2, "never"

    goto :goto_1
.end method

.method private getSoundMode(I)I
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 722
    packed-switch p1, :pswitch_data_0

    .line 733
    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ringer mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_0
    :pswitch_0
    return v0

    .line 727
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 729
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 731
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getSoundModeString(I)Ljava/lang/String;
    .locals 3
    .parameter "mode"

    .prologue
    .line 739
    packed-switch p1, :pswitch_data_0

    .line 750
    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ringer mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 742
    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    .line 744
    :pswitch_1
    const-string v0, "silent"

    goto :goto_0

    .line 746
    :pswitch_2
    const-string v0, "vibrate"

    goto :goto_0

    .line 748
    :pswitch_3
    const-string v0, "outdoor"

    goto :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 831
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 832
    return-void
.end method

.method private setPhoneVibrateSettingValue(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 632
    const-string v2, "notsilent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    const/4 v0, 0x1

    .line 634
    .local v0, callsVibrateSetting:I
    const/4 v1, 0x0

    .line 646
    .local v1, vibeInSilent:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 660
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 663
    return-void

    .line 635
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_0
    const-string v2, "never"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    const/4 v0, 0x0

    .line 637
    .restart local v0       #callsVibrateSetting:I
    const/4 v1, 0x0

    .restart local v1       #vibeInSilent:Z
    goto :goto_0

    .line 638
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_1
    const-string v2, "silent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 639
    const/4 v0, 0x2

    .line 640
    .restart local v0       #callsVibrateSetting:I
    const/4 v1, 0x1

    .restart local v1       #vibeInSilent:Z
    goto :goto_0

    .line 642
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_2
    const/4 v0, 0x1

    .line 643
    .restart local v0       #callsVibrateSetting:I
    const/4 v1, 0x1

    .restart local v1       #vibeInSilent:Z
    goto :goto_0

    :cond_3
    move v2, v3

    .line 646
    goto :goto_1
.end method

.method private updateRingtoneName(ILcom/htc/preference/HtcPreference;I)V
    .locals 11
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    .line 797
    if-nez p2, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 799
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 800
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 801
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x10403d9

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 803
    .local v9, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 804
    const v0, 0x10403d7

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 823
    :cond_2
    :goto_1
    if-ne v10, p1, :cond_5

    .line 824
    const-string v9, ""

    .line 827
    :goto_2
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 808
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 810
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 811
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 812
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 814
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 816
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 818
    :catch_1
    move-exception v8

    .line 819
    .local v8, npe:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 826
    .end local v8           #npe:Ljava/lang/NullPointerException;
    :cond_5
    const v0, 0x7f0c0488

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method

.method private updateSilentListSummaryAndNotify(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 757
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 760
    .local v0, summaries:[Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 763
    packed-switch p1, :pswitch_data_0

    .line 778
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "silent_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 785
    iget-boolean v1, p0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 787
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 794
    :cond_0
    :goto_2
    return-void

    .line 757
    .end local v0           #summaries:[Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 765
    .restart local v0       #summaries:[Ljava/lang/CharSequence;
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcListPreference;->notifyDependencyChange(Z)V

    goto :goto_1

    .line 768
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->notifyDependencyChange(Z)V

    goto :goto_1

    .line 771
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->notifyDependencyChange(Z)V

    goto :goto_1

    .line 774
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcListPreference;->notifyDependencyChange(Z)V

    goto :goto_1

    .line 790
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_2

    .line 763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateState(Z)V
    .locals 7
    .parameter "force"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 667
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 668
    .local v1, ringerMode:I
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    move v2, v3

    .line 669
    .local v2, silent:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v0, v3

    .line 697
    .local v0, phoneVibrate:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    .line 700
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-ne v0, v3, :cond_0

    if-eqz p1, :cond_1

    .line 701
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 717
    :cond_1
    return-void

    .end local v0           #phoneVibrate:Z
    .end local v2           #silent:Z
    :cond_2
    move v2, v4

    .line 668
    goto :goto_0

    .restart local v2       #silent:Z
    :cond_3
    move v0, v4

    .line 669
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 36
    .parameter "savedInstanceState"

    .prologue
    .line 248
    invoke-super/range {p0 .. p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 250
    .local v27, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    .line 252
    .local v4, activePhoneType:I
    const-string v33, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/media/AudioManager;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 254
    sget-object v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v34, "1.6"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_13

    .line 255
    const v33, 0x7f05003b

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 265
    :goto_0
    const-string v33, "button_roaming_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 268
    const-string v33, "htc_cdma_dtmf_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    .line 269
    const-string v33, "dtmf_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 270
    const/16 v22, 0x0

    .line 273
    .local v22, mDtmfToneRemoved:Lcom/htc/preference/HtcPreference;
    const/16 v33, 0x2

    move/from16 v0, v33

    if-eq v0, v4, :cond_15

    sget-boolean v33, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_15

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    const-string v34, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_0

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 282
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v22, v0

    .line 290
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    const-string v33, "dtmf_tone"

    const/16 v35, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_14

    const/16 v33, 0x1

    :goto_1
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 313
    :goto_2
    if-eqz v22, :cond_2

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 320
    :cond_2
    const-string v33, "silentlist"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 322
    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v34, 0xd8

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_18

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    const v34, 0x7f07005f

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 326
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 329
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3

    .line 330
    const-string v33, "uimode"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/UiModeManager;

    invoke-virtual/range {v33 .. v33}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_19

    const/16 v33, 0x1

    :goto_4
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SoundSettings;->mDockMode:Z

    .line 332
    const-string v33, "SoundSettings"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "onCreate mDockMode = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3

    .line 334
    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v34, 0xd8

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f07005f

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v32

    .line 337
    .local v32, tmpEntries:[Ljava/lang/CharSequence;
    :goto_5
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v11, v0, [Ljava/lang/CharSequence;

    const/16 v33, 0x0

    const/16 v34, 0x0

    aget-object v34, v32, v34

    aput-object v34, v11, v33

    const/16 v33, 0x1

    const/16 v34, 0x2

    aget-object v34, v32, v34

    aput-object v34, v11, v33

    .line 339
    .local v11, entries:[Ljava/lang/CharSequence;
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v14, v0, [Ljava/lang/CharSequence;

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget-object v34, v34, v35

    aput-object v34, v14, v33

    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mModeEntryValues:[Ljava/lang/CharSequence;

    move-object/from16 v34, v0

    const/16 v35, 0x2

    aget-object v34, v34, v35

    aput-object v34, v14, v33

    .line 341
    .local v14, entryValues:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 347
    .end local v11           #entries:[Ljava/lang/CharSequence;
    .end local v14           #entryValues:[Ljava/lang/CharSequence;
    .end local v32           #tmpEntries:[Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    .line 352
    const-string v33, "vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 354
    const/4 v3, 0x0

    .line 355
    .local v3, VIBRATE_ON_VALUE:I
    const-string v33, "vibrate_on"

    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 357
    const/16 v33, 0x1

    move/from16 v0, v33

    if-le v3, v0, :cond_4

    .line 360
    and-int/lit8 v3, v3, 0x1

    .line 363
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    if-eqz v3, :cond_1b

    const/16 v33, 0x1

    :goto_6
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v33

    if-eqz v33, :cond_1c

    const/16 v33, 0x1

    :goto_7
    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v33

    if-eqz v33, :cond_1d

    const/16 v33, 0x1

    :goto_8
    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 373
    const-string v33, "sound_effects"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    const-string v33, "sound_effects_enabled"

    const/16 v35, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_1e

    const/16 v33, 0x1

    :goto_9
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 377
    const-string v33, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    const-string v33, "haptic_feedback_enabled"

    const/16 v35, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_1f

    const/16 v33, 0x1

    :goto_a
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 381
    const-string v33, "lock_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    const-string v33, "lockscreen_sounds_enabled"

    const/16 v35, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_20

    const/16 v33, 0x1

    :goto_b
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 387
    const-string v33, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/Vibrator;

    invoke-virtual/range {v33 .. v33}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v33

    if-nez v33, :cond_5

    .line 388
    const-string v33, "SoundSettings"

    const-string v34, "The device not support vibrator!!"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 392
    :cond_5
    const/16 v33, 0x2

    move/from16 v0, v33

    if-eq v0, v4, :cond_6

    sget-boolean v33, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    .line 394
    :cond_6
    const-string v33, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcListPreference;

    .line 396
    .local v10, emergencyTonePreference:Lcom/htc/preference/HtcListPreference;
    const-string v33, "emergency_tone"

    const/16 v34, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 410
    .end local v10           #emergencyTonePreference:Lcom/htc/preference/HtcListPreference;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    if-nez v33, :cond_21

    .line 411
    const-string v33, "SoundSettings"

    const-string v34, "OoO get the null object of KEY_BUTTON_ROAM_RINGTONE"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_c
    const-string v33, "sound_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v33, v0

    const-string v34, "musicfx"

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mMusicFx:Lcom/htc/preference/HtcPreference;

    .line 421
    new-instance v18, Landroid/content/Intent;

    const-string v33, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v18, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 423
    .local v23, p:Landroid/content/pm/PackageManager;
    const/16 v33, 0x200

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v28

    .line 424
    .local v28, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mMusicFx:Lcom/htc/preference/HtcPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_8

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mMusicFx:Lcom/htc/preference/HtcPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 432
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v33, v0

    const-string v34, "notification_pulse"

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const/high16 v34, 0x7f09

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 437
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 450
    :goto_d
    sget-boolean v33, Lcom/android/settings/framework/flag/HtcFeatureFlags;->supportPocketMode:Z

    if-nez v33, :cond_a

    .line 451
    const-string v33, "PCOKET_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    .line 453
    .local v24, pocketMode:Lcom/htc/preference/HtcPreference;
    if-eqz v24, :cond_a

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 458
    .end local v24           #pocketMode:Lcom/htc/preference/HtcPreference;
    :cond_a
    sget-boolean v33, Lcom/android/settings/framework/flag/HtcFeatureFlags;->supportFlipToSpeakerMode:Z

    if-nez v33, :cond_b

    .line 459
    const-string v33, "FLIP_TO_SPEAKER"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v17

    .line 461
    .local v17, flipToSpeakerMode:Lcom/htc/preference/HtcPreference;
    if-eqz v17, :cond_b

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 467
    .end local v17           #flipToSpeakerMode:Lcom/htc/preference/HtcPreference;
    :cond_b
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v33

    if-nez v33, :cond_10

    .line 468
    const-string v33, "sound_category_calls"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v33, v0

    if-eqz v33, :cond_c

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 473
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_d

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 475
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_e

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 477
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_f

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    const v34, 0x7f0c061e

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 479
    :cond_f
    const-string v33, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcListPreference;

    .line 480
    .restart local v10       #emergencyTonePreference:Lcom/htc/preference/HtcListPreference;
    if-eqz v10, :cond_10

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 485
    .end local v10           #emergencyTonePreference:Lcom/htc/preference/HtcListPreference;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    move/from16 v33, v0

    if-eqz v33, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SoundSettings;->mDockMode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_11

    .line 486
    const-string v33, "SoundSettings"

    const-string v34, "Removed Vibrate Preference during Dock Mode;"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 490
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_24

    .line 491
    sget-object v5, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v0, v5

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_e
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_24

    aget-object v26, v5, v19

    .line 492
    .local v26, prefKey:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    .line 493
    .local v25, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v25, :cond_12

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 491
    :cond_12
    add-int/lit8 v19, v19, 0x1

    goto :goto_e

    .line 259
    .end local v3           #VIBRATE_ON_VALUE:I
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v18           #i:Landroid/content/Intent;
    .end local v19           #i$:I
    .end local v21           #len$:I
    .end local v22           #mDtmfToneRemoved:Lcom/htc/preference/HtcPreference;
    .end local v23           #p:Landroid/content/pm/PackageManager;
    .end local v25           #pref:Lcom/htc/preference/HtcPreference;
    .end local v26           #prefKey:Ljava/lang/String;
    .end local v28           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_13
    const v33, 0x7f05003a

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 261
    const-string v33, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    .line 262
    const-string v33, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    goto/16 :goto_0

    .line 291
    .restart local v22       #mDtmfToneRemoved:Lcom/htc/preference/HtcPreference;
    :cond_14
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 297
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcListPreference;->setPersistent(Z)V

    .line 298
    const-string v33, "dtmf_tone"

    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 299
    .local v9, dtmfOn:I
    const/4 v7, 0x0

    .line 300
    .local v7, cdmaDtmfValue:I
    if-eqz v9, :cond_16

    .line 301
    const-string v33, "dtmf_tone_type"

    const/16 v34, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 302
    .local v8, dtmfLongTone:I
    if-eqz v8, :cond_17

    const/4 v7, 0x2

    .line 304
    .end local v8           #dtmfLongTone:I
    :cond_16
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCdmaDtmfTone:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v22, v0

    goto/16 :goto_2

    .line 302
    .restart local v8       #dtmfLongTone:I
    :cond_17
    const/4 v7, 0x1

    goto :goto_f

    .line 325
    .end local v7           #cdmaDtmfValue:I
    .end local v8           #dtmfLongTone:I
    .end local v9           #dtmfOn:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    const v34, 0x7f07005e

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    goto/16 :goto_3

    .line 330
    :cond_19
    const/16 v33, 0x0

    goto/16 :goto_4

    .line 334
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f07005e

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v32

    goto/16 :goto_5

    .line 363
    .restart local v3       #VIBRATE_ON_VALUE:I
    :cond_1b
    const/16 v33, 0x0

    goto/16 :goto_6

    .line 367
    :cond_1c
    const/16 v33, 0x0

    goto/16 :goto_7

    .line 370
    :cond_1d
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 375
    :cond_1e
    const/16 v33, 0x0

    goto/16 :goto_9

    .line 379
    :cond_1f
    const/16 v33, 0x0

    goto/16 :goto_a

    .line 383
    :cond_20
    const/16 v33, 0x0

    goto/16 :goto_b

    .line 413
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v29

    .line 414
    .local v29, rmOK:Z
    const-string v33, "SoundSettings"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "OoO remove FEATURE_ROAMING_RINGTONE ("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 440
    .end local v29           #rmOK:Z
    .restart local v18       #i:Landroid/content/Intent;
    .restart local v23       #p:Landroid/content/pm/PackageManager;
    .restart local v28       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_22
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    const-string v33, "notification_light_pulse"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v33

    const/16 v35, 0x1

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_23

    const/16 v33, 0x1

    :goto_10
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_d

    .line 443
    :catch_0
    move-exception v30

    .line 444
    .local v30, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v33, "SoundSettings"

    const-string v34, "notification_light_pulse not found"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 440
    .end local v30           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_23
    const/16 v33, 0x0

    goto :goto_10

    .line 499
    :cond_24
    new-instance v33, Lcom/android/settings/SoundSettings$3;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$3;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 514
    const-string v33, "ringtone_vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtoneVibrate:Lcom/htc/preference/HtcPreference;

    .line 515
    const-string v33, "notification_sound_vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mNotificationsVibrate:Lcom/htc/preference/HtcPreference;

    .line 516
    const-string v33, "haptic_feedback_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    .line 517
    invoke-static {}, Lcom/android/settings/HapticUtil;->isHapticVibrateSupport()Z

    move-result v33

    if-eqz v33, :cond_2a

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_25

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 520
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_26

    .line 521
    new-instance v33, Lcom/android/settings/HapticUtil;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/android/settings/HapticUtil;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mHapticUtil:Lcom/android/settings/HapticUtil;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 523
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 524
    .local v12, entries:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/CharSequence;>;"
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 525
    .local v15, entryValues:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticUtil:Lcom/android/settings/HapticUtil;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v12, v15}, Lcom/android/settings/HapticUtil;->prepareThemeList(Ljava/util/Vector;Ljava/util/Vector;)Z

    .line 526
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/CharSequence;

    .line 527
    .local v13, entriesArray:[Ljava/lang/CharSequence;
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/CharSequence;

    .line 528
    .local v16, entryValuesArray:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 531
    const-string v33, "haptic_feedback_enabled"

    const/16 v34, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-nez v33, :cond_27

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 567
    .end local v12           #entries:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/CharSequence;>;"
    .end local v13           #entriesArray:[Ljava/lang/CharSequence;
    .end local v15           #entryValues:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/CharSequence;>;"
    .end local v16           #entryValuesArray:[Ljava/lang/CharSequence;
    :cond_26
    :goto_11
    return-void

    .line 535
    .restart local v12       #entries:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/CharSequence;>;"
    .restart local v13       #entriesArray:[Ljava/lang/CharSequence;
    .restart local v15       #entryValues:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/CharSequence;>;"
    .restart local v16       #entryValuesArray:[Ljava/lang/CharSequence;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticUtil:Lcom/android/settings/HapticUtil;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/settings/HapticUtil;->getVibrateTheme()Ljava/lang/String;

    move-result-object v31

    .line 536
    .local v31, strTheme:Ljava/lang/String;
    const/4 v6, 0x0

    .line 537
    .local v6, bFindThememIndex:Z
    const/16 v20, 0x0

    .local v20, k:I
    :goto_12
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v20

    move/from16 v1, v33

    if-ge v0, v1, :cond_28

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 540
    aget-object v33, v16, v20

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_29

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 543
    const/4 v6, 0x1

    .line 547
    :cond_28
    if-nez v6, :cond_26

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_11

    .line 537
    :cond_29
    add-int/lit8 v20, v20, 0x1

    goto :goto_12

    .line 553
    .end local v6           #bFindThememIndex:Z
    .end local v12           #entries:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/CharSequence;>;"
    .end local v13           #entriesArray:[Ljava/lang/CharSequence;
    .end local v15           #entryValues:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/CharSequence;>;"
    .end local v16           #entryValuesArray:[Ljava/lang/CharSequence;
    .end local v20           #k:I
    .end local v31           #strTheme:Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2b

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 556
    :cond_2b
    const-string v33, "sound_category_calls"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v33

    check-cast v33, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtoneVibrate:Lcom/htc/preference/HtcPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2c

    .line 558
    const-string v33, "SoundSettings"

    const-string v34, "remove mRingtoneVibrate in CallCategory"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtoneVibrate:Lcom/htc/preference/HtcPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 562
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationsVibrate:Lcom/htc/preference/HtcPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_26

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mNotificationsVibrate:Lcom/htc/preference/HtcPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_11
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 586
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 589
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 954
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, key:Ljava/lang/String;
    const-string v8, "emergency_tone"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 956
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 958
    .local v5, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "emergency_tone"

    invoke-static {v8, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    .end local v5           #value:I
    .end local p1
    :cond_0
    :goto_0
    return v9

    .line 960
    .restart local v5       #value:I
    .restart local p1
    :catch_0
    move-exception v0

    .line 961
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v8, "SoundSettings"

    const-string v10, "could not persist emergency tone setting"

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 963
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v5           #value:I
    .restart local p2
    :cond_1
    const-string v8, "vibrate"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 964
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object v8, p1

    check-cast v8, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_1
    invoke-virtual {v11, v10, v8}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 967
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    move-object v8, p1

    check-cast v8, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    :goto_2
    invoke-virtual {v11, v9, v8}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 970
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "vibrate_on"

    check-cast p1, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v10, 0x5

    :cond_2
    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .restart local p1
    :cond_3
    move v8, v10

    .line 964
    goto :goto_1

    :cond_4
    move v8, v10

    .line 967
    goto :goto_2

    .line 973
    :cond_5
    const-string v8, "silentlist"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 976
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 981
    .restart local v5       #value:I
    iget-object v8, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 982
    invoke-direct {p0, v5}, Lcom/android/settings/SoundSettings;->getSoundMode(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V

    .line 983
    if-ne v5, v9, :cond_0

    .line 985
    new-instance v7, Landroid/os/Vibrator;

    invoke-direct {v7}, Landroid/os/Vibrator;-><init>()V

    .line 986
    .local v7, vibrator:Landroid/os/Vibrator;
    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v10, v11}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 993
    .end local v5           #value:I
    .end local v7           #vibrator:Landroid/os/Vibrator;
    :catch_1
    move-exception v0

    .line 994
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "SoundSettings"

    const-string v10, "could not persist silent list setting"

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1001
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_6
    const-string v8, "htc_cdma_dtmf_tone"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v8, p2

    .line 1002
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1004
    .restart local v5       #value:I
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dtmf_tone"

    if-eqz v5, :cond_7

    move v8, v9

    :goto_3
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1010
    :goto_4
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "dtmf_tone_type"

    if-ne v5, v9, :cond_8

    :goto_5
    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    move-object v8, p1

    .line 1015
    check-cast v8, Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v8, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .local v4, selectIndex:I
    move-object v8, p1

    .line 1016
    check-cast v8, Lcom/htc/preference/HtcListPreference;

    check-cast p1, Lcom/htc/preference/HtcListPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v4           #selectIndex:I
    .restart local p1
    .restart local p2
    :cond_7
    move v8, v10

    .line 1004
    goto :goto_3

    .line 1006
    :catch_2
    move-exception v0

    .line 1007
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "SoundSettings"

    const-string v11, "could not persist cdma DTMF tone enable"

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_8
    move v10, v9

    .line 1010
    goto :goto_5

    .line 1012
    :catch_3
    move-exception v0

    .line 1013
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "SoundSettings"

    const-string v10, "could not persist cdma DTMF tone type"

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1020
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v5           #value:I
    :cond_9
    const-string v8, "haptic_feedback_list"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1021
    const-string v8, "SoundSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KEY_HAPTIC_FEEDBACK_LIST new value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v8, p0, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1023
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SoundSettings;->mHapticlist:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1025
    .local v6, values:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    array-length v8, v6

    if-ge v2, v8, :cond_0

    .line 1027
    aget-object v8, v6, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1030
    aget-object v8, v6, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/android/settings/HapticUtil;->HAPTIC_FEEDBACK_THEME_DISABLE:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1031
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "haptic_feedback_enabled"

    invoke-static {v8, v11, v10}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1034
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "haptic_feedback_enabled"

    invoke-static {v8, v10, v9}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1036
    iget-object v8, p0, Lcom/android/settings/SoundSettings;->mHapticUtil:Lcom/android/settings/HapticUtil;

    aget-object v10, v6, v2

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/settings/HapticUtil;->SetVibrateTheme(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1025
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/high16 v12, 0x1000

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 837
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mSilent:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v10, :cond_4

    .line 838
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mSilent:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "vibrate_in_silent"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v8, v10, :cond_1

    move v6, v8

    .line 843
    .local v6, vibeInSilent:Z
    :goto_0
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v6, :cond_2

    move v10, v8

    :goto_1
    invoke-virtual {v11, v10}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 849
    .end local v6           #vibeInSilent:Z
    :goto_2
    invoke-direct {p0, v9}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    :cond_0
    :goto_3
    move v9, v8

    .line 950
    :goto_4
    return v9

    :cond_1
    move v6, v9

    .line 839
    goto :goto_0

    .restart local v6       #vibeInSilent:Z
    :cond_2
    move v10, v9

    .line 843
    goto :goto_1

    .line 847
    .end local v6           #vibeInSilent:Z
    :cond_3
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 850
    :cond_4
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v10, :cond_8

    .line 851
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    .line 852
    .local v7, vibrate:Z
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v7, :cond_6

    move v10, v8

    :goto_5
    invoke-virtual {v11, v9, v10}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 855
    iget-object v11, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v7, :cond_7

    move v10, v8

    :goto_6
    invoke-virtual {v11, v8, v10}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 858
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "vibrate_on"

    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mVibrate:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v12}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v9, 0x5

    :cond_5
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    move v10, v9

    .line 852
    goto :goto_5

    :cond_7
    move v10, v9

    .line 855
    goto :goto_6

    .line 861
    .end local v7           #vibrate:Z
    :cond_8
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v10, :cond_a

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dtmf_tone"

    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v12}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_9

    move v9, v8

    :cond_9
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 865
    :cond_a
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v10, :cond_d

    .line 866
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 867
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 871
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sound_effects_enabled"

    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v12}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_b

    move v9, v8

    :cond_b
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 869
    :cond_c
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_7

    .line 874
    :cond_d
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v10, :cond_f

    .line 875
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "haptic_feedback_enabled"

    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v12}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_e

    move v9, v8

    :cond_e
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 878
    :cond_f
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v10, :cond_11

    .line 879
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lockscreen_sounds_enabled"

    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v12}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_10

    move v9, v8

    :cond_10
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 882
    :cond_11
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v10, :cond_13

    .line 883
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    .line 884
    .local v4, value:Z
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "notification_light_pulse"

    if-eqz v4, :cond_12

    move v9, v8

    :cond_12
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 891
    .end local v4           #value:Z
    :cond_13
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v10, :cond_15

    .line 893
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dtmf_tone"

    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v12}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_14

    move v9, v8

    :cond_14
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 899
    :cond_15
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v10, :cond_17

    .line 900
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mButton_RoamingRingtone:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    .line 901
    .local v3, enableRoamingRingTone:Z
    const/4 v5, 0x0

    .line 902
    .local v5, valueOfRoamingRingTone:I
    if-ne v3, v8, :cond_16

    .line 903
    const/4 v5, 0x1

    .line 907
    :goto_8
    const-string v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OoO set RoamingRinttone = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "roaming_ringtone_on"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 905
    :cond_16
    const/4 v5, 0x0

    goto :goto_8

    .line 912
    .end local v3           #enableRoamingRingTone:Z
    .end local v5           #valueOfRoamingRingTone:I
    :cond_17
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;

    if-ne p2, v10, :cond_18

    .line 913
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 914
    .local v1, data:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 915
    .local v0, bundle:Landroid/os/Bundle;
    const-string v9, "SDMListType"

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 916
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 917
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 918
    const-string v9, "com.htc.sdm"

    const-string v10, "com.htc.sdm.activity.SoundSetList"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 923
    :catch_0
    move-exception v2

    .line 925
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v9, "SoundSettings"

    const-string v10, "fail to start sondset activity"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 927
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #data:Landroid/content/Intent;
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :cond_18
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;

    if-ne p2, v10, :cond_19

    .line 928
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 929
    .restart local v1       #data:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 930
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v9, "SDMListType"

    const/4 v10, 0x3

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 931
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 932
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 933
    const-string v9, "com.htc.sdm"

    const-string v10, "com.htc.sdm.activity.SoundSetList"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 938
    :catch_1
    move-exception v2

    .line 940
    .restart local v2       #e:Landroid/content/ActivityNotFoundException;
    const-string v9, "SoundSettings"

    const-string v10, "fail to start sondset activity"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 943
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #data:Landroid/content/Intent;
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :cond_19
    iget-object v10, p0, Lcom/android/settings/SoundSettings;->mMusicFx:Lcom/htc/preference/HtcPreference;

    if-ne p2, v10, :cond_0

    goto/16 :goto_4
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 571
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 572
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    .line 573
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->lookupRingtoneNames()V

    .line 574
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, filter:Landroid/content/IntentFilter;
    iget-boolean v1, p0, Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z

    if-eqz v1, :cond_0

    .line 577
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 582
    return-void
.end method
