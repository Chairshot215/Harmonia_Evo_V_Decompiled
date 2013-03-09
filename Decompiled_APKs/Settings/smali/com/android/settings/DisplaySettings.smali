.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final KEY_NOTIFICATION_FLASH_SETTINGS:Ljava/lang/String; = "notification_flash_settings"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final TAG:Ljava/lang/String; = "DisplaySettings"


# instance fields
.field final REQUEST_CODE_RESOLUTION_PICKER:I

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mFontSizePref:Lcom/htc/preference/HtcListPreference;

.field private mIntent:Landroid/content/Intent;

.field private mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mResolutionType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/DisplaySettings;->REQUEST_CODE_RESOLUTION_PICKER:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mResolutionType:I

    .line 69
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/htc/preference/HtcListPreference;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Lcom/htc/preference/HtcListPreference;)V

    .line 230
    :cond_0
    const-string v1, "display_resolution_entry"

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 231
    .local v0, resolution:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mResolutionType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    :cond_1
    return-void
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter "val"

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, indices:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 191
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 192
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 193
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 194
    add-int/lit8 v4, v0, -0x1

    .line 198
    .end local v3           #thisVal:F
    :goto_1
    return v4

    .line 196
    .restart local v3       #thisVal:F
    :cond_0
    move v2, v3

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v3           #thisVal:F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 181
    iget v1, p0, Lcom/android/settings/DisplaySettings;->REQUEST_CODE_RESOLUTION_PICKER:I

    if-ne v1, p1, :cond_0

    if-eqz p3, :cond_0

    .line 182
    const-string v1, "com.htc.content.intent.extra.Extra_DEF_TYPE"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/DisplaySettings;->mResolutionType:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 80
    .local v4, resolver:Landroid/content/ContentResolver;
    const v8, 0x7f050013

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    .line 83
    .local v5, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 84
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportAutoRotateScreen()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 87
    new-instance v3, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;

    invoke-direct {v3, v0}, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;-><init>(Landroid/content/Context;)V

    .line 88
    .local v3, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setOrder(I)V

    .line 89
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 90
    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 93
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->support3DHomeScreen()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 94
    new-instance v3, Lcom/android/settings/framework/preference/display/Htc3DHomeScreenPreference;

    invoke-direct {v3, v0}, Lcom/android/settings/framework/preference/display/Htc3DHomeScreenPreference;-><init>(Landroid/content/Context;)V

    .line 95
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setOrder(I)V

    .line 96
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 101
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    :cond_2
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportScreenAlignmentCalibration(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 103
    const-string v8, "SCREEN_ALIGNMENT_CALIBRATION"

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 105
    .local v2, calibration:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 108
    .end local v2           #calibration:Lcom/htc/preference/HtcPreference;
    :cond_3
    const-string v8, "TV_OUT"

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 109
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportTVOut(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 110
    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 115
    :goto_1
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0002:Z

    if-nez v8, :cond_a

    sget-boolean v8, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0002:Z

    if-nez v8, :cond_a

    .line 116
    const-string v8, "video_out_group"

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcPreferenceCategory;

    .line 117
    .local v7, targetEntry:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 130
    .end local v7           #targetEntry:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_4
    :goto_2
    const-string v8, "font_size"

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcListPreference;

    iput-object v8, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/htc/preference/HtcListPreference;

    .line 133
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportFontSize()Z

    move-result v8

    if-nez v8, :cond_5

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 135
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/htc/preference/HtcListPreference;

    .line 138
    :cond_5
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/htc/preference/HtcListPreference;

    if-eqz v8, :cond_6

    .line 139
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 142
    :cond_6
    const-string v8, "notification_pulse"

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 143
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v8, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x1110019

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_b

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 158
    :goto_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportNotificationFlash()Z

    move-result v8

    if-nez v8, :cond_7

    .line 159
    const-string v8, "notification_flash_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 164
    :cond_7
    const-string v8, "BRIGHTNESS"

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 165
    if-eqz v3, :cond_8

    .line 166
    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 170
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->requestHandlers()V

    goto/16 :goto_0

    .line 112
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    .line 120
    :cond_a
    const-string v8, "display_resolution_entry"

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 121
    .local v1, apEntry:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_4

    .line 122
    const-string v8, ""

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 123
    const-string v8, "display_resolution_entry"

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070086

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v11

    const-string v12, "select_resolution_type"

    invoke-static {v4, v12, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/settings/DisplaySettings;->mResolutionType:I

    aget-object v11, v11, v12

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 149
    .end local v1           #apEntry:Lcom/htc/preference/HtcPreference;
    :cond_b
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v8, "notification_light_pulse"

    invoke-static {v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_c

    move v8, v9

    :goto_4
    invoke-virtual {v11, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 151
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 152
    :catch_0
    move-exception v6

    .line 153
    .local v6, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v8, "DisplaySettings"

    const-string v9, "notification_light_pulse not found"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v6           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_c
    move v8, v10

    .line 149
    goto :goto_4
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, key:Ljava/lang/String;
    const-string v1, "font_size"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {p0, p2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 267
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 246
    if-eqz p2, :cond_2

    const-string v1, "display_resolution_entry"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mIntent:Landroid/content/Intent;

    .line 249
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.content.intent.action.Resolution_dialog"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mIntent:Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/settings/DisplaySettings;->REQUEST_CODE_RESOLUTION_PICKER:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/DisplaySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 257
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    :goto_0
    return v2

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 253
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    if-eqz v0, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 224
    return-void
.end method

.method public readFontSizePreference(Lcom/htc/preference/HtcListPreference;)V
    .locals 8
    .parameter "pref"

    .prologue
    .line 203
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 210
    .local v2, index:I
    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 214
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, fontSizeNames:[Ljava/lang/String;
    const v4, 0x7f0c09d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    return-void

    .line 204
    .end local v1           #fontSizeNames:[Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 238
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
