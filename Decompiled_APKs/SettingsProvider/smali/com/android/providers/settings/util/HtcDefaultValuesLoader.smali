.class public Lcom/android/providers/settings/util/HtcDefaultValuesLoader;
.super Ljava/lang/Object;
.source "HtcDefaultValuesLoader.java"


# instance fields
.field mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    .line 30
    return-void
.end method

.method private getBooleanString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private getBooleanString(Z)Ljava/lang/String;
    .locals 1
    .parameter "booleanValue"

    .prologue
    .line 424
    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private getIntegerString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get_def_accelerometer_rotation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    const v0, 0x7f040006

    .line 79
    .local v0, resId:I
    sget-boolean v1, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isC0001:Z

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    :cond_0
    const v1, 0x7f040006

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public get_def_auto_time()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    sget-boolean v1, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0003:Z

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "0"

    .line 48
    :goto_0
    return-object v1

    .line 47
    :cond_0
    const v0, 0x7f040004

    .line 48
    .local v0, resId:I
    const v1, 0x7f040004

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public get_def_auto_time_zone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    sget-boolean v1, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0003:Z

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "0"

    .line 66
    :goto_0
    return-object v1

    .line 65
    :cond_0
    const v0, 0x7f040005

    .line 66
    .local v0, resId:I
    const v1, 0x7f040005

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public get_def_charm_indicator_supported()Ljava/lang/String;
    .locals 2

    .prologue
    .line 598
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 600
    :cond_0
    const-string v0, "1"

    .line 602
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public get_def_charm_message_notification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_charm_message_received_notification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_charm_phone_notification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_charm_voice_mail_notification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_compass_warning()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_custom_orientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "-1"

    return-object v0
.end method

.method public get_def_data_roaming()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isL0003:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isV0001:Z

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0005:Z

    if-eqz v0, :cond_2

    .line 296
    :cond_1
    const-string v0, "1"

    .line 298
    :goto_0
    return-object v0

    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method

.method public get_def_data_roaming_allowed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 478
    const v0, 0x7f060018

    .line 481
    .local v0, resId:I
    iget-object v1, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_data_roaming_guard()Ljava/lang/String;
    .locals 5

    .prologue
    .line 315
    const-string v1, "0"

    .line 316
    .local v1, DATA_ROAMING_GUARD_DEFAULT:Ljava/lang/String;
    const-string v0, "1"

    .line 317
    .local v0, DATA_ROAMING_GUARD_ALWAYS_ASK:Ljava/lang/String;
    const-string v2, "2"

    .line 321
    .local v2, DATA_ROAMING_GUARD_NEVER_ASK:Ljava/lang/String;
    sget-boolean v3, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isH0003:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/providers/settings/flag/HtcLanguageFlags;->isPLS:Z

    if-eqz v3, :cond_0

    .line 322
    const-string v3, "1"

    .line 329
    :goto_0
    return-object v3

    .line 323
    :cond_0
    sget-object v3, Lcom/android/providers/settings/flag/HtcSkuFlags;->CURRENT_CID:Ljava/lang/String;

    const-string v4, "UTSI_040"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    const-string v3, "2"

    goto :goto_0

    .line 329
    :cond_1
    const-string v3, "0"

    goto :goto_0
.end method

.method public get_def_data_roaming_guard_allowed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 514
    const v0, 0x7f06001a

    .line 515
    .local v0, resId:I
    iget-object v1, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_emergency_tone()Ljava/lang/String;
    .locals 5

    .prologue
    .line 170
    const-string v1, "0"

    .line 171
    .local v1, EMERGENCY_TONE_OFF:Ljava/lang/String;
    const-string v0, "1"

    .line 172
    .local v0, EMERGENCY_TONE_ALERT:Ljava/lang/String;
    const-string v2, "2"

    .line 175
    .local v2, EMERGENCY_TONE_VIBRATE:Ljava/lang/String;
    const-string v3, "1"

    .line 177
    .local v3, toggleOfEMC_Tone:Ljava/lang/String;
    sget-boolean v4, Lcom/android/providers/settings/flag/HtcProjectFlags;->isV0001:Z

    if-eqz v4, :cond_0

    .line 178
    const-string v3, "0"

    .line 181
    :cond_0
    return-object v3
.end method

.method public get_def_haptic_feedback_theme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    const-string v0, "content://com.immersion.android.haptics.defaulttheme"

    return-object v0
.end method

.method public get_def_haptic_notifytone_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    const-string v0, "0"

    return-object v0
.end method

.method public get_def_haptic_notifytone_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    const-string v0, ""

    return-object v0
.end method

.method public get_def_haptic_ringtone_def_path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    const-string v0, "/system/media/haptic/ringtones"

    return-object v0
.end method

.method public get_def_haptic_ringtone_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    const-string v0, "0"

    return-object v0
.end method

.method public get_def_haptic_ringtone_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    const-string v0, ""

    return-object v0
.end method

.method public get_def_htc_3d_home_screen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, defaultValue:Z
    invoke-static {}, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info;->getDeviceType()Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    move-result-object v1

    sget-object v2, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    if-ne v1, v2, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 197
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_application_automatic_startup()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x1

    .line 130
    .local v0, DEFAULT_VALUE:Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_application_notification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    const-string v0, "10"

    .line 142
    .local v0, DEFAULT_VALUE:Ljava/lang/String;
    const-string v1, "10"

    return-object v1
.end method

.method public get_def_htc_fastboot_allowed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 399
    const/4 v0, 0x1

    .line 401
    .local v0, defaultValue:Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_locate_allowed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    const v0, 0x7f040028

    .line 373
    .local v0, resId:I
    const v1, 0x7f040028

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_message_notification_preview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_htc_new_message_notification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    const/4 v0, 0x1

    .line 387
    .local v0, defaultValue:Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_phone_notification_preview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    const-string v0, "1"

    return-object v0
.end method

.method public get_def_htc_wireless_sleep_end_time()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    const/16 v0, 0x168

    .line 233
    .local v0, defaultValue:I
    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_wireless_sleep_mode_enabled()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x1

    .line 209
    .local v0, defaultValue:Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htc_wireless_sleep_start_time()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    const/16 v0, 0x564

    .line 221
    .local v0, defaultValue:I
    const/16 v1, 0x564

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_htcspeak_default_lang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    const-string v0, "en_US"

    return-object v0
.end method

.method public get_def_inactivity_time()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    const-string v0, "0"

    .line 118
    .local v0, DEFAULT_VALUE:Ljava/lang/String;
    const-string v1, "0"

    return-object v1
.end method

.method public get_def_install_non_market_apps()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string v0, "0"

    return-object v0
.end method

.method public get_def_location_providers_allowed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0005:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0005:Z

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    const-string v0, "gps"

    .line 360
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public get_def_power_save_3G()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, powerSave3g:Z
    sget-boolean v1, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0002:Z

    if-eqz v1, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 157
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_0
    return-object v1

    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method public get_def_roaming_sound_on()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0003:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0006:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isT0007:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0002:Z

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    const-string v0, "0"

    .line 275
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method public get_def_screen_off_timeout()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    const/high16 v0, 0x7f05

    .line 106
    .local v0, resId:I
    const/high16 v1, 0x7f05

    invoke-direct {p0, v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->getIntegerString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_sms_roaming_guard_allowed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 531
    const v0, 0x7f06001b

    .line 532
    .local v0, resId:I
    iget-object v1, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get_def_voice_roaming_allowed()Ljava/lang/String;
    .locals 4

    .prologue
    .line 453
    const v0, 0x7f060016

    .line 454
    .local v0, resId:I
    const v1, 0x7f060017

    .line 458
    .local v1, resId_sp:I
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isE0002:Z

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f060017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 461
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f060016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public get_def_voice_roaming_guard_allowed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 497
    const v0, 0x7f060019

    .line 498
    .local v0, resId:I
    iget-object v1, p0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f060019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
