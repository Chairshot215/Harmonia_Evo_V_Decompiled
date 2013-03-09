.class public Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "HtcAbsSettingsBackupAgent.java"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 29
    const-class v0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method private prepareAppStorageLocationKeysForBackup()V
    .locals 13

    .prologue
    .line 53
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardAndPhoneStorage:Z

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v10

    const/high16 v11, 0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_PREFIX_APP_STORAGE_LOCATION"

    const-string v12, "htc_app_storage_loc_"

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, prefixAppStorageLocStr:Ljava/lang/String;
    const-string v2, ""

    .line 68
    .local v2, backupStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 69
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "com.android.settings.category.APP_STORAGE_SETTINGS"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const/16 v10, 0x80

    invoke-virtual {v6, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 78
    .local v8, resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 79
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 81
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_2

    .line 82
    iget-object v10, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found a app storage location settings, packageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", label: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, databaseKey:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    .line 96
    .local v9, value:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 97
    .end local v9           #value:I
    :catch_0
    move-exception v4

    .line 98
    .local v4, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 104
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #databaseKey:Ljava/lang/String;
    .end local v4           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_APP_STORAGE_LOCATION_BACKUP"

    const-string v12, "htc_app_storage_loc_backup"

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, HTC_APP_STORAGE_LOCATION_BACKUP:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private restoreAppStorageLocationKeys()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 119
    sget-boolean v6, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardAndPhoneStorage:Z

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v6

    const/high16 v7, 0x4080

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 153
    :cond_0
    return-void

    .line 125
    :cond_1
    sget-object v6, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v7, "HTC_APP_STORAGE_LOCATION_BACKUP"

    const-string v8, "htc_app_storage_loc_backup"

    invoke-static {v6, v7, v8}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, HTC_APP_STORAGE_LOCATION_BACKUP:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, backupStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 139
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, appStorageLocSettings:[Ljava/lang/String;
    array-length v1, v2

    .line 141
    .local v1, appNum:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 145
    aget-object v6, v2, v4

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, keyValue:[Ljava/lang/String;
    sget-boolean v6, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_2

    .line 147
    iget-object v6, p0, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    aget-object v7, v5, v9

    aget-object v8, v5, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onBackupPreprocess()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->prepareAppStorageLocationKeysForBackup()V

    .line 38
    return-void
.end method

.method protected onRestorePostProcess()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->restoreAppStorageLocationKeys()V

    .line 46
    return-void
.end method
