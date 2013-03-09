.class public Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;
.super Landroid/app/Activity;
.source "PowersaverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final SET_ALL_SETTINGS:I

.field private TAG:Ljava/lang/String;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mContentresolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private mPowerSaverSharedpref:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const-string v0, "PowersaverActivity"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->TAG:Ljava/lang/String;

    .line 53
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->SET_ALL_SETTINGS:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mConfirmDialog:Landroid/app/Dialog;

    .line 126
    new-instance v0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$1;-><init>(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    new-instance v0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$2;-><init>(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private CreateDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 82
    iget-object v5, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->TAG:Ljava/lang/String;

    const-string v6, "[PSaver]CreateDialog"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 84
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "level"

    const/16 v6, 0x19

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 86
    .local v3, level:I
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 87
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v6, 0x7f04005b

    const v5, 0x7f0800f6

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 91
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0800f8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    .local v0, dialogmsg:Landroid/widget/TextView;
    const v5, 0x7f0c05aa

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c058b

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0200f8

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v5, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mConfirmDialog:Landroid/app/Dialog;

    .line 105
    const v5, 0x7f0800f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mCheckbox:Landroid/widget/CheckBox;

    .line 106
    iget-object v5, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->setAllSettings()V

    return-void
.end method

.method private setAllSettings()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->TAG:Ljava/lang/String;

    const-string v1, "[PSaver]setAllSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->setBackgroundData()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->setHapicFeedback()V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->setWifi()V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->setBluetooth()V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->setBrightness()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->setTimeOut()V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->setOnscreenAnimations()V

    .line 165
    return-void
.end method

.method private setBackgroundData()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v1, "powersaver_backgrounddata"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mContentresolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysBackgroundData(Landroid/content/ContentResolver;ILandroid/content/Context;)V

    .line 208
    :cond_0
    return-void
.end method

.method private setBluetooth()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v1, "powersaver_bluetooth"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysBluetooth(Z)V

    .line 196
    :cond_0
    return-void
.end method

.method private setBrightness()V
    .locals 5

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v3, "powersaver_screen_brightness"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v3, "powersaver_screen_brightness_settings"

    const/16 v4, 0x66

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, brightness:I
    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v3, "powersaver_screen_brightness_settings_auto"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 188
    .local v1, brightness_mode:I
    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mContentresolver:Landroid/content/ContentResolver;

    invoke-static {v2, v1, v0}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysBrightness(Landroid/content/ContentResolver;II)V

    .line 190
    .end local v0           #brightness:I
    .end local v1           #brightness_mode:I
    :cond_0
    return-void
.end method

.method private setHapicFeedback()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v1, "powersaver_haptic_feedback"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mContentresolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysHapicFeedback(Landroid/content/ContentResolver;I)V

    .line 214
    :cond_0
    return-void
.end method

.method private setOnscreenAnimations()V
    .locals 4

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v2, "powersaver_onscreen_animation"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const/4 v1, 0x2

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 170
    .local v0, mAnimationScales:[F
    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysOnscreenAnimations([F)V

    .line 172
    .end local v0           #mAnimationScales:[F
    :cond_0
    return-void

    .line 169
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private setTimeOut()V
    .locals 4

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v2, "powersaver_screen_timeout"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v2, "powersaver_screen_timeout_settings"

    const/16 v3, 0x7530

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, value:I
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mContentresolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysTimeOut(Landroid/content/ContentResolver;I)V

    .line 179
    .end local v0           #value:I
    :cond_0
    return-void
.end method

.method private setWifi()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v1, "powersaver_wifi"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysWifi(Landroid/content/Context;Z)V

    .line 202
    :cond_0
    return-void
.end method

.method private storeNormalsettings()V
    .locals 4

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->TAG:Ljava/lang/String;

    const-string v2, "[PSaver]storeNormalsettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "psaver_normal_bgdata"

    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mContentresolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSysBackgroundData(Landroid/content/ContentResolver;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSysOnscreenAnimations()[F

    move-result-object v0

    .line 225
    .local v0, animation:[F
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "psaver_normal_animation_0"

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "psaver_normal_animation_1"

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "psaver_normal_screen_timeout"

    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mContentresolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSysTimeOut(Landroid/content/ContentResolver;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "psaver_normal_brightness"

    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mContentresolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSysBrightness(Landroid/content/ContentResolver;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "psaver_normal_autobrightness"

    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mContentresolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSysBrightnessAuto(Landroid/content/ContentResolver;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "psaver_normal_bluetooth"

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSysBluetooth()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "psaver_normal_wifi"

    invoke-static {p0}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSysWifi(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "psaver_normal_haptic_feedback"

    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mContentresolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSysHapicFeedback(Landroid/content/ContentResolver;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 144
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->setAllSettings()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 153
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->TAG:Ljava/lang/String;

    const-string v2, "[PSaver]onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mContentresolver:Landroid/content/ContentResolver;

    .line 67
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mContentresolver:Landroid/content/ContentResolver;

    const/16 v2, 0x1f41

    invoke-static {v1, v2}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setStatus(Landroid/content/ContentResolver;I)V

    .line 68
    const-string v1, "powersaver_shared"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    .line 69
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->storeNormalsettings()V

    .line 70
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v2, "powersaver_notification"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->CreateDialog()V

    .line 72
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 77
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.POWERSAVER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, itf:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void

    .line 74
    .end local v0           #itf:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xfa0

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->TAG:Ljava/lang/String;

    const-string v1, "[PSaver]onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mConfirmDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->TAG:Ljava/lang/String;

    const-string v1, "[PSaver]onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->finish()V

    .line 124
    return-void
.end method
