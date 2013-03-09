.class public Lcom/android/settings/NotificationFlashSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "NotificationFlashSettings.java"


# static fields
.field private static final KEY_TOGGLE_ALARM:Ljava/lang/String; = "alarm_title"

.field private static final KEY_TOGGLE_EMAIL:Ljava/lang/String; = "incoming_email_title"

.field private static final KEY_TOGGLE_MESSAGE:Ljava/lang/String; = "incoming_message_title"

.field private static final KEY_TOGGLE_MISSED_CALL:Ljava/lang/String; = "missed_call_title"

.field private static final KEY_TOGGLE_REMINDERS:Ljava/lang/String; = "reminider_title"

.field private static final KEY_TOGGLE_VOICE_MAIL:Ljava/lang/String; = "incoming_voice_mail_title"

.field private static final TAG:Ljava/lang/String; = "__NOTIFY_FLASH__"


# instance fields
.field private mHasPhoneFunction:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private refreshUi(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 104
    invoke-static {p1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getAllData(Landroid/content/Context;)[Z

    move-result-object v0

    .line 111
    .local v0, bData:[Z
    const-string v2, "missed_call_title"

    invoke-virtual {p0, v2}, Lcom/android/settings/NotificationFlashSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 112
    .local v1, cbPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v1, :cond_0

    .line 113
    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 116
    :cond_0
    const-string v2, "incoming_message_title"

    invoke-virtual {p0, v2}, Lcom/android/settings/NotificationFlashSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .end local v1           #cbPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 117
    .restart local v1       #cbPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v1, :cond_1

    .line 118
    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 121
    :cond_1
    const-string v2, "incoming_email_title"

    invoke-virtual {p0, v2}, Lcom/android/settings/NotificationFlashSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .end local v1           #cbPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 122
    .restart local v1       #cbPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v1, :cond_2

    .line 123
    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 126
    :cond_2
    const-string v2, "incoming_voice_mail_title"

    invoke-virtual {p0, v2}, Lcom/android/settings/NotificationFlashSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .end local v1           #cbPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 127
    .restart local v1       #cbPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v1, :cond_3

    .line 128
    const/4 v2, 0x4

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 131
    :cond_3
    const-string v2, "reminider_title"

    invoke-virtual {p0, v2}, Lcom/android/settings/NotificationFlashSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .end local v1           #cbPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 132
    .restart local v1       #cbPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v1, :cond_4

    .line 133
    const/4 v2, 0x5

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 136
    :cond_4
    const-string v2, "alarm_title"

    invoke-virtual {p0, v2}, Lcom/android/settings/NotificationFlashSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .end local v1           #cbPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 137
    .restart local v1       #cbPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v1, :cond_5

    .line 138
    const/4 v2, 0x6

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 139
    :cond_5
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/NotificationFlashSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 42
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x1b

    if-ne v5, v7, :cond_5

    .line 48
    const v5, 0x7f05001f

    invoke-virtual {p0, v5}, Lcom/android/settings/NotificationFlashSettings;->addPreferencesFromResource(I)V

    .line 53
    :goto_1
    const-string v5, "ro.phone.function"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, phoneFlag:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/android/settings/NotificationFlashSettings;->mHasPhoneFunction:Z

    .line 55
    iget-boolean v5, p0, Lcom/android/settings/NotificationFlashSettings;->mHasPhoneFunction:Z

    if-nez v5, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/NotificationFlashSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 58
    .local v4, screen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v5, "notification_flash_category"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    .line 62
    .local v1, category:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v5, "missed_call_title"

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 63
    .local v3, preference:Lcom/htc/preference/HtcPreference;
    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 67
    :cond_1
    const-string v5, "incoming_voice_mail_title"

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 73
    .end local v1           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    .end local v4           #screen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_2
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcMMSFlag:Z

    if-nez v5, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/NotificationFlashSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 76
    .restart local v4       #screen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v5, "notification_flash_category"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    .line 79
    .restart local v1       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v5, "incoming_message_title"

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 80
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    if-eqz v3, :cond_3

    .line 81
    const v5, 0x7f0c02b8

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 85
    .end local v1           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    .end local v4           #screen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_3
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-ne v5, v6, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/NotificationFlashSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 88
    .restart local v4       #screen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v5, "notification_flash_category"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    .line 92
    .restart local v1       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v5, "incoming_message_title"

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 93
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    if-eqz v3, :cond_4

    .line 94
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 98
    .end local v1           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    .end local v4           #screen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/NotificationFlashSettings;->refreshUi(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 50
    .end local v2           #phoneFlag:Ljava/lang/String;
    :cond_5
    const v5, 0x7f05001e

    invoke-virtual {p0, v5}, Lcom/android/settings/NotificationFlashSettings;->addPreferencesFromResource(I)V

    goto :goto_1

    .line 54
    .restart local v2       #phoneFlag:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "HtcPreferenceScreen"
    .parameter "preference"

    .prologue
    .line 145
    const-string v7, "missed_call_title"

    invoke-virtual {p0, v7}, Lcom/android/settings/NotificationFlashSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 146
    .local v4, missedCall:Lcom/htc/preference/HtcCheckBoxPreference;
    const-string v7, "incoming_message_title"

    invoke-virtual {p0, v7}, Lcom/android/settings/NotificationFlashSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 147
    .local v3, message:Lcom/htc/preference/HtcCheckBoxPreference;
    const-string v7, "incoming_voice_mail_title"

    invoke-virtual {p0, v7}, Lcom/android/settings/NotificationFlashSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 148
    .local v6, voiceMail:Lcom/htc/preference/HtcCheckBoxPreference;
    const-string v7, "incoming_email_title"

    invoke-virtual {p0, v7}, Lcom/android/settings/NotificationFlashSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 149
    .local v2, eMail:Lcom/htc/preference/HtcCheckBoxPreference;
    const-string v7, "reminider_title"

    invoke-virtual {p0, v7}, Lcom/android/settings/NotificationFlashSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 150
    .local v5, reminders:Lcom/htc/preference/HtcCheckBoxPreference;
    const-string v7, "alarm_title"

    invoke-virtual {p0, v7}, Lcom/android/settings/NotificationFlashSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 152
    .local v1, alarm:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/NotificationFlashSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 153
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 154
    const/4 v7, 0x0

    .line 177
    :goto_0
    return v7

    .line 159
    :cond_0
    if-ne p2, v4, :cond_1

    .line 160
    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v0, v7}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setMissCall(Landroid/content/Context;Z)V

    .line 162
    :cond_1
    if-ne p2, v3, :cond_2

    .line 163
    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v0, v7}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setSms(Landroid/content/Context;Z)V

    .line 165
    :cond_2
    if-ne p2, v2, :cond_3

    .line 166
    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v0, v7}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setEmail(Landroid/content/Context;Z)V

    .line 168
    :cond_3
    if-ne p2, v6, :cond_4

    .line 169
    invoke-virtual {v6}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v0, v7}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setVoiceMail(Landroid/content/Context;Z)V

    .line 171
    :cond_4
    if-ne p2, v5, :cond_5

    .line 172
    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v0, v7}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setReminder(Landroid/content/Context;Z)V

    .line 174
    :cond_5
    if-ne p2, v1, :cond_6

    .line 175
    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v0, v7}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setAlarm(Landroid/content/Context;Z)V

    .line 177
    :cond_6
    const/4 v7, 0x1

    goto :goto_0
.end method
