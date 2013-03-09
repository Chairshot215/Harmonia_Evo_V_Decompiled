.class public Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;
.super Lcom/htc/preference/HtcSeekBarDialogPreference;
.source "HtcBrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnStopListener;


# static fields
.field public static final KEY:Ljava/lang/String; = "BRIGHTNESS"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAutomaticAvailable:Z

.field protected mCheckBox:Landroid/widget/CheckBox;

.field protected mIsOnPause:Z

.field protected mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

.field protected mOldAutomaticMode:I

.field protected mOldBrightness:I

.field private mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

.field protected mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mIsOnPause:Z

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->initialize(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mIsOnPause:Z

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->initialize(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method private restore()V
    .locals 3

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_0

    .line 408
    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldAutomaticMode:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setAutomaticMode(I)V

    .line 415
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldAutomaticMode:I

    if-nez v0, :cond_2

    .line 417
    :cond_1
    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingBrightness(I)V

    .line 420
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    return-void
.end method


# virtual methods
.method protected Log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 532
    sget-object v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "parent"

    .prologue
    .line 481
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z
    .locals 1
    .parameter "parent"
    .parameter "order"

    .prologue
    .line 493
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setOrder(I)V

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const v1, 0x7f0c09c6

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    const-string v0, "BRIGHTNESS"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setKey(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setTitle(I)V

    .line 111
    const v0, 0x7f0c09c7

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setSummary(I)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setDialogTitle(I)V

    .line 116
    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setDialogLayoutResource(I)V

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutomaticAvailable:Z

    .line 126
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 132
    invoke-static {}, Lcom/android/settings/framework/preference/display/HtcBrightnessMappingSwitcher;->getInstance()Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldAutomaticMode:I

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness"

    const/16 v6, 0xff

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightness:I

    .line 156
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 157
    .local v1, icon:Landroid/widget/ImageView;
    const v2, 0x7f020072

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 158
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    invoke-static {p1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 168
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-interface {v2, v5}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->setProgressMax(Landroid/widget/SeekBar;)V

    .line 169
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget v6, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightness:I

    invoke-interface {v5, v6}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->encodeBrightness(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 172
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 177
    const v2, 0x7f080101

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 179
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "common_checkbox"

    const v7, 0x2080012

    invoke-static {v5, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 185
    iget-boolean v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v2, :cond_2

    .line 186
    iget v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldAutomaticMode:I

    if-ne v2, v3, :cond_0

    move v0, v3

    .line 191
    .local v0, enable:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setBrightnessBarVisibility(Z)V

    .line 203
    .end local v0           #enable:Z
    :goto_2
    new-instance v2, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    .line 205
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {v2, p0}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->setOnScreenOnOffListener(Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;)V

    .line 206
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {v2}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->registerReceiver()V

    .line 207
    return-void

    :cond_0
    move v0, v4

    .line 186
    goto :goto_0

    .restart local v0       #enable:Z
    :cond_1
    move v3, v4

    .line 196
    goto :goto_1

    .line 199
    .end local v0           #enable:Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setBrightnessBarVisibility(Z)V

    .line 243
    if-eqz p2, :cond_1

    .line 244
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setAutomaticMode(I)V

    .line 267
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 241
    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setAutomaticMode(I)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingBrightness(I)V

    goto :goto_1
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onClick()V

    .line 232
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 372
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onDialogClosed(Z)V

    .line 374
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mScreenOnOffReceiver:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->unregisterReceiver()V

    .line 376
    if-eqz p1, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 383
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.action.BRIGHTNESS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mIsOnPause:Z

    if-nez v1, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->restore()V

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mIsOnPause:Z

    .line 358
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    invoke-interface {v0, p2}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingBrightness(I)V

    .line 297
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 312
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mIsOnPause:Z

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldAutomaticMode:I

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightness:I

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget v4, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldBrightness:I

    invoke-interface {v3, v4}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->encodeBrightness(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 343
    iget v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mOldAutomaticMode:I

    if-ne v2, v0, :cond_1

    .line 348
    .local v0, enable:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 352
    .end local v0           #enable:Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 343
    goto :goto_0
.end method

.method public onScreenOnOffChanged(Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 508
    iget-boolean v0, p1, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;->powerOn:Z

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->setUnderlyingBrightness(I)V

    .line 524
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mMappingScheme:Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/settings/framework/preference/display/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 301
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 366
    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->restore()V

    .line 368
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 305
    return-void
.end method

.method protected setAutomaticMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    return-void
.end method

.method protected setBrightnessBarVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setUnderlyingBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 438
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 441
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 442
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 450
    .end local v1           #power:Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 444
    .restart local v1       #power:Landroid/os/IPowerManager;
    :cond_0
    sget-object v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    const-string v3, "Set the backlight brightness failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;->TAG:Ljava/lang/String;

    const-string v3, "Set the backlight brightness failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
