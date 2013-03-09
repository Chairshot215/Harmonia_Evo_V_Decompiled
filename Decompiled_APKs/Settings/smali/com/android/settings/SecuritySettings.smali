.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_IMPROVE_REQUEST:I = 0x7c

.field private static final KEY_BIOMETRIC_WEAK_IMPROVE_MATCHING:Ljava/lang/String; = "biometric_weak_improve_matching"

.field private static final KEY_DEVICE_ADMIN:Ljava/lang/String; = "device_admin"

.field private static final KEY_INSTALL_CREDENTIALS:Ljava/lang/String; = "install_credentials"

.field private static final KEY_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_after_timeout"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "reset_credentials"

.field private static final KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final KEY_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "unlock_tactile_feedback"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final LAUNCH_CHOOSE_LOCK_DIRECT:Ljava/lang/String; = "launch_lock_direct"

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mResetCredentials:Lcom/htc/preference/HtcPreference;

.field private mShowPassword:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mTactileFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mVisiblePattern:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;

.field private simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

.field private simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 130
    new-instance v0, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    return-object v0
.end method

.method private createPreferenceHierarchy()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 28

    .prologue
    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v19

    .line 185
    .local v19, root:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v19, :cond_0

    .line 186
    invoke-virtual/range {v19 .. v19}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 188
    :cond_0
    const v25, 0x7f05002d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v19

    .line 191
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v12, intent:Landroid/content/Intent;
    const/16 v17, 0x0

    .line 194
    .local v17, resid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_a

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 196
    const v17, 0x7f050031

    .line 218
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 223
    const-string v14, "com.htc.speak"

    .line 225
    .local v14, packageName:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "com.htc.speak"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 227
    new-instance v16, Lcom/android/settings/framework/preference/security/HtcSpeakAnnouncePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/security/HtcSpeakAnnouncePreference;-><init>(Landroid/content/Context;)V

    .line 228
    .local v16, preference:Lcom/htc/preference/HtcPreference;
    const/16 v25, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOrder(I)V

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 231
    const-string v25, "security_category"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceCategory;

    .line 233
    .local v4, category:Lcom/htc/preference/HtcPreferenceCategory;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 243
    .end local v4           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v14           #packageName:Ljava/lang/String;
    .end local v16           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->supportEncryptTablet()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 245
    const-string v25, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 248
    .local v9, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v9}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    .line 264
    .end local v9           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_2
    :pswitch_0
    const-string v25, "visiblepattern"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 267
    const v25, 0x7f05002e

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v25

    const/high16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    .line 270
    const-string v25, "security_category"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v20

    check-cast v20, Lcom/htc/preference/HtcPreferenceGroup;

    .line 272
    .local v20, securityCategory:Lcom/htc/preference/HtcPreferenceGroup;
    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 273
    const-string v25, "visiblepattern"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 278
    .end local v20           #securityCategory:Lcom/htc/preference/HtcPreferenceGroup;
    :cond_3
    const-string v25, "unlock_tactile_feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 279
    const-string v25, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/Vibrator;

    invoke-virtual/range {v25 .. v25}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v25

    if-nez v25, :cond_4

    .line 280
    const-string v25, "security_category"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v20

    check-cast v20, Lcom/htc/preference/HtcPreferenceGroup;

    .line 282
    .restart local v20       #securityCategory:Lcom/htc/preference/HtcPreferenceGroup;
    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 288
    .end local v20           #securityCategory:Lcom/htc/preference/HtcPreferenceGroup;
    :cond_4
    const v25, 0x7f050032

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 291
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 294
    .local v2, activePhoneType:I
    sget-boolean v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-nez v25, :cond_11

    .line 295
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v25

    if-nez v25, :cond_5

    sget-boolean v25, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0002:Z

    if-nez v25, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v25

    if-nez v25, :cond_5

    sget-boolean v25, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0006:Z

    if-eqz v25, :cond_10

    .line 304
    :cond_5
    const-string v25, "sim_lock"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v23

    check-cast v23, Lcom/htc/preference/HtcPreferenceCategory;

    .line 305
    .local v23, sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v23, :cond_6

    .line 306
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 310
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v21

    .line 312
    .local v21, simLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_WORDING_CONFIG()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 313
    const v25, 0x7f0c062e

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 314
    const v25, 0x7f0c062f

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 325
    :goto_2
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 326
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v25, "com.android.settings"

    const-string v26, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 328
    new-instance v25, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    .line 329
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_WORDING_CONFIG()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    const v26, 0x7f0c0630

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 336
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 354
    .end local v21           #simLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v23           #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_7
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v22

    .line 357
    .local v22, simNetworkLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    const v25, 0x7f0c04e9

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 359
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 360
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v25, "com.android.phone"

    const-string v26, "com.android.phone.NetworkSimLock"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 363
    new-instance v25, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    const v26, 0x7f0c04ea

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 372
    .end local v22           #simNetworkLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_8
    const/4 v7, 0x0

    .line 373
    .local v7, devicePolicyVisible:Z
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 374
    .local v13, mActiveAdmins:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v6

    .line 375
    .local v6, cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v6, :cond_12

    .line 376
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_12

    .line 377
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 198
    .end local v2           #activePhoneType:I
    .end local v6           #cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v7           #devicePolicyVisible:Z
    .end local v11           #i:I
    .end local v13           #mActiveAdmins:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_9
    const v17, 0x7f05002f

    goto/16 :goto_0

    .line 200
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v25

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 202
    const v17, 0x7f05002e

    goto/16 :goto_0

    .line 204
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    goto/16 :goto_0

    .line 206
    :sswitch_0
    const v17, 0x7f050034

    .line 207
    goto/16 :goto_0

    .line 209
    :sswitch_1
    const v17, 0x7f050036

    .line 210
    goto/16 :goto_0

    .line 214
    :sswitch_2
    const v17, 0x7f050033

    goto/16 :goto_0

    .line 315
    .restart local v2       #activePhoneType:I
    .restart local v21       #simLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    .restart local v23       #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isAsiaCHSOpenChannel()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 316
    const v25, 0x7f0c0620

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 317
    const v25, 0x7f0c0621

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    goto/16 :goto_2

    .line 319
    :cond_d
    const v25, 0x7f0c09d8

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 320
    const v25, 0x7f0c09d9

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    goto/16 :goto_2

    .line 331
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isAsiaCHSOpenChannel()Z

    move-result v25

    if-eqz v25, :cond_f

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    const v26, 0x7f0c0622

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    goto/16 :goto_3

    .line 334
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v25, v0

    const v26, 0x7f0c09da

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    goto/16 :goto_3

    .line 341
    .end local v21           #simLockPreferences:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v23           #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_10
    const/16 v25, 0x2

    move/from16 v0, v25

    if-eq v0, v2, :cond_7

    .line 342
    const-string v25, "sim_lock"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;

    goto/16 :goto_4

    .line 346
    :cond_11
    const-string v25, "sim_lock"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v23

    check-cast v23, Lcom/htc/preference/HtcPreferenceCategory;

    .line 347
    .restart local v23       #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v23, :cond_7

    .line 348
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_4

    .line 380
    .end local v23           #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v6       #cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v7       #devicePolicyVisible:Z
    .restart local v13       #mActiveAdmins:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    new-instance v26, Landroid/content/Intent;

    const-string v27, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v26 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x80

    invoke-virtual/range {v25 .. v27}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 383
    .local v3, avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_15

    const/4 v5, 0x0

    .line 384
    .local v5, count:I
    :goto_6
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_7
    if-ge v11, v5, :cond_17

    .line 385
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 387
    .local v18, ri:Landroid/content/pm/ResolveInfo;
    :try_start_1
    new-instance v8, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 388
    .local v8, dpi:Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v25

    if-nez v25, :cond_13

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 391
    :cond_13
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "com.threelm.dm"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_14

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "com.redbend.vdmc"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v25

    if-eqz v25, :cond_16

    .line 384
    .end local v8           #dpi:Landroid/app/admin/DeviceAdminInfo;
    :cond_14
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 383
    .end local v5           #count:I
    .end local v11           #i:I
    .end local v18           #ri:Landroid/content/pm/ResolveInfo;
    :cond_15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_6

    .line 396
    .restart local v5       #count:I
    .restart local v8       #dpi:Landroid/app/admin/DeviceAdminInfo;
    .restart local v11       #i:I
    .restart local v18       #ri:Landroid/content/pm/ResolveInfo;
    :cond_16
    const/4 v7, 0x1

    .line 405
    .end local v8           #dpi:Landroid/app/admin/DeviceAdminInfo;
    .end local v18           #ri:Landroid/content/pm/ResolveInfo;
    :cond_17
    if-nez v7, :cond_18

    .line 406
    const-string v25, "manage_device_admin"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v16

    .line 407
    .restart local v16       #preference:Lcom/htc/preference/HtcPreference;
    if-eqz v16, :cond_18

    .line 408
    const-string v25, "device_admin"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 415
    .end local v16           #preference:Lcom/htc/preference/HtcPreference;
    :cond_18
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    .line 416
    .local v24, tm:Landroid/telephony/TelephonyManager;
    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_19

    .line 420
    const-string v25, "sim_lock"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v23

    check-cast v23, Lcom/htc/preference/HtcPreferenceCategory;

    .line 421
    .restart local v23       #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v23, :cond_19

    .line 422
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 428
    .end local v23           #sim_lock:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_19
    const-string v25, "show_password"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mShowPassword:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 431
    const-string v25, "reset_credentials"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/htc/preference/HtcPreference;

    .line 433
    const-string v25, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v25

    check-cast v25, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 446
    :cond_1a
    const-string v25, "INACTIVITY_TIME"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v16

    .line 448
    .restart local v16       #preference:Lcom/htc/preference/HtcPreference;
    if-eqz v16, :cond_1b

    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 454
    :cond_1b
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v25

    if-eqz v25, :cond_1c

    .line 455
    const-string v25, "install_credentials"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v15

    .line 456
    .local v15, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v15, :cond_1c

    .line 457
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 458
    const v25, 0x7f0c06ff

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 459
    const v25, 0x7f0c0700

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 467
    .end local v15           #pref:Lcom/htc/preference/HtcPreference;
    :cond_1c
    :goto_9
    return-object v19

    .line 399
    .end local v16           #preference:Lcom/htc/preference/HtcPreference;
    .end local v24           #tm:Landroid/telephony/TelephonyManager;
    .restart local v18       #ri:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v10

    .line 400
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v25, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Skipping "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 401
    .end local v10           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v10

    .line 402
    .local v10, e:Ljava/io/IOException;
    sget-object v25, Lcom/android/settings/SecuritySettings;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Skipping "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 461
    .end local v10           #e:Ljava/io/IOException;
    .end local v18           #ri:Landroid/content/pm/ResolveInfo;
    .restart local v15       #pref:Lcom/htc/preference/HtcPreference;
    .restart local v16       #preference:Lcom/htc/preference/HtcPreference;
    .restart local v24       #tm:Landroid/telephony/TelephonyManager;
    :cond_1d
    const v25, 0x7f0c06fd

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 462
    const v25, 0x7f0c06fe

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_9

    .line 235
    .end local v2           #activePhoneType:I
    .end local v3           #avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #count:I
    .end local v6           #cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v7           #devicePolicyVisible:Z
    .end local v11           #i:I
    .end local v13           #mActiveAdmins:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .end local v15           #pref:Lcom/htc/preference/HtcPreference;
    .end local v16           #preference:Lcom/htc/preference/HtcPreference;
    .end local v24           #tm:Landroid/telephony/TelephonyManager;
    .restart local v14       #packageName:Ljava/lang/String;
    :catch_2
    move-exception v25

    goto/16 :goto_1

    .line 248
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isToggled(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 593
    check-cast p1, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    return-void

    .line 477
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 4

    .prologue
    .line 484
    const v0, 0x1040013

    .line 485
    .local v0, positiveButtonId:I
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0003:Z

    if-eqz v1, :cond_0

    .line 486
    const v0, 0x7f0c001c

    .line 489
    :cond_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0ad8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 496
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 601
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 605
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_speak_announce"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 608
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    .line 619
    :goto_0
    return-void

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Lcom/htc/preference/HtcPreferenceScreen;

    .line 617
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->requestHandlers()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 499
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 500
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 503
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, launchlockdirect:Z
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "launch_lock_direct"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 161
    :cond_0
    if-eqz v0, :cond_1

    .line 162
    const-string v1, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v2, 0x7b

    const/4 v3, 0x0

    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->finish()V

    .line 167
    :cond_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 169
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 171
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->requestHandlers()V

    .line 178
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 181
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 507
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 508
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 511
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 543
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 546
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 548
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 622
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 554
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 557
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v5, "unlock_set_or_change"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 558
    const-string v3, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v5, 0x7b

    invoke-virtual {p0, p0, v3, v5, v6}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 588
    :cond_0
    :goto_0
    return v4

    .line 560
    :cond_1
    const-string v5, "biometric_weak_improve_matching"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 561
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 563
    .local v0, helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v3, 0x7c

    invoke-virtual {v0, v3, v6, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 567
    .end local v0           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_2
    const-string v5, "lockenabled"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 568
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 569
    :cond_3
    const-string v5, "visiblepattern"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 570
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 571
    :cond_4
    const-string v5, "unlock_tactile_feedback"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 572
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_0

    .line 573
    :cond_5
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v5, :cond_7

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_password"

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_6

    move v3, v4

    :cond_6
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 576
    :cond_7
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v5, :cond_9

    .line 577
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 578
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 579
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    goto :goto_0

    .line 581
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0

    .line 585
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 515
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 519
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Lcom/htc/preference/HtcPreferenceScreen;

    .line 521
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 522
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_0

    .line 523
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 529
    :cond_1
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_password"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 532
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    .line 533
    .local v1, state:Landroid/security/KeyStore$State;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Lcom/htc/preference/HtcPreference;

    sget-object v5, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v1, v5, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 535
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v4, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 538
    return-void

    .end local v1           #state:Landroid/security/KeyStore$State;
    :cond_3
    move v2, v4

    .line 529
    goto :goto_0
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 626
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 627
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 629
    return-void
.end method
