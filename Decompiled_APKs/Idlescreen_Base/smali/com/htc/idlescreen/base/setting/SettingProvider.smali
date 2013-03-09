.class public Lcom/htc/idlescreen/base/setting/SettingProvider;
.super Landroid/content/ContentProvider;
.source "SettingProvider.java"


# static fields
.field private static final COL_SHORTCUT:[Ljava/lang/String; = null

.field private static final COL_SHORTCUT_VISIBILITY:[Ljava/lang/String; = null

.field public static final DB_SHORTCUT_APPNAME:[Ljava/lang/String; = null

.field public static final DB_SHORTCUT_CLASSNAME:[Ljava/lang/String; = null

.field public static final DB_SHORTCUT_PACKAGENAME:[Ljava/lang/String; = null

.field private static final LOG_PREFIX:Ljava/lang/String; = "SettingProvider"

.field public static final SETTING_DB_SHORTCUT01_APPNAME:Ljava/lang/String; = "com.htc.idlescreen.shortcut01_appname"

.field public static final SETTING_DB_SHORTCUT01_CLASSNAME:Ljava/lang/String; = "com.htc.idlescreen.shortcut01"

.field public static final SETTING_DB_SHORTCUT01_PACKAGENAME:Ljava/lang/String; = "com.htc.idlescreen.shortcut01_package"

.field public static final SETTING_DB_SHORTCUT02_APPNAME:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut02_appname"

.field public static final SETTING_DB_SHORTCUT02_CLASSNAME:Ljava/lang/String; = "com.htc.idlescreen.shortcut02"

.field public static final SETTING_DB_SHORTCUT02_PACKAGENAME:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut02_package"

.field public static final SETTING_DB_SHORTCUT03_APPNAME:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut03_appname"

.field public static final SETTING_DB_SHORTCUT03_CLASSNAME:Ljava/lang/String; = "com.htc.idlescreen.shortcut03"

.field public static final SETTING_DB_SHORTCUT03_PACKAGENAME:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut03_package"

.field public static final SETTING_DB_SHORTCUT04_APPNAME:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut04_appname"

.field public static final SETTING_DB_SHORTCUT04_CLASSNAME:Ljava/lang/String; = "com.htc.idlescreen.shortcut04"

.field public static final SETTING_DB_SHORTCUT04_PACKAGENAME:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut04_package"

.field private static final SHORTCUT_DEFAULT:I = 0x2

.field private static final SHORTCUT_LIST:I = 0x1

.field private static final SHORTCUT_VISIBILITY:I = 0x3

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field mOldAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/idlescreen/base/setting/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutSynced:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 25
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "shortcut_id"

    aput-object v1, v0, v4

    const-string v1, "shortcut_package_name"

    aput-object v1, v0, v3

    const-string v1, "shortcut_class_name"

    aput-object v1, v0, v5

    const-string v1, "shortcut_app_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingProvider;->COL_SHORTCUT:[Ljava/lang/String;

    .line 30
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "shortcut_visibility"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingProvider;->COL_SHORTCUT_VISIBILITY:[Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 38
    sget-object v0, Lcom/htc/idlescreen/base/setting/SettingProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.idlescreen.setting.provider"

    const-string v2, "shortcut_list"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/htc/idlescreen/base/setting/SettingProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.idlescreen.setting.provider"

    const-string v2, "shortcut_default"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/htc/idlescreen/base/setting/SettingProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.idlescreen.setting.provider"

    const-string v2, "shortcut_visibility"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.htc.idlescreen.shortcut01"

    aput-object v1, v0, v4

    const-string v1, "com.htc.idlescreen.shortcut02"

    aput-object v1, v0, v3

    const-string v1, "com.htc.idlescreen.shortcut03"

    aput-object v1, v0, v5

    const-string v1, "com.htc.idlescreen.shortcut04"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingProvider;->DB_SHORTCUT_CLASSNAME:[Ljava/lang/String;

    .line 137
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.htc.idlescreen.shortcut01_package"

    aput-object v1, v0, v4

    const-string v1, "com.htc.idlescreen.app.shortcut02_package"

    aput-object v1, v0, v3

    const-string v1, "com.htc.idlescreen.app.shortcut03_package"

    aput-object v1, v0, v5

    const-string v1, "com.htc.idlescreen.app.shortcut04_package"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingProvider;->DB_SHORTCUT_PACKAGENAME:[Ljava/lang/String;

    .line 143
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.htc.idlescreen.shortcut01_appname"

    aput-object v1, v0, v4

    const-string v1, "com.htc.idlescreen.app.shortcut02_appname"

    aput-object v1, v0, v3

    const-string v1, "com.htc.idlescreen.app.shortcut03_appname"

    aput-object v1, v0, v5

    const-string v1, "com.htc.idlescreen.app.shortcut04_appname"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingProvider;->DB_SHORTCUT_APPNAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/setting/SettingProvider;->mShortcutSynced:Z

    return-void
.end method

.method private parserAppInfoToCursor(Ljava/util/List;)Landroid/database/Cursor;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/idlescreen/base/setting/ApplicationInfo;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    const/4 v8, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 201
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/setting/SettingProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 202
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 204
    .local v6, pkgMng:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/htc/idlescreen/base/setting/SettingProvider;->COL_SHORTCUT:[Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 205
    .local v3, cursor:Landroid/database/MatrixCursor;
    new-array v1, v8, [Ljava/lang/Object;

    .line 206
    .local v1, columnValues:[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 207
    .local v5, id:I
    if-eqz p1, :cond_1

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 209
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 210
    add-int/lit8 v5, v5, 0x1

    .line 211
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;

    .line 212
    .local v0, appInfo:Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 213
    const-string v7, "SettingProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v10

    .line 216
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->getClassName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v11

    .line 217
    invoke-virtual {v0, v6}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->getAppName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v12

    .line 218
    const-string v7, "SettingProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "columnValues[1]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v7, "SettingProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "columnValues[2]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v7, "SettingProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "columnValues[3]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_1
    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 223
    :cond_0
    const-string v7, "SettingProvider"

    const-string v8, "empty"

    invoke-static {v7, v8}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v7, ""

    aput-object v7, v1, v10

    .line 225
    const-string v7, ""

    aput-object v7, v1, v11

    .line 226
    const-string v7, ""

    aput-object v7, v1, v12

    goto :goto_1

    .line 231
    .end local v0           #appInfo:Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    :cond_1
    return-object v3
.end method

.method private queryShortcutDefault()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 98
    const-string v3, "SettingProvider"

    const-string v4, "queryShortcutDefault"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/setting/SettingProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/htc/idlescreen/base/setting/SettingDB;->getInstance()Lcom/htc/idlescreen/base/setting/SettingDB;

    invoke-static {v0}, Lcom/htc/idlescreen/base/setting/SettingDB;->loadSIEShortcuts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 101
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    :cond_0
    invoke-static {}, Lcom/htc/idlescreen/base/setting/SettingDB;->getInstance()Lcom/htc/idlescreen/base/setting/SettingDB;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDefaultApplicationInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 104
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/idlescreen/base/setting/SettingProvider;->parserAppInfoToCursor(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v1

    .line 105
    .local v1, cursor:Landroid/database/Cursor;
    return-object v1
.end method

.method private queryShortcutList()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 109
    const-string v3, "SettingProvider"

    const-string v4, "queryShortcutList"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/setting/SettingProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/setting/SettingProvider;->getApplicationInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 112
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    invoke-direct {p0, v2}, Lcom/htc/idlescreen/base/setting/SettingProvider;->parserAppInfoToCursor(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v1

    .line 113
    .local v1, cursor:Landroid/database/Cursor;
    return-object v1
.end method

.method private queryShortcutVisibility()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/setting/SettingProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    .local v1, context:Landroid/content/Context;
    invoke-static {}, Lcom/htc/idlescreen/base/setting/SettingDB;->getInstance()Lcom/htc/idlescreen/base/setting/SettingDB;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/idlescreen/base/setting/SettingDB;->getShortcutVisibility(Landroid/content/Context;)I

    move-result v3

    .line 89
    .local v3, visibility:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/htc/idlescreen/base/setting/SettingProvider;->COL_SHORTCUT_VISIBILITY:[Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 90
    .local v2, cursor:Landroid/database/MatrixCursor;
    new-array v0, v5, [Ljava/lang/Object;

    .line 91
    .local v0, columnValues:[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 92
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 94
    return-object v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/idlescreen/base/setting/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/setting/SettingProvider;->mShortcutSynced:Z

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/setting/SettingProvider;->updateOldDBCache(Landroid/content/Context;)Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/SettingProvider;->mOldAppList:Ljava/util/List;

    monitor-exit p0

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, c:Landroid/database/Cursor;
    sget-object v1, Lcom/htc/idlescreen/base/setting/SettingProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 83
    :goto_0
    return-object v0

    .line 73
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/idlescreen/base/setting/SettingProvider;->queryShortcutList()Landroid/database/Cursor;

    move-result-object v0

    .line 74
    goto :goto_0

    .line 76
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/idlescreen/base/setting/SettingProvider;->queryShortcutDefault()Landroid/database/Cursor;

    move-result-object v0

    .line 77
    goto :goto_0

    .line 79
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/idlescreen/base/setting/SettingProvider;->queryShortcutVisibility()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public updateOldDBCache(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 168
    .local v5, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x1

    .line 169
    .local v7, isEmpty:Z
    invoke-static {p1}, Lcom/htc/idlescreen/base/setting/ApplicationManager;->instance(Landroid/content/Context;)Lcom/htc/idlescreen/base/setting/ApplicationManager;

    move-result-object v0

    .line 170
    .local v0, am:Lcom/htc/idlescreen/base/setting/ApplicationManager;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    sget-object v9, Lcom/htc/idlescreen/base/setting/SettingProvider;->DB_SHORTCUT_PACKAGENAME:[Ljava/lang/String;

    array-length v9, v9

    if-ge v6, v9, :cond_3

    .line 171
    sget-object v9, Lcom/htc/idlescreen/base/setting/SettingProvider;->DB_SHORTCUT_CLASSNAME:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-static {v5, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, classname:Ljava/lang/String;
    sget-object v9, Lcom/htc/idlescreen/base/setting/SettingProvider;->DB_SHORTCUT_PACKAGENAME:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-static {v5, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 173
    .local v8, packname:Ljava/lang/String;
    sget-object v9, Lcom/htc/idlescreen/base/setting/SettingProvider;->DB_SHORTCUT_APPNAME:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-static {v5, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, appname:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 175
    :cond_0
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v0, v8, v4, v9}, Lcom/htc/idlescreen/base/setting/ApplicationManager;->inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 179
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    .end local v0           #am:Lcom/htc/idlescreen/base/setting/ApplicationManager;
    .end local v1           #appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    .end local v3           #appname:Ljava/lang/String;
    .end local v4           #classname:Ljava/lang/String;
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v6           #i:I
    .end local v7           #isEmpty:Z
    .end local v8           #packname:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 182
    .restart local v0       #am:Lcom/htc/idlescreen/base/setting/ApplicationManager;
    .restart local v1       #appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    .restart local v3       #appname:Ljava/lang/String;
    .restart local v4       #classname:Ljava/lang/String;
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v6       #i:I
    .restart local v7       #isEmpty:Z
    .restart local v8       #packname:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    .line 184
    :try_start_1
    new-instance v2, Lcom/htc/idlescreen/base/setting/ApplicationInfo;

    invoke-direct {v2, p1, v8, v4, v3}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v2, applicationInfo:Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v2           #applicationInfo:Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    .end local v3           #appname:Ljava/lang/String;
    .end local v4           #classname:Ljava/lang/String;
    .end local v8           #packname:Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    .line 190
    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/SettingProvider;->mOldAppList:Ljava/util/List;

    .line 195
    :goto_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/idlescreen/base/setting/SettingProvider;->mShortcutSynced:Z

    .line 196
    monitor-exit p0

    .line 197
    return v10

    .line 193
    :cond_4
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/idlescreen/base/setting/SettingProvider;->mOldAppList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
