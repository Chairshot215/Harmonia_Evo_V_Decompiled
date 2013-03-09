.class public Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;
.super Lcom/htc/preference/HtcSeekBarDialogPreference;
.source "SpeedSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/settings/SpeedSeekBarPreference$OnProgressSubmittedListener;
    }
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDynamicSpeedEnable:Z

.field private mOnProgressSubmittedListener:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference$OnProgressSubmittedListener;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarMax:I

.field private mSeekBarProgress:I

.field private final mSettingsPackageName:Ljava/lang/String;

.field private mShowDynamicSpeedCheckBox:Z

.field private mTmpSeekBarProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 47
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBarMax:I

    .line 48
    iput v1, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBarProgress:I

    .line 49
    iput v1, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mTmpSeekBarProgress:I

    .line 53
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSettingsPackageName:Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->initialize(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    sget v0, Lcom/htc/android/htcime/settings/KeyboardSettings;->sHtcSenseVer:F

    const/high16 v1, 0x4080

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mShowDynamicSpeedCheckBox:Z

    .line 67
    iput-object p1, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mContext:Landroid/content/Context;

    .line 68
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBarMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBarProgress:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 100
    invoke-static {p1}, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 101
    iget-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 102
    iget-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v7, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBarMax:I

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 104
    iget-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v7, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBarProgress:I

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 106
    new-instance v0, Lcom/htc/android/htcime/util/APKResTool;

    const-string v5, "com.android.settings"

    iget-object v7, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v7}, Lcom/htc/android/htcime/util/APKResTool;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 107
    .local v0, apkTool:Lcom/htc/android/htcime/util/APKResTool;
    const-string v5, "automatic_mode"

    invoke-virtual {v0, v5}, Lcom/htc/android/htcime/util/APKResTool;->getIdByName(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, checkboxid:I
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 110
    iget-boolean v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mShowDynamicSpeedCheckBox:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_2

    .line 112
    iget-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 113
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v5, "handwriting_settings_dynamic_writing_stroke_speed"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mDynamicSpeedEnable:Z

    .line 117
    .local v2, enable:Z
    iget-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 118
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const v7, 0x7f090094

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    iget-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    if-nez v2, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->setSpeedBarVisibility(Z)V

    .line 131
    .end local v2           #enable:Z
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    return-void

    .restart local v2       #enable:Z
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #sp:Landroid/content/SharedPreferences;
    :cond_1
    move v5, v6

    .line 126
    goto :goto_0

    .line 127
    .end local v2           #enable:Z
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    .line 129
    iget-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 137
    iput-boolean p2, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mDynamicSpeedEnable:Z

    .line 138
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->setSpeedBarVisibility(Z)V

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 8

    .prologue
    .line 73
    iget-boolean v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mShowDynamicSpeedCheckBox:Z

    if-nez v5, :cond_0

    .line 74
    invoke-super {p0}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v5

    .line 94
    :goto_0
    return-object v5

    .line 77
    :cond_0
    new-instance v1, Lcom/htc/android/htcime/util/APKResTool;

    const-string v5, "com.android.settings"

    iget-object v6, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5, v6}, Lcom/htc/android/htcime/util/APKResTool;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 78
    .local v1, apkTool:Lcom/htc/android/htcime/util/APKResTool;
    const-string v5, "preference_dialog_brightness"

    invoke-virtual {v1, v5}, Lcom/htc/android/htcime/util/APKResTool;->getLayoutXMLByName(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 80
    .local v0, SettingParser:Lorg/xmlpull/v1/XmlPullParser;
    if-nez v0, :cond_1

    .line 81
    invoke-super {p0}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 83
    :cond_1
    const/4 v4, 0x0

    .line 87
    .local v4, setting_context:Landroid/content/Context;
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mContext:Landroid/content/Context;

    const-string v6, "com.android.settings"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 93
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 94
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 88
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :catch_0
    move-exception v2

    .line 89
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "SpeedSeekBarPreference"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v5

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->onDialogClosed(Z)V

    .line 158
    if-eqz p1, :cond_1

    .line 159
    iget v1, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mTmpSeekBarProgress:I

    iput v1, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBarProgress:I

    .line 162
    iget-object v1, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mOnProgressSubmittedListener:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference$OnProgressSubmittedListener;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mOnProgressSubmittedListener:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference$OnProgressSubmittedListener;

    iget v2, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBarProgress:I

    invoke-interface {v1, p0, v2}, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference$OnProgressSubmittedListener;->onProgressSubmitted(Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;I)V

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "handwriting_settings_dynamic_writing_stroke_speed"

    iget-boolean v3, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mDynamicSpeedEnable:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 143
    iput p2, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mTmpSeekBarProgress:I

    .line 145
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 149
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 153
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 172
    iput p1, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBarMax:I

    .line 173
    return-void
.end method

.method public setOnProgressSubmittedListener(Lcom/htc/android/htcime/settings/SpeedSeekBarPreference$OnProgressSubmittedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mOnProgressSubmittedListener:Lcom/htc/android/htcime/settings/SpeedSeekBarPreference$OnProgressSubmittedListener;

    .line 206
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 180
    iput p1, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBarProgress:I

    iput p1, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mTmpSeekBarProgress:I

    .line 181
    return-void
.end method

.method protected setSpeedBarVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/settings/SpeedSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method
