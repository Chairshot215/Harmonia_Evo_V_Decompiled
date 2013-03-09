.class public Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation


# static fields
.field private static final ALWAY_SHOW_TUTORIAL:Z = true

.field private static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final FALLBACK_REQUEST:I = 0x65

.field private static final KEY_UNLOCK_BACKUP_INFO:Ljava/lang/String; = "unlock_backup_info"

.field private static final KEY_UNLOCK_SET_BIOMETRIC_WEAK:Ljava/lang/String; = "unlock_set_biometric_weak"

.field private static final KEY_UNLOCK_SET_NONE:Ljava/lang/String; = "unlock_set_none"

.field private static final KEY_UNLOCK_SET_OFF:Ljava/lang/String; = "unlock_set_off"

.field private static final KEY_UNLOCK_SET_PASSWORD:Ljava/lang/String; = "unlock_set_password"

.field private static final KEY_UNLOCK_SET_PATTERN:Ljava/lang/String; = "unlock_set_pattern"

.field private static final KEY_UNLOCK_SET_PIN:Ljava/lang/String; = "unlock_set_pin"

.field public static final MINIMUM_QUALITY_KEY:Ljava/lang/String; = "minimum_quality"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final PASSWORD_CONFIRMED:Ljava/lang/String; = "password_confirmed"

.field private static final PASSWORD_REQUESTED:Ljava/lang/String; = "password_requested"


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPasswordConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    return-void
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 298
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableUnusablePreferences(I)V
    .locals 12
    .parameter "quality"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 253
    .local v1, entries:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 255
    .local v4, onlyShowFallback:Z
    iget-object v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v7

    .line 257
    .local v7, weakBiometricAvailable:Z
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_10

    .line 258
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 259
    .local v5, pref:Lcom/htc/preference/HtcPreference;
    instance-of v8, v5, Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v8, :cond_2

    move-object v8, v5

    .line 260
    check-cast v8, Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v8}, Lcom/htc/preference/HtcPreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 262
    .local v0, enabled:Z
    const/4 v6, 0x1

    .line 263
    .local v6, visible:Z
    const-string v8, "unlock_backup_info"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 264
    const v8, 0x7f040098

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    .line 265
    move v6, v4

    .line 280
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    if-eqz v4, :cond_f

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 281
    :cond_1
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 257
    .end local v0           #enabled:Z
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #visible:Z
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 266
    .restart local v0       #enabled:Z
    .restart local v3       #key:Ljava/lang/String;
    .restart local v6       #visible:Z
    :cond_3
    const-string v8, "unlock_set_off"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 267
    if-gtz p1, :cond_4

    move v0, v9

    :goto_3
    goto :goto_1

    :cond_4
    move v0, v10

    goto :goto_3

    .line 268
    :cond_5
    const-string v8, "unlock_set_none"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 269
    if-gtz p1, :cond_6

    move v0, v9

    :goto_4
    goto :goto_1

    :cond_6
    move v0, v10

    goto :goto_4

    .line 270
    :cond_7
    const-string v8, "unlock_set_biometric_weak"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 271
    const v8, 0x8000

    if-gt p1, v8, :cond_8

    move v0, v9

    .line 272
    :goto_5
    move v6, v7

    goto :goto_1

    :cond_8
    move v0, v10

    .line 271
    goto :goto_5

    .line 273
    :cond_9
    const-string v8, "unlock_set_pattern"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 274
    const/high16 v8, 0x1

    if-gt p1, v8, :cond_a

    move v0, v9

    :goto_6
    goto :goto_1

    :cond_a
    move v0, v10

    goto :goto_6

    .line 275
    :cond_b
    const-string v8, "unlock_set_pin"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 276
    const/high16 v8, 0x2

    if-gt p1, v8, :cond_c

    move v0, v9

    :goto_7
    goto :goto_1

    :cond_c
    move v0, v10

    goto :goto_7

    .line 277
    :cond_d
    const-string v8, "unlock_set_password"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 278
    const/high16 v8, 0x6

    if-gt p1, v8, :cond_e

    move v0, v9

    :goto_8
    goto :goto_1

    :cond_e
    move v0, v10

    goto :goto_8

    .line 282
    :cond_f
    if-nez v0, :cond_2

    .line 283
    const v8, 0x7f0c0891

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 284
    invoke-virtual {v5, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_2

    .line 288
    .end local v0           #enabled:Z
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #pref:Lcom/htc/preference/HtcPreference;
    .end local v6           #visible:Z
    :cond_10
    return-void
.end method

.method private getBiometricSensorIntent(I)Landroid/content/Intent;
    .locals 8
    .parameter "quality"

    .prologue
    const/4 v7, 0x0

    .line 303
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 304
    .local v0, fallBackIntent:Landroid/content/Intent;
    const-string v4, "lockscreen.biometric_weak_fallback"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    const-string v4, "confirm_credentials"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    const-string v4, ":android:show_fragment_title"

    const v5, 0x7f0c087f

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 310
    const/4 v3, 0x1

    .line 312
    .local v3, showTutorial:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.android.facelock"

    if-eqz v3, :cond_0

    const-string v4, "com.android.facelock.SetupIntro"

    :goto_0
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 317
    .local v2, pending:Landroid/app/PendingIntent;
    const-string v4, "PendingIntent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 318
    return-object v1

    .line 313
    .end local v2           #pending:Landroid/app/PendingIntent;
    :cond_0
    const-string v4, "com.android.facelock.SetupFaceLock"

    goto :goto_0
.end method

.method private updatePreferencesOrFinish()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 181
    .local v2, quality:I
    if-ne v2, v4, :cond_1

    .line 183
    const-string v3, "minimum_quality"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 184
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v2

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 186
    .local v1, prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 189
    :cond_0
    const v3, 0x7f050035

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 190
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(I)V

    .line 194
    .end local v1           #prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(I)I
    .locals 0
    .parameter "quality"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 198
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result p1

    .line 199
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 200
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 206
    .local v0, minQuality:I
    if-ge p1, v0, :cond_0

    .line 207
    move p1, v0

    .line 209
    :cond_0
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 5
    .parameter "quality"

    .prologue
    .line 220
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 221
    .local v1, encryptionStatus:I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 223
    .local v0, encrypted:Z
    :goto_0
    const/4 v2, 0x0

    .line 225
    .local v2, sdEncrypted:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sd_encryption"

    invoke-static {v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 229
    :goto_1
    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    .line 230
    :cond_1
    const/high16 v3, 0x2

    if-ge p1, v3, :cond_2

    .line 231
    const/high16 p1, 0x2

    .line 234
    :cond_2
    return p1

    .line 221
    .end local v0           #encrypted:Z
    .end local v2           #sdEncrypted:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    .restart local v0       #encrypted:Z
    .restart local v2       #sdEncrypted:Z
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 1
    .parameter "quality"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const/high16 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 240
    const/high16 p1, 0x1

    .line 243
    :cond_0
    return p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 159
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 323
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 82
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 83
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 84
    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "confirm_credentials"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    .local v0, confirmCredentials:Z
    if-nez v0, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, request:Z
    if-eqz p1, :cond_0

    .line 92
    const-string v3, "password_confirmed"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 93
    const-string v3, "password_requested"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 96
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v3, :cond_3

    .line 97
    if-nez v2, :cond_1

    .line 98
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 100
    .local v1, helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v3, 0x64

    invoke-virtual {v1, v3, v6, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    iput-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 102
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 108
    .end local v1           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_1
    :goto_1
    return-void

    .line 89
    .end local v2           #request:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 106
    .restart local v2       #request:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 143
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_fallback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 151
    .local v0, onlyShowFallback:Z
    return-object v1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 115
    .local v0, handled:Z
    const-string v2, "unlock_set_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 136
    :goto_0
    return v0

    .line 118
    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {p0, v3, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 121
    :cond_1
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    const v2, 0x8000

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 124
    :cond_2
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    const/high16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 127
    :cond_3
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    const/high16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 130
    :cond_4
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 131
    const/high16 v2, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 134
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 174
    const-string v0, "password_requested"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 11
    .parameter "quality"
    .parameter "disabled"

    .prologue
    const/high16 v10, 0x200

    const/16 v9, 0x65

    const/4 v5, 0x0

    .line 335
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v6, :cond_0

    .line 336
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Tried to update password without confirming it"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 341
    .local v1, isFallback:Z
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result p1

    .line 342
    const/high16 v6, 0x2

    if-lt p1, v6, :cond_4

    .line 343
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .line 344
    .local v3, minLength:I
    const/4 v6, 0x4

    if-ge v3, v6, :cond_1

    .line 345
    const/4 v3, 0x4

    .line 347
    :cond_1
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v2

    .line 348
    .local v2, maxLength:I
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 349
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "lockscreen.password_type"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    const-string v6, "lockscreen.password_min"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    const-string v6, "lockscreen.password_max"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    const-string v6, "confirm_credentials"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    const-string v5, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    if-eqz v1, :cond_2

    .line 356
    invoke-virtual {p0, v0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 388
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #maxLength:I
    .end local v3           #minLength:I
    :goto_0
    return-void

    .line 359
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v2       #maxLength:I
    .restart local v3       #minLength:I
    :cond_2
    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 387
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #maxLength:I
    .end local v3           #minLength:I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 362
    :cond_4
    const/high16 v6, 0x1

    if-ne p1, v6, :cond_8

    .line 363
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v4, 0x1

    .line 364
    .local v4, showTutorial:Z
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 365
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v4, :cond_6

    const-class v6, Lcom/android/settings/ChooseLockPatternTutorial;

    :goto_3
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 368
    const-string v6, "key_lock_method"

    const-string v7, "pattern"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v6, "confirm_credentials"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    const-string v5, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    if-eqz v1, :cond_7

    .line 373
    invoke-virtual {p0, v0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    .end local v4           #showTutorial:Z
    :cond_5
    move v4, v5

    .line 363
    goto :goto_2

    .line 365
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v4       #showTutorial:Z
    :cond_6
    const-class v6, Lcom/android/settings/ChooseLockPattern;

    goto :goto_3

    .line 376
    :cond_7
    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 379
    .end local v0           #intent:Landroid/content/Intent;
    .end local v4           #showTutorial:Z
    :cond_8
    const v6, 0x8000

    if-ne p1, v6, :cond_9

    .line 380
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricSensorIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 381
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 382
    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    if-nez p1, :cond_3

    .line 383
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 384
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1
.end method
