.class public Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;
.super Lcom/htc/preference/HtcSeekBarDialogPreference;
.source "PowerSaverBrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;


# instance fields
.field protected mAutomaticAvailable:Z

.field protected mCheckBox:Landroid/widget/CheckBox;

.field protected mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

.field protected mOldAutomaticMode:I

.field protected mOldBrightness:I

.field private mPowerSaverSharedpref:Landroid/content/SharedPreferences;

.field private mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

.field protected mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->initialize(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->initialize(Landroid/content/Context;)V

    .line 83
    return-void
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "parent"

    .prologue
    .line 326
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z
    .locals 1
    .parameter "parent"
    .parameter "order"

    .prologue
    .line 338
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setOrder(I)V

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 89
    const-string v0, "powersaver_shared"

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    .line 91
    const v0, 0x7f0c09c6

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setDialogTitle(I)V

    .line 95
    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setDialogLayoutResource(I)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mAutomaticAvailable:Z

    .line 105
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 111
    invoke-static {}, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSwitcher;->getInstance()Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSysBrightnessAuto(Landroid/content/ContentResolver;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mOldAutomaticMode:I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSysBrightness(Landroid/content/ContentResolver;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mOldBrightness:I

    .line 119
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v6, "powersaver_screen_brightness_settings_auto"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, AutomaticMode:I
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v6, "powersaver_screen_brightness_settings"

    const/16 v7, 0x66

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, Brightness:I
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 128
    .local v2, icon:Landroid/widget/ImageView;
    const v3, 0x7f020072

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 129
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    invoke-static {p1}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 139
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-interface {v3, v6}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->setProgressMax(Landroid/widget/SeekBar;)V

    .line 140
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    invoke-interface {v6, v1}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->encodeBrightness(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 143
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 145
    if-ne v0, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 151
    :cond_0
    const v3, 0x7f080101

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 152
    iget-boolean v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v3, :cond_4

    .line 154
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-ne v0, v4, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 156
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 165
    :goto_1
    new-instance v3, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    .line 167
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {v3, p0}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->setOnScreenOnOffListener(Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;)V

    .line 168
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {v3}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->registerReceiver()V

    .line 172
    iget-boolean v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v3, :cond_2

    .line 174
    iget v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mOldAutomaticMode:I

    if-eq v3, v0, :cond_1

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setAutomaticMode(I)V

    .line 178
    :cond_1
    if-nez v0, :cond_2

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setUnderlyingBrightness(I)V

    .line 182
    :cond_2
    return-void

    :cond_3
    move v3, v5

    .line 154
    goto :goto_0

    .line 161
    :cond_4
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 188
    if-eqz p2, :cond_0

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setAutomaticMode(I)V

    .line 196
    :goto_0
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setAutomaticMode(I)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setUnderlyingBrightness(I)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 14
    .parameter "positiveResult"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onDialogClosed(Z)V

    .line 218
    iget-object v10, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {v10}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->unregisterReceiver()V

    .line 220
    const-string v4, "powersaver_status"

    .line 221
    .local v4, KEY_POWERSAVER_STATUS:Ljava/lang/String;
    const/16 v6, 0x1f41

    .line 222
    .local v6, POWERSAVER_STATUS:I
    const/16 v5, 0x1f40

    .line 223
    .local v5, NORMAL_STATUS:I
    const/16 v3, 0x1f40

    .line 225
    .local v3, DefaultStatus:I
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 226
    .local v7, cr:Landroid/content/ContentResolver;
    const-string v10, "powersaver_status"

    const/16 v11, 0x1f40

    invoke-static {v7, v10, v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 228
    .local v2, CurrentStatus:I
    iget-object v10, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getProgress()I

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v1

    .line 229
    .local v1, CurrentBrightness:I
    iget-object v10, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v0, 0x1

    .line 231
    .local v0, CurrentAuto:I
    :goto_0
    const-string v10, "PowerSaver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CurrentStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v10, "PowerSaver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CurrentBrightness: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v10, "PowerSaver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CurrentAuto: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v10, "PowerSaver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "positiveResult: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-eqz p1, :cond_0

    .line 238
    iget-object v10, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "powersaver_screen_brightness_settings"

    invoke-interface {v10, v11, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    iget-object v10, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "powersaver_screen_brightness_settings_auto"

    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    if-nez v0, :cond_4

    .line 243
    mul-int/lit8 v10, v1, 0x64

    div-int/lit16 v9, v10, 0xff

    .line 244
    .local v9, value:I
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0c059d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    .end local v9           #value:I
    :cond_0
    :goto_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v8, uiChangeIntent:Landroid/content/Intent;
    const-string v10, "POWERSAVER_UI_STATE_CHANGE"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v10, "PowerSaver"

    const-string v11, "the change preference is powersaver_screen_brightness"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v10, "CHANGE_UI_NAME"

    const-string v11, "powersaver_screen_brightness"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v10, "CHANGE_UI_VALUE"

    invoke-virtual {v8, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    iget-boolean v10, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v10, :cond_5

    const/16 v10, 0x1f41

    if-eq v2, v10, :cond_5

    .line 264
    iget v10, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mOldAutomaticMode:I

    if-eq v10, v0, :cond_1

    .line 266
    iget v10, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mOldAutomaticMode:I

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setAutomaticMode(I)V

    .line 270
    :cond_1
    iget v10, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mOldAutomaticMode:I

    if-nez v10, :cond_2

    .line 272
    const-string v10, "PowerSaver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mOldBrightness: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mOldBrightness:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v10, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mOldBrightness:I

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setUnderlyingBrightness(I)V

    .line 281
    :cond_2
    :goto_2
    return-void

    .line 229
    .end local v0           #CurrentAuto:I
    .end local v8           #uiChangeIntent:Landroid/content/Intent;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 248
    .restart local v0       #CurrentAuto:I
    :cond_4
    const v10, 0x7f0c059e

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setSummary(I)V

    goto :goto_1

    .line 276
    .restart local v8       #uiChangeIntent:Landroid/content/Intent;
    :cond_5
    const/16 v10, 0x1f41

    if-ne v2, v10, :cond_2

    .line 279
    const-string v10, "screen_brightness"

    invoke-static {v7, v10, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    invoke-interface {v0, p2}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->setUnderlyingBrightness(I)V

    .line 203
    return-void
.end method

.method public onScreenOnOffChanged(Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 347
    iget-boolean v0, p1, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;->powerOn:Z

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mOldBrightness:I

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 207
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 211
    return-void
.end method

.method protected setAutomaticMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 309
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 316
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setUnderlyingBrightness(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 290
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 293
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 294
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
