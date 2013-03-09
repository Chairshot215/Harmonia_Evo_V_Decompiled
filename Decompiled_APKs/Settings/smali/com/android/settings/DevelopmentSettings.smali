.class public Lcom/android/settings/DevelopmentSettings;
.super Lcom/htc/preference/HtcPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "allow_mock_location"

.field private static final APP_PROCESS_LIMIT_KEY:Ljava/lang/String; = "app_process_limit"

.field private static final ENABLE_ADB:Ljava/lang/String; = "enable_adb"

.field private static final FORCE_HARDWARE_UI_KEY:Ljava/lang/String; = "force_hw_ui"

.field private static final HARDWARE_UI_PROPERTY:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final HDCP_CHECKING_KEY:Ljava/lang/String; = "hdcp_checking"

.field private static final HDCP_CHECKING_PROPERTY:Ljava/lang/String; = "persist.sys.hdcp_checking"

.field private static final IMMEDIATELY_DESTROY_ACTIVITIES_KEY:Ljava/lang/String; = "immediately_destroy_activities"

.field private static final KEEP_SCREEN_ON:Ljava/lang/String; = "keep_screen_on"

.field private static final LOCAL_BACKUP_PASSWORD:Ljava/lang/String; = "local_backup_password"

.field private static final POINTER_LOCATION_KEY:Ljava/lang/String; = "pointer_location"

.field private static final SHOW_ALL_ANRS_KEY:Ljava/lang/String; = "show_all_anrs"

.field private static final SHOW_CPU_USAGE_KEY:Ljava/lang/String; = "show_cpu_usage"

.field private static final SHOW_SCREEN_UPDATES_KEY:Ljava/lang/String; = "show_screen_updates"

.field private static final SHOW_TOUCHES_KEY:Ljava/lang/String; = "show_touches"

.field private static final STRICT_MODE_KEY:Ljava/lang/String; = "strict_mode"

.field private static final TAG:Ljava/lang/String; = "DevelopmentSettings"

.field private static final TRANSITION_ANIMATION_SCALE_KEY:Ljava/lang/String; = "transition_animation_scale"

.field private static final VERIFIER_DEVICE_IDENTIFIER:Ljava/lang/String; = "verifier_device_identifier"

.field private static final WINDOW_ANIMATION_SCALE_KEY:Ljava/lang/String; = "window_animation_scale"


# instance fields
.field private mAllowMockLocation:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mAppProcessLimit:Lcom/htc/preference/HtcListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mForceHardwareUi:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mImmediatelyDestroyActivities:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mOkClicked:Z

.field private mOkDialog:Landroid/app/Dialog;

.field private mPassword:Lcom/htc/preference/HtcPreferenceScreen;

.field private mPointerLocation:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mShowAllANRs:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mShowCpuUsage:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mShowScreenUpdates:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mShowTouches:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mStrictMode:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

.field private mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;-><init>()V

    return-void
.end method

.method private currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 254
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    :goto_0
    return v1

    .line 257
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 258
    .local v0, enabled:Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private removeHdcpOptionsForProduction()V
    .locals 3

    .prologue
    .line 183
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "hdcp_checking"

    invoke-virtual {p0, v1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 185
    .local v0, hdcpChecking:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 190
    .end local v0           #hdcpChecking:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 391
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/htc/preference/HtcListPreference;)V

    .line 392
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/htc/preference/HtcListPreference;)V

    .line 393
    return-void
.end method

.method private updateAnimationScaleValue(ILcom/htc/preference/HtcListPreference;)V
    .locals 6
    .parameter "which"
    .parameter "pref"

    .prologue
    .line 374
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 375
    .local v1, scale:F
    invoke-virtual {p2}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 376
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 377
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 378
    .local v2, val:F
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_0

    .line 379
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 380
    invoke-virtual {p2}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 388
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v2           #val:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 376
    .restart local v0       #i:I
    .restart local v1       #scale:F
    .restart local v2       #val:F
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    .end local v2           #val:F
    :cond_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 385
    invoke-virtual {p2}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 386
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 406
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 407
    .local v1, limit:I
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 408
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 409
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 410
    .local v2, val:I
    if-lt v2, v1, :cond_0

    .line 411
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 412
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 420
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v2           #val:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 408
    .restart local v0       #i:I
    .restart local v1       #limit:I
    .restart local v2       #val:I
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    .end local v2           #val:I
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Lcom/htc/preference/HtcListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 417
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 418
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 344
    return-void
.end method

.method private updateFlingerOptions()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 296
    :try_start_0
    const-string v8, "SurfaceFlinger"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 297
    .local v2, flinger:Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 299
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 300
    .local v3, reply:Landroid/os/Parcel;
    const-string v8, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    const/16 v8, 0x3f2

    const/4 v9, 0x0

    invoke-interface {v2, v8, v0, v3, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 303
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 305
    .local v5, showCpu:I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    .local v1, enableGL:I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 307
    .local v6, showUpdates:I
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 309
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 310
    .local v4, showBackground:I
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #enableGL:I
    .end local v2           #flinger:Landroid/os/IBinder;
    .end local v3           #reply:Landroid/os/Parcel;
    .end local v4           #showBackground:I
    .end local v5           #showCpu:I
    .end local v6           #showUpdates:I
    :cond_1
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 335
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 218
    const/4 v3, 0x1

    .line 219
    .local v3, index:I
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 220
    .local v1, hdcpChecking:Lcom/htc/preference/HtcListPreference;
    if-eqz v1, :cond_1

    .line 221
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, currentValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, summaries:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 225
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 226
    move v3, v2

    .line 230
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 231
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 234
    .end local v0           #currentValue:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #summaries:[Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_1
    return-void

    .line 224
    .restart local v0       #currentValue:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v4       #summaries:[Ljava/lang/String;
    .restart local v5       #values:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 370
    return-void
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0c54

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 246
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Lcom/htc/preference/HtcPreferenceScreen;

    const v1, 0x7f0c0c53

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 281
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 438
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 440
    return-void
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 291
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 270
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 271
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILcom/htc/preference/HtcListPreference;Ljava/lang/Object;)V
    .locals 2
    .parameter "which"
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 397
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 398
    .local v0, scale:F
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 399
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/htc/preference/HtcListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v0           #scale:F
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 424
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 425
    .local v0, limit:I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 426
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v0           #limit:I
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    .line 348
    .local v1, value:Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 352
    .local v0, service:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 357
    :goto_1
    return-void

    .line 348
    .end local v0           #service:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 355
    .restart local v0       #service:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeFlingerOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 319
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 320
    .local v1, flinger:Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 322
    .local v0, data:Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/16 v2, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #flinger:Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 338
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void

    .line 338
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 361
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 267
    :goto_1
    return-void

    .line 263
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 521
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 522
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mOkClicked:Z

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 125
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 128
    const v3, 0x7f05000c

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 130
    const-string v3, "enable_adb"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 149
    const-string v3, "keep_screen_on"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 150
    const-string v3, "allow_mock_location"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 151
    const-string v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Lcom/htc/preference/HtcPreferenceScreen;

    .line 153
    const-string v3, "strict_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 154
    const-string v3, "pointer_location"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 155
    const-string v3, "show_touches"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 156
    const-string v3, "show_screen_updates"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 157
    const-string v3, "show_cpu_usage"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 158
    const-string v3, "force_hw_ui"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 159
    const-string v3, "window_animation_scale"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    .line 160
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 161
    const-string v3, "transition_animation_scale"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    .line 162
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 164
    const-string v3, "immediately_destroy_activities"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 166
    const-string v3, "app_process_limit"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Lcom/htc/preference/HtcListPreference;

    .line 167
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 169
    const-string v3, "show_all_anrs"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 172
    const-string v3, "verifier_device_identifier"

    invoke-virtual {p0, v3}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 173
    .local v1, verifierDeviceIdentifier:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 174
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v2

    .line 175
    .local v2, verifierIndentity:Landroid/content/pm/VerifierDeviceIdentity;
    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v2}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->removeHdcpOptionsForProduction()V

    .line 180
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialog()V

    .line 541
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onDestroy()V

    .line 542
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 536
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 497
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 511
    :goto_0
    return v0

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v2, :cond_1

    .line 502
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/htc/preference/HtcListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v2, :cond_2

    .line 505
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/htc/preference/HtcListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 507
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v2, :cond_3

    .line 508
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 511
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 445
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return v1

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 450
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 451
    iput-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mOkClicked:Z

    .line 452
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialog()V

    .line 453
    :cond_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0b90

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0b8f

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    invoke-virtual {v0, v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040009

    invoke-virtual {v0, v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    .line 460
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 462
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "stay_on_while_plugged_in"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 470
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    .line 474
    :cond_8
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_9

    .line 475
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 476
    :cond_9
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 477
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 478
    :cond_a
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_b

    .line 479
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 480
    :cond_b
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 481
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeFlingerOptions()V

    goto/16 :goto_0

    .line 482
    :cond_c
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_d

    .line 483
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 484
    :cond_d
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_e

    .line 485
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 486
    :cond_e
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_f

    .line 487
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 488
    :cond_f
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onResume()V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 199
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 201
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v4, "mock_location"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 203
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 204
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePasswordSummary()V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 207
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V

    .line 209
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 211
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 215
    return-void

    :cond_0
    move v1, v3

    .line 197
    goto :goto_0

    :cond_1
    move v1, v3

    .line 199
    goto :goto_1

    :cond_2
    move v2, v3

    .line 201
    goto :goto_2
.end method
