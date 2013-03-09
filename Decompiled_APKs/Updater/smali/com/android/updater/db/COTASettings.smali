.class public Lcom/android/updater/db/COTASettings;
.super Ljava/lang/Object;
.source "COTASettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/db/COTASettings$NameValueCache;
    }
.end annotation


# static fields
.field public static final COTA_DATA:I = 0x2

.field public static final COTA_HAVE_TRIGGER_INSTALL:I = 0x1

.field public static final COTA_NOTIFY_DOWNLOAD:I = 0x0

.field public static final COTA_PROMPT_DESCRIPTION:I = 0x5

.field private static final COTA_SETTINGS_TABLE:[Ljava/lang/String; = null

.field public static final COTA_UNZIP_FILE_SIZE:I = 0x4

.field public static final COTA_ZIP_FILE_SIZE:I = 0x3

.field private static final DEFAULT_SETTINGS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | COTASettings"

.field private static volatile mNameValueCache:Lcom/android/updater/db/COTASettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cota_notify_download"

    aput-object v1, v0, v3

    const-string v1, "cota_have_trigger_install"

    aput-object v1, v0, v4

    const-string v1, "cota_data"

    aput-object v1, v0, v5

    const-string v1, "cota_zip_file_size"

    aput-object v1, v0, v6

    const-string v1, "cota_unzip_file_size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cota_prompt_description"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/updater/db/COTASettings;->COTA_SETTINGS_TABLE:[Ljava/lang/String;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/updater/db/COTASettings;->DEFAULT_SETTINGS:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/updater/db/COTASettings;->mNameValueCache:Lcom/android/updater/db/COTASettings$NameValueCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;IZ)Z
    .locals 5
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 152
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 150
    .restart local p2
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "UpdaterAPK | COTASettings"

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
    .locals 6
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
    .line 48
    sget-object v4, Lcom/android/updater/db/COTASettings;->COTA_SETTINGS_TABLE:[Ljava/lang/String;

    array-length v1, v4

    .line 50
    .local v1, settingTableSize:I
    new-array v2, v1, [Ljava/lang/String;

    .line 51
    .local v2, settingValue:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 52
    sget-object v4, Lcom/android/updater/db/COTASettings;->DEFAULT_SETTINGS:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v3, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 58
    sget-object v4, Lcom/android/updater/db/COTASettings;->COTA_SETTINGS_TABLE:[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v5, v2, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_1
    return-object v3
.end method

.method public static getInt(Landroid/content/ContentResolver;II)I
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 111
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 110
    .restart local p2
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 3
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 72
    const-class v1, Lcom/android/updater/db/COTASettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/updater/db/COTASettings;->mNameValueCache:Lcom/android/updater/db/COTASettings$NameValueCache;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/updater/db/COTASettings$NameValueCache;

    sget-object v2, Lcom/android/updater/db/UpdaterProvider;->COTA_SETTINGS_URI:Landroid/net/Uri;

    invoke-direct {v0, v2}, Lcom/android/updater/db/COTASettings$NameValueCache;-><init>(Landroid/net/Uri;)V

    sput-object v0, Lcom/android/updater/db/COTASettings;->mNameValueCache:Lcom/android/updater/db/COTASettings$NameValueCache;

    .line 75
    :cond_0
    sget-object v0, Lcom/android/updater/db/COTASettings;->mNameValueCache:Lcom/android/updater/db/COTASettings$NameValueCache;

    sget-object v2, Lcom/android/updater/db/COTASettings;->COTA_SETTINGS_TABLE:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, p0, v2}, Lcom/android/updater/db/COTASettings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 72
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
    .line 170
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/updater/db/COTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;II)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 129
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/updater/db/COTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z
    .locals 2
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 86
    sget-object v0, Lcom/android/updater/db/COTASettings;->mNameValueCache:Lcom/android/updater/db/COTASettings$NameValueCache;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/updater/db/COTASettings$NameValueCache;

    sget-object v1, Lcom/android/updater/db/UpdaterProvider;->COTA_SETTINGS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/android/updater/db/COTASettings$NameValueCache;-><init>(Landroid/net/Uri;)V

    sput-object v0, Lcom/android/updater/db/COTASettings;->mNameValueCache:Lcom/android/updater/db/COTASettings$NameValueCache;

    .line 89
    :cond_0
    sget-object v0, Lcom/android/updater/db/COTASettings;->mNameValueCache:Lcom/android/updater/db/COTASettings$NameValueCache;

    sget-object v1, Lcom/android/updater/db/COTASettings;->COTA_SETTINGS_TABLE:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, p0, v1, p2}, Lcom/android/updater/db/COTASettings$NameValueCache;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
