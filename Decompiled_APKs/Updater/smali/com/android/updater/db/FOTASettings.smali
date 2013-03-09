.class public Lcom/android/updater/db/FOTASettings;
.super Ljava/lang/Object;
.source "FOTASettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/db/FOTASettings$NameValueCache;
    }
.end annotation


# static fields
.field public static final APP_UPDATE_DOWNLOAD_INSTALL:I = 0x11

.field public static final APP_UPDATE_NOTIFY_DOWNLOAD:I = 0x12

.field public static final BACKUP_ACTION_STRING:I = 0xe

.field public static final BACKUP_URI_STRING:I = 0xd

.field public static final DEFAULT_DOWNLOAD_WIFI:I = 0x13

.field public static final DEFAULT_SCHEDULED_CHECK:I = 0x2

.field private static final DEFAULT_SETTINGS:[Ljava/lang/String; = null

.field public static final DOWNLOAD_TO_SDCARD:I = 0xb

.field public static final DOWNLOAD_VIA_WIFI_ONLY:I = 0x5

.field public static final ENABLE_BACKUP:I = 0x3

.field public static final ENABLE_FOTA_UI:I = 0x0

.field public static final ENABLE_MANUAL_CHECK:I = 0x1

.field public static final FEEDBACK_NETWORK:I = 0xf

.field public static final FEEDBACK_TOS_ACCEPTED:I = 0x10

.field public static final FOTA_FORCE_UPDATE:I = 0xc

.field public static final FOTA_NOTIFY_DOWNLOAD:I = 0x7

.field public static final FOTA_OPTIONAL:I = 0x14

.field public static final FOTA_PROMPT_FEATURE:I = 0x9

.field public static final FOTA_PROMPT_SIZE:I = 0xa

.field public static final FOTA_PROMPT_VERSION:I = 0x8

.field public static final FOTA_SETTING_EXISTED:I = 0x6

.field private static final LOG:Z = false

.field private static final SETTINGS_TABLE:[Ljava/lang/String; = null

.field public static final SUPRESS_BACKUP_WARNING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | FOTASettings"

.field private static volatile mNameValueCache:Lcom/android/updater/db/FOTASettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "enable_fota_ui"

    aput-object v1, v0, v3

    const-string v1, "enable_manual_check"

    aput-object v1, v0, v4

    const-string v1, "default_scheduled_check"

    aput-object v1, v0, v5

    const-string v1, "enable_backup"

    aput-object v1, v0, v6

    const-string v1, "supress_backup_warning"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "download_via_wifi_only"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fota_setting_existed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fota_notify_download"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fota_prompt_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fota_prompt_feature"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fota_prompt_size"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "download_sdcard"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fota_force_update"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "backup_uri_string"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "backup_action_string"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "feedback_network"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "feedback_tos_accepted"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "app_update_download_install"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "app_update_notify_download"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "default_download_wifi"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "fota_optional"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/updater/db/FOTASettings;->SETTINGS_TABLE:[Ljava/lang/String;

    .line 69
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcFOTAFlag:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcFOTAFlag:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcFOTAFlag:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcBACKUPFlag:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/updater/db/FOTASettings;->DEFAULT_SETTINGS:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/android/updater/db/FOTASettings;->mNameValueCache:Lcom/android/updater/db/FOTASettings$NameValueCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;IZ)Z
    .locals 5
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 231
    invoke-static {p0, p1}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 236
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 234
    .restart local p2
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "UpdaterAPK | FOTASettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intto boolean fail!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getDefaultSettings(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 14
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 99
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, valueFalse:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, valueTrue:Ljava/lang/String;
    sget-object v9, Lcom/android/updater/db/FOTASettings;->SETTINGS_TABLE:[Ljava/lang/String;

    array-length v3, v9

    .line 103
    .local v3, settingTableSize:I
    new-array v4, v3, [Ljava/lang/String;

    .line 104
    .local v4, settingValue:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 105
    sget-object v9, Lcom/android/updater/db/FOTASettings;->DEFAULT_SETTINGS:[Ljava/lang/String;

    aget-object v9, v9, v2

    aput-object v9, v4, v2

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    const-string v9, "FOTA"

    invoke-static {p0, v9}, Lcom/android/updater/util/UpdaterUtil;->loadCustomizeData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, customizationBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_5

    .line 111
    const-string v9, "settings"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 112
    .local v1, customizeSettings:Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 113
    const-string v9, "Enable_FOTA_UI"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 115
    const-string v9, "yes"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v7

    :goto_1
    aput-object v9, v4, v11

    .line 117
    :cond_1
    const-string v9, "Enable_Manual_Check"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    if-eqz v5, :cond_2

    .line 119
    const-string v9, "yes"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v7

    :goto_2
    aput-object v9, v4, v12

    .line 121
    :cond_2
    const-string v9, "Default_Scheduled_Ckeck"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    if-eqz v5, :cond_3

    .line 123
    const-string v9, "yes"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v9, v7

    :goto_3
    aput-object v9, v4, v13

    .line 125
    :cond_3
    const-string v9, "Enable_Backup"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    if-eqz v5, :cond_4

    .line 127
    const/4 v10, 0x3

    const-string v9, "yes"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v9, v7

    :goto_4
    aput-object v9, v4, v10

    .line 130
    :cond_4
    const-string v9, "Default_Download_Wifi"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    if-eqz v5, :cond_5

    .line 132
    const/16 v9, 0x13

    const-string v10, "yes"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .end local v7           #valueTrue:Ljava/lang/String;
    :goto_5
    aput-object v7, v4, v9

    .line 137
    .end local v1           #customizeSettings:Landroid/os/Bundle;
    .end local v5           #value:Ljava/lang/String;
    :cond_5
    aget-object v9, v4, v11

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 138
    aput-object v6, v4, v12

    .line 139
    aput-object v6, v4, v13

    .line 142
    :cond_6
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v8, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_c

    .line 144
    sget-object v9, Lcom/android/updater/db/FOTASettings;->SETTINGS_TABLE:[Ljava/lang/String;

    aget-object v9, v9, v2

    aget-object v10, v4, v2

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .end local v8           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #customizeSettings:Landroid/os/Bundle;
    .restart local v5       #value:Ljava/lang/String;
    .restart local v7       #valueTrue:Ljava/lang/String;
    :cond_7
    move-object v9, v6

    .line 115
    goto :goto_1

    :cond_8
    move-object v9, v6

    .line 119
    goto :goto_2

    :cond_9
    move-object v9, v6

    .line 123
    goto :goto_3

    :cond_a
    move-object v9, v6

    .line 127
    goto :goto_4

    :cond_b
    move-object v7, v6

    .line 132
    goto :goto_5

    .line 146
    .end local v1           #customizeSettings:Landroid/os/Bundle;
    .end local v5           #value:Ljava/lang/String;
    .end local v7           #valueTrue:Ljava/lang/String;
    .restart local v8       #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    return-object v8
.end method

.method public static getInt(Landroid/content/ContentResolver;II)I
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 191
    invoke-static {p0, p1}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 195
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 194
    .restart local p2
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 3
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 156
    const-class v1, Lcom/android/updater/db/FOTASettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/updater/db/FOTASettings;->mNameValueCache:Lcom/android/updater/db/FOTASettings$NameValueCache;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/android/updater/db/FOTASettings$NameValueCache;

    sget-object v2, Lcom/android/updater/db/UpdaterProvider;->SETTINGS_URI:Landroid/net/Uri;

    invoke-direct {v0, v2}, Lcom/android/updater/db/FOTASettings$NameValueCache;-><init>(Landroid/net/Uri;)V

    sput-object v0, Lcom/android/updater/db/FOTASettings;->mNameValueCache:Lcom/android/updater/db/FOTASettings$NameValueCache;

    .line 159
    :cond_0
    sget-object v0, Lcom/android/updater/db/FOTASettings;->mNameValueCache:Lcom/android/updater/db/FOTASettings$NameValueCache;

    sget-object v2, Lcom/android/updater/db/FOTASettings;->SETTINGS_TABLE:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, p0, v2}, Lcom/android/updater/db/FOTASettings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static putBoolean(Landroid/content/ContentResolver;IZ)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 254
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/updater/db/FOTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;II)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 213
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/updater/db/FOTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z
    .locals 2
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 170
    sget-object v0, Lcom/android/updater/db/FOTASettings;->mNameValueCache:Lcom/android/updater/db/FOTASettings$NameValueCache;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/android/updater/db/FOTASettings$NameValueCache;

    sget-object v1, Lcom/android/updater/db/UpdaterProvider;->SETTINGS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/android/updater/db/FOTASettings$NameValueCache;-><init>(Landroid/net/Uri;)V

    sput-object v0, Lcom/android/updater/db/FOTASettings;->mNameValueCache:Lcom/android/updater/db/FOTASettings$NameValueCache;

    .line 173
    :cond_0
    sget-object v0, Lcom/android/updater/db/FOTASettings;->mNameValueCache:Lcom/android/updater/db/FOTASettings$NameValueCache;

    sget-object v1, Lcom/android/updater/db/FOTASettings;->SETTINGS_TABLE:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, p0, v1, p2}, Lcom/android/updater/db/FOTASettings$NameValueCache;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
