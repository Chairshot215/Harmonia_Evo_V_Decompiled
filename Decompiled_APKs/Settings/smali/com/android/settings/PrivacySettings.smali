.class public Lcom/android/settings/PrivacySettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final AUTO_RESTORE:Ljava/lang/String; = "auto_restore"

.field private static final BACKUP_CATEGORY:Ljava/lang/String; = "backup_category"

.field private static final BACKUP_SETTINGS:Ljava/lang/String; = "backup_settings"

.field private static final CONFIGURE_ACCOUNT:Ljava/lang/String; = "configure_account"

.field private static final DIALOG_ERASE_BACKUP:I = 0x2

.field private static final DIALOG_USE_LOCATION:I = 0x1

.field private static final GSETTINGS_PROVIDER:Ljava/lang/String; = "com.google.android.providers.settings"

.field private static final HTC_BACKUP_SETTINGS:Ljava/lang/String; = "htc_backup_settings"

.field private static final KEY_DONE_USE_LOCATION:Ljava/lang/String; = "doneLocation"

.field private static final LOCATION_CATEGORY:Ljava/lang/String; = "location_category"

.field private static final PREFS_NAME:Ljava/lang/String; = "location_prefs"

.field private static final PREFS_USE_LOCATION:Ljava/lang/String; = "use_location"

.field private static final TAG:Ljava/lang/String; = null

.field private static final USE_LOCATION:Ljava/lang/String; = "use_location"


# instance fields
.field private mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I

.field private mHtcBackup:Lcom/htc/preference/HtcPreferenceScreen;

.field private mOkClicked:Z

.field private mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/PrivacySettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private hasAgreedToUseLocation()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 446
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v2

    .line 448
    :cond_1
    const-string v3, "location_prefs"

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 449
    .local v1, sp:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 452
    const-string v3, "use_location"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private pluginExtraComponents()V
    .locals 13

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    .line 180
    .local v8, root:Lcom/htc/preference/HtcPreferenceScreen;
    const/4 v5, 0x0

    .line 182
    .local v5, index:I
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcPrivacyFeatureFlags;->supportNewMessageNotification()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 187
    new-instance v1, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 188
    .local v1, category:Lcom/htc/preference/HtcPreferenceCategory;
    const v10, 0x7f0c00bb

    invoke-virtual {v1, v10}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 189
    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .local v6, index:I
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setOrder(I)V

    .line 190
    invoke-virtual {v8, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 192
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcPrivacyFeatureFlags;->supportPreviewNotification()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 193
    new-instance v7, Lcom/android/settings/framework/preference/privacy/HtcPhoneNotificationPreviewPreference;

    invoke-direct {v7, v0}, Lcom/android/settings/framework/preference/privacy/HtcPhoneNotificationPreviewPreference;-><init>(Landroid/content/Context;)V

    .line 194
    .local v7, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v7}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 195
    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacySettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 197
    new-instance v7, Lcom/android/settings/framework/preference/privacy/HtcMessageNotificationPreviewPreference;

    .end local v7           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v7, v0}, Lcom/android/settings/framework/preference/privacy/HtcMessageNotificationPreviewPreference;-><init>(Landroid/content/Context;)V

    .line 198
    .restart local v7       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v7}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 199
    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacySettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    move v5, v6

    .line 207
    .end local v1           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v6           #index:I
    .end local v7           #preference:Lcom/htc/preference/HtcPreference;
    .restart local v5       #index:I
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcPrivacyFeatureFlags;->supportGuestMode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 208
    new-instance v1, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 209
    .restart local v1       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v10, 0x7f0c00bd

    invoke-virtual {v1, v10}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 210
    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .restart local v6       #index:I
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setOrder(I)V

    .line 211
    invoke-virtual {v8, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 213
    new-instance v7, Lcom/android/settings/framework/preference/privacy/HtcAccessAndApplyGuestModePreference;

    invoke-direct {v7, v0}, Lcom/android/settings/framework/preference/privacy/HtcAccessAndApplyGuestModePreference;-><init>(Landroid/content/Context;)V

    .line 214
    .restart local v7       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v7}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 215
    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacySettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    move v5, v6

    .line 219
    .end local v1           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v6           #index:I
    .end local v7           #preference:Lcom/htc/preference/HtcPreference;
    .restart local v5       #index:I
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v3, ciqIntent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.carrieriq.tmobile.IQToggle"

    const-string v12, "com.carrieriq.tmobile.IQToggle.ui"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 225
    .local v9, size:I
    if-lez v9, :cond_0

    .line 226
    new-instance v2, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v2, v10}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 227
    .local v2, ciqCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const v10, 0x7f0c0c4b

    invoke-virtual {v2, v10}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 228
    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 230
    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 231
    .local v4, ciqPreference:Lcom/htc/preference/HtcPreference;
    const v10, 0x7f0c00c3

    invoke-virtual {v4, v10}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 232
    const v10, 0x7f0c00c4

    invoke-virtual {v4, v10}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 233
    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 234
    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 201
    .end local v2           #ciqCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v3           #ciqIntent:Landroid/content/Intent;
    .end local v4           #ciqPreference:Lcom/htc/preference/HtcPreference;
    .end local v5           #index:I
    .end local v9           #size:I
    .restart local v1       #category:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v6       #index:I
    :cond_4
    new-instance v7, Lcom/android/settings/framework/preference/privacy/HtcNewMessageNotificationPreference;

    invoke-direct {v7, v0}, Lcom/android/settings/framework/preference/privacy/HtcNewMessageNotificationPreference;-><init>(Landroid/content/Context;)V

    .line 202
    .restart local v7       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v7}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 203
    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacySettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    move v5, v6

    .end local v6           #index:I
    .restart local v5       #index:I
    goto :goto_1
.end method

.method private setAgreedToUseLocation(Z)V
    .locals 5
    .parameter "agreed"

    .prologue
    .line 460
    if-eqz p1, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 462
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 469
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 464
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    const-string v3, "location_prefs"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 465
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 466
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "use_location"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 467
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setBackupEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 476
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 487
    :cond_2
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 488
    :cond_3
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez p1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 481
    :cond_4
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez p1, :cond_6

    :goto_2
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 480
    goto :goto_1

    :cond_6
    move v2, v3

    .line 481
    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 3
    .parameter "summary"

    .prologue
    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, transport:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.google.android.backup/.BackupTransportService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    if-eqz p1, :cond_0

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 388
    const/4 p1, 0x0

    .line 393
    .end local v0           #transport:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 398
    :goto_1
    return-void

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    const v2, 0x7f0c0c4f

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 391
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 4

    .prologue
    .line 325
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/PrivacySettings;->mOkClicked:Z

    .line 326
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 328
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0c56

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 331
    .local v1, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 332
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 341
    :goto_0
    return-void

    .line 334
    :cond_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0c55

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 340
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method private showUseLocationDialog(Z)V
    .locals 4
    .parameter "force"

    .prologue
    const/4 v3, 0x1

    .line 298
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/PrivacySettings;->mOkClicked:Z

    .line 299
    if-eqz p1, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->hasAgreedToUseLocation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateUseLocation()V

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    iput v3, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0526

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 310
    .local v1, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 311
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 313
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0a93

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0527

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0528

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 319
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    const v3, 0x20200ad

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 321
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method private updateConfigureSummary()V
    .locals 3

    .prologue
    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, transport:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, summary:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v0           #summary:Ljava/lang/String;
    .end local v1           #transport:Ljava/lang/String;
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 349
    .local v5, res:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 350
    .local v0, backupEnabled:Z
    const/4 v1, 0x0

    .line 351
    .local v1, configIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 353
    .local v2, configSummary:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v9}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, transport:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v9, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 355
    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v9, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 360
    .end local v6           #transport:Ljava/lang/String;
    :goto_0
    const-string v9, "backup_enabled"

    invoke-static {v5, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_0

    move v0, v7

    .line 362
    :goto_1
    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 364
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v9, "backup_auto_restore"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v9, v7

    :goto_2
    invoke-virtual {v10, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 366
    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 368
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v3, v7

    .line 369
    .local v3, configureEnabled:Z
    :goto_3
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v7, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 370
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 371
    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 372
    return-void

    .line 356
    .end local v3           #configureEnabled:Z
    :catch_0
    move-exception v4

    .line 358
    .local v4, e:Landroid/os/RemoteException;
    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v4           #e:Landroid/os/RemoteException;
    :cond_0
    move v0, v8

    .line 360
    goto :goto_1

    :cond_1
    move v9, v8

    .line 364
    goto :goto_2

    :cond_2
    move v3, v8

    .line 368
    goto :goto_3
.end method

.method private updateUseLocation()V
    .locals 2

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, use:Z
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 379
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 411
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 413
    iput-boolean v1, p0, Lcom/android/settings/PrivacySettings;->mOkClicked:Z

    .line 414
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    if-ne v0, v1, :cond_1

    .line 415
    invoke-direct {p0, v1}, Lcom/android/settings/PrivacySettings;->setAgreedToUseLocation(Z)V

    .line 429
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateUseLocation()V

    .line 430
    iput v2, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 431
    return-void

    .line 416
    :cond_1
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    if-ne v0, v3, :cond_0

    .line 417
    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 418
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateConfigureSummary()V

    goto :goto_0

    .line 421
    :cond_2
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    if-ne v0, v1, :cond_3

    .line 423
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 424
    :cond_3
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    if-ne v0, v3, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v10, 0x7f05002a

    invoke-virtual {p0, v10}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->pluginExtraComponents()V

    .line 104
    sget-boolean v10, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0002:Z

    if-eqz v10, :cond_0

    sget-boolean v10, Lcom/android/settings/framework/flag/HtcProjectFlags;->isD0004:Z

    if-eqz v10, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v10

    const-string v11, "location_category"

    invoke-virtual {p0, v11}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    .line 110
    .local v9, screen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v10

    const-string v11, "use_location"

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 114
    const-string v10, "backup_settings"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 115
    const-string v10, "auto_restore"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 116
    const-string v10, "configure_account"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    .line 117
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices()Z

    move-result v10

    if-nez v10, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v10

    const-string v11, "backup_category"

    invoke-virtual {p0, v11}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 122
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 174
    :goto_0
    return-void

    .line 126
    :cond_2
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v10, :cond_3

    .line 127
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.google.android.providers.settings"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_3
    :goto_1
    const/4 v5, 0x1

    .line 136
    .local v5, isSuptBackUp:Z
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 138
    if-nez p1, :cond_8

    const/4 v1, 0x0

    .line 140
    .local v1, doneUseLocation:Z
    :goto_2
    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "SHOW_USE_LOCATION"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz p1, :cond_5

    .line 142
    :cond_4
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings/PrivacySettings;->showUseLocationDialog(Z)V

    .line 145
    :cond_5
    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v10

    const-string v11, "backup_category"

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcPreferenceCategory;

    .line 149
    .local v7, parentPreference:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v10

    const-string v11, "htc_backup_settings"

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/PrivacySettings;->mHtcBackup:Lcom/htc/preference/HtcPreferenceScreen;

    .line 150
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 151
    .local v8, pm:Landroid/content/pm/PackageManager;
    const-string v3, "com.android.updater"

    .line 152
    .local v3, fotaPackageName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 153
    .local v4, fotaRes:Landroid/content/res/Resources;
    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcBACKUPFlag:Z

    if-eqz v10, :cond_6

    .line 155
    :try_start_1
    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 160
    :cond_6
    :goto_3
    if-nez v4, :cond_9

    .line 161
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mHtcBackup:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 172
    .end local v3           #fotaPackageName:Ljava/lang/String;
    .end local v4           #fotaRes:Landroid/content/res/Resources;
    .end local v7           #parentPreference:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->requestHandlers()V

    goto :goto_0

    .line 129
    .end local v1           #doneUseLocation:Z
    .end local v5           #isSuptBackUp:Z
    :catch_0
    move-exception v6

    .line 130
    .local v6, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v10

    const-string v11, "location_category"

    invoke-virtual {p0, v11}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 131
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    goto :goto_1

    .line 138
    .end local v6           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #isSuptBackUp:Z
    :cond_8
    const-string v10, "doneLocation"

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_2

    .line 156
    .restart local v1       #doneUseLocation:Z
    .restart local v3       #fotaPackageName:Ljava/lang/String;
    .restart local v4       #fotaRes:Landroid/content/res/Resources;
    .restart local v7       #parentPreference:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v8       #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    .line 157
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_3

    .line 163
    .end local v2           #e:Ljava/lang/Exception;
    :cond_9
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 164
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 165
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mHtcBackup:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v11, "title_backup_data"

    const-string v12, "string"

    invoke-virtual {v4, v11, v12, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mHtcBackup:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v11, "summary_backup_data"

    const-string v12, "string"

    invoke-virtual {v4, v11, v12, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 436
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 440
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 267
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v5, :cond_2

    .line 269
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mUseLocation:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 270
    invoke-direct {p0, v4}, Lcom/android/settings/PrivacySettings;->showUseLocationDialog(Z)V

    .line 293
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    return v3

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateUseLocation()V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v5, :cond_4

    .line 275
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_3

    .line 276
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->showEraseBackupDialog()V

    goto :goto_0

    .line 278
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0

    .line 280
    :cond_4
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v5, :cond_0

    .line 281
    const-string v5, "backup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 283
    .local v0, bm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 285
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    .line 287
    .local v1, curState:Z
    :try_start_0
    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, e:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v1, :cond_5

    :goto_1
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 243
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 244
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 260
    const-string v0, "doneLocation"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 251
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 253
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    .line 254
    return-void
.end method
