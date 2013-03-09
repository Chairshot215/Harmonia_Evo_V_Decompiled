.class public Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;
.source "HtcBuildFlagSettings.java"


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 54
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v3, "Htc build flags"

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 57
    const-string v2, "Htc device flags"

    .line 58
    .local v2, title:Ljava/lang/String;
    const-class v3, Lcom/android/settings/framework/activity/system/buildflags/HtcDeviceFlagSettings;

    invoke-static {p0, v1, v2, v6, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/htc/preference/HtcPreferenceScreen;

    .line 61
    const-string v2, "Htc project flags"

    .line 62
    const-class v3, Lcom/android/settings/framework/activity/system/buildflags/HtcProjectFlagSettings;

    invoke-static {p0, v1, v2, v6, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/htc/preference/HtcPreferenceScreen;

    .line 65
    const-string v2, "Htc language flags"

    .line 66
    const-class v3, Lcom/android/settings/framework/activity/system/buildflags/HtcLanguageFlagSettings;

    invoke-static {p0, v1, v2, v6, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/htc/preference/HtcPreferenceScreen;

    .line 69
    const-string v2, "Htc other flags"

    .line 70
    const-class v3, Lcom/android/settings/framework/activity/system/buildflags/HtcOtherFlagSettings;

    invoke-static {p0, v1, v2, v6, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/htc/preference/HtcPreferenceScreen;

    .line 73
    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->pluginDevicePreference(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 74
    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->pluginProjectPreference(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 75
    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->pluginLanguagePreference(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 76
    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->pluginSenseVersionPreference(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 77
    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->pluginBuildPathPreference(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 78
    return-void

    .line 47
    .end local v1           #root:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v2           #title:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private pluginBuildPathPreference(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 5
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 231
    const-string v3, "Build path"

    .line 232
    .local v3, title:Ljava/lang/String;
    const-string v2, ""

    .line 236
    .local v2, summary:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 237
    .local v1, metaData:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 238
    const-string v4, "build_path"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, buildPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 240
    move-object v2, v0

    .line 245
    .end local v0           #buildPath:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, v3, v2}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;

    .line 247
    return-void
.end method

.method private pluginDevicePreference(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 10
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 93
    const-string v4, "Htc_DEVICE_flag"

    .line 95
    .local v4, title:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->getCurrentDeviceFlag()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 96
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v5

    .line 97
    .local v5, value:S
    const-string v6, "%d (0x%02X) - %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, summary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 103
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 104
    const-string v6, "device_name"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, deviceName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .end local v0           #deviceName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1, v4, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;

    .line 113
    return-void
.end method

.method private pluginLanguagePreference(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 10
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v4, "Htc_LANGUAGE_flag"

    .line 165
    .local v4, title:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->getCurrentLanguageFlag()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 166
    .local v0, field:Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v5

    .line 167
    .local v5, value:S
    const-string v6, "%d (0x%02X) - %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, summary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 173
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 174
    const-string v6, "language_name"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, languageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .end local v1           #languageName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1, v4, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;

    .line 183
    return-void
.end method

.method private pluginProjectPreference(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 10
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 128
    const-string v4, "Htc_PROJECT_flag"

    .line 130
    .local v4, title:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->getCurrentProjectFlag()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 131
    .local v0, field:Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v5

    .line 132
    .local v5, value:S
    const-string v6, "%d (0x%02X) - %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, summary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 138
    .local v1, metaData:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 139
    const-string v6, "project_name"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, projectName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .end local v2           #projectName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1, v4, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;

    .line 148
    return-void
.end method

.method private pluginSenseVersionPreference(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 9
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v4, "Htc_Sense_version"

    .line 200
    .local v4, title:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->getCurrentSenseVersion()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 201
    .local v0, field:Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, value:Ljava/lang/String;
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, summary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 208
    .local v1, metaData:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 209
    const-string v6, "sense_version"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, senseVersion:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    .end local v2           #senseVersion:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1, v4, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;

    .line 218
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->onCreate(Landroid/os/Bundle;)V

    .line 30
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 33
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
